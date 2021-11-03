<div id="top"></div>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/PazilatNur/project-vu">
    <img src="https://beingalivela.org/wp-content/uploads/2015/01/mental-health.jpg" alt="Logo" width="500" height="400">
  </a>

<h3 align="center"> Impacts of Mental Health Based on Access to Care and Employment </h3>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#Data-Sources">Data Sources</a></li>
        <li><a href="#Data-Cleaning">Data Cleaning</a></li>
      </ul>
    </li>
    <li><a href="#Data-Visualization">Data Visualization</a></li>
    <li><a href="#Machine-Learning">Machine Learning</a></li>
    <li><a href="#Dashboard">Dashboard</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
<br />
<div align="left">
  <a href="https://github.com/PazilatNur/project-vu">
    <img src="https://cdn1.onlinecounselingprograms.com/content/d58803d7d7b84778a00900d55edb0f26/9646_OCP_Managing-Your-Mental-Health-in-College-hero.jpg" alt="Logo" width="1200" height="150">
  </a>


### Built With

* [Tabula](https://tabula.technology/)
* [Pandas](https://pandas.pydata.org/)
* [Postgresql](https://www.postgresql.org/)
* [SQLAlchemy](https://www.sqlalchemy.org/)
* [Flask](https://flask.palletsprojects.com/en/2.0.x/)
* [Bootstrap](https://getbootstrap.com)
* [JQuery](https://jquery.com)




<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Data Sources

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/github_username/repo_name.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```

## Data Cleaning
 
### PDF Cleaning

In order to get workable data, researchers used Tabula to scrape mental health demographic information from Mental Health America's State of Mental Health in America yearly reports (see below for links to relevant PDFs). Each of the tables pulled presented unique issues for data engineers to overcome. Nearly all of the tables were split in two and given repetitive, nondescript variable names. To address this, data engineers split the tables into two data-frames with matching variable names for columns and joined the two back together. Null values were handled with the ```.dropna(how='all')``` method and the population column's dtypes were changed to floats to allow for operations on them to be done in the future. Other operations done include dropping rows with bad data where strings from the description of the table had been pulled into the table itself due to an interaction between the PDFs and Tabula.

Notebooks used to preform cleaning can be found in [github_link](github_link where PDF cleaning notebooks live)

#### PDF Links
* [2019 MHA PDF](https://mhanational.org/sites/default/files/2019-09/2019%20MH%20in%20America%20Final.pdf)
* [2020 MHA PDF](https://mhanational.org/sites/default/files/State%20of%20Mental%20Health%20in%20America%20-%202020_0.pdf)
* [2020 MHA PDF](https://mhanational.org/sites/default/files/2021%20State%20of%20Mental%20Health%20in%20America_0.pdf)

## Database Management

### Data Storage
  Our database can be accessed through a virtual server connected to Amazon Web Service's Relational Database Service. The server was then accessed through PgAdmin4 by researchers to allow for data exploration and visualization
  
### SQL Loader
A [python script](https://github.com/PazilatNur/project-vu/blob/main/dataframe_sql_loader.ipynb) was created to allow for most of our cleaned CSVs to be loaded into our Postgres server at once with minimal hassle. The loader works first loading all CSV file locations into a list, the list is then further cleaned by removing all redundant or unnecessary information (ie. PDFs, no longer relevant CSVs) and then the list is loaded into a for loop that accesses file locations and turns all relevant CSVs into dataframes and appends them all to a dictionary. In order to get the file names set as the table names in postgres, the list was ran through a for loop that dropped all file extensions from the items in the list. From there, the list was then further converted into a tuple which allowed the name to be loaded into the final for loop. Next, the connection to the database was setup using a formatted db_string that was loaded as our connection engine for SQLalchemy. Finally, the for loop was created that accessed the zipped dataframes inside df_dict{} and the zipped table titles.

### PGAdmin Table Explanation
- master_bystate_table
  - This table has all the tables joined together based on the primary key of state. This keying convention is held throughout most all tables.
- Regional Tables: These tables are split up based on regions as described by the [United States Census Bureau](https://www2.census.gov/geo/pdfs/maps-data/maps/reference/us_regdiv.pdf)
  - northeast_table 
  - western_table
  - southern_table
  - midwest_table
 - Youth and Adult Tables
  - Additionally, tables were split from the master_bystate_table to only include either youth or adult data.
 - Schemas
  - SQL Queries can be found [here](https://github.com/PazilatNur/project-vu/tree/main/sql_schema_and_misc)
  
 
  
  
<p align="right">(<a href="#top">back to top</a>)</p>  

  
## Data Visualization

To be updated...

_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#top">back to top</a>)</p>



## Machine Learning
 
  Science

See the [open issues](https://github.com/github_username/repo_name/issues) for a full list of proposed features (and known issues).

  Please ML folder for ML related updates
<p align="right">(<a href="#top">back to top</a>)</p>



## Dashboard

  We plan on using an html as our dashboard, which will have data visualizations, assessments, and a project summary. Our html coding is located in initial_html on the main branch of our repository.
  
  We have a static folder that will store javascript and css code, as well as images to be used in the html. We've incorportated CSS and bootstap for styling of the html and stored the images used so far in the images folder. The image at the top of the page of the four heads was inputed using a jumbotron in css, which where the code is stored. 
  
  Next, we will decide on the layout of the html, that is, which visualizitions and interactive interfaces will be included beyond the assessment text. 

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



## Contact

- Pazi Nur - [https://github.com/PazilatNur](https://github.com/PazilatNur)
- Noah Toomey - [https://github.com/NoahToomeyBC](https://github.com/NoahToomeyBC)
- Ryan Grady -  [https://github.com/ryan22grady](https://github.com/ryan22grady)

Project Link: [https://github.com/github_username/repo_name](https://github.com/PazilatNur/project-vu)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [README Template Refactored From <br> https://github.com/othneildrew/Best-README-Template](https://github.com/othneildrew/Best-README-Template)
* []()
* []()

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/PazilatNur/project-vu.svg?style=for-the-badge
[contributors-url]: https://github.com/PazilatNur/project-vu/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/PazilatNur/project-vu.svg?style=for-the-badge
[forks-url]: https://github.com/KimBro763/project-vu/network/members
[stars-shield]: https://img.shields.io/github/stars/PazilatNur/project-vu.svg?style=for-the-badge
[stars-url]: https://github.com/KimBro763/project-vu/stargazers
[issues-shield]: https://img.shields.io/github/issues/KimBro763/project-vu/.svg?style=for-the-badge
[issues-url]: https://github.com/KimBro763/project-vu/issues
[license-shield]: https://img.shields.io/github/license/PazilatNur/project-vu.svg?style=for-the-badge
[license-url]: https://github.com/KimBro763/project-vu/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
