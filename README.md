# Pedestrian Consulting Project

This README is a work in progress and will be updated regularly throughout the course of the project. 

## Project Summary

N/A

## Contacts and Ownership

**Brady Lamson:** `brady.lamson@ucdenver.edu`

**Davyd Sadovskyy:** `davyd.2.sadovskyy@cuanschutz.edu`

## Repository Layout and Navigation

- **`src/`** - Production ready notebooks/scripts. This is where the "final" version of code that is created in `eda/` will go.  
- **`data/`** - For all data files. 
- **`eda/`** - For exploratory and miscellaneous notebooks. Initial variable selection and modeling may also go here. Really think of this as an exploratory directory. We do analysis and find solutions here.
- **`docs/`** - Documents used to support the project. Files, notes, images, etc. 

## Requirements

TBD once we have more information.

Potential tech stack:
- python: Version whatever
- Jupyter: For interactive notebooks
- Polars: For working with dataframes
- DuckDB: If we end up with relational data
- Streamlit: If we want a really basic app to showcase to the client at the end of the project

Managing the environment/dependencies will either be done using Conda or Poetry. 

## Recommended workflow

Unless otherwise agreed upon, all work in this repo should occur on a branch and then merged into main. A branch should be made for specific tasks being worked on. 

To help prevent cluttering, it is also recommended to make a sub-directory for each task. For example, `eda/data_cleaning/`. That directory could contain multiple notebooks or scripts related to that task. 

When code is ready to move into `src/`, the old code in `eda/` is saved there for archival purposes. 

When a task is completed and a branch is ready to be merged into main, update the changelog with anything new. Versioning is likely unnecessary for this project, but the changelog should have name/date at least.

Example:

```
1/31/2026 - Created repository and README
- Initial directories and structure set up.
- README created with basic information included.
- Brady
```
