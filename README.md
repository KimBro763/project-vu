<div id="top"></div>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



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

In order to get workable data, researchers used Tabula to scrape mental health demographic information from Mental Health America's State of Mental Health in America yearly reports (see below for links to relevant PDFs). Each of the tables pulled presented unique issues for data engineers to overcome. Nearly all of the tables were split in two and given repetitive, nondescript variable names. To address this, data engineers split the tables into two data-frames with matching variable names for columns and joined the two back together. Null values were handled with the ```.dropna(how='all')``` method and the population column's dtypes were changed to floats to allow for operations on them to be done in the future. Other operations done include dropping rows with bad data where strings from the description of the table had been pulled into the table itself due to an interaction between the PDFs and Tabula. Notebooks used to preform cleaning can be found in [github_link](github_link where PDF cleaning notebooks live)

#### PDF Links
* [2019 MHA PDF](https://mhanational.org/sites/default/files/2019-09/2019%20MH%20in%20America%20Final.pdf)
* [2020 MHA PDF](https://mhanational.org/sites/default/files/State%20of%20Mental%20Health%20in%20America%20-%202020_0.pdf)
* [2020 MHA PDF](https://mhanational.org/sites/default/files/2021%20State%20of%20Mental%20Health%20in%20America_0.pdf)

  
## Data Visualization

Type your stuff here.

_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#top">back to top</a>)</p>



## Machine Learning
 
  Science

See the [open issues](https://github.com/github_username/repo_name/issues) for a full list of proposed features (and known issues).

  Please ML folder for ML related updates
<p align="right">(<a href="#top">back to top</a>)</p>



## Dashboard
  
  Dashboard stuff here

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



## Contact

- Pazi Nur - [https://github.com/github_username](https://github.com/PazilatNur)
- Noah Toomey - [https://github.com/github_username/repo_name](https://github.com/NoahToomeyBC)
- Ryan Grady -  [https://github.com/github_username](https://github.com/ryan22grady)

Project Link: [https://github.com/github_username/repo_name](https://github.com/PazilatNur/project-vu)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []()
* []()
* []()

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/KimBro763/project-vu/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/KimBro763/project-vu/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/KimBro763/project-vu/stargazers
[issues-shield]: https://img.shields.io/github/issues/KimBro763/project-vu/.svg?style=for-the-badge
[issues-url]: https://github.com/KimBro763/project-vu/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/KimBro763/project-vu/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
