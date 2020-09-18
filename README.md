# ACS-Data-Scraper

This program can be used to scrape most recent ACS 5-Year Data at the **block group level**. It intends to scrape different tables and export as separate .csv files. It also combines tables scraped and transforms for better use.

## 1. Select Variables

Variables are divided into two types: *grouped variables* and *selected variables*.
* Grouped variables: refer to the whole group, like `B01003`
* Selected variables: refer to a string of detailed columns like `B01001_001E,B01001_002E,B01001_026E`. Record them in separate dictionaries

## 2. Scrape Data

Since the census API only supports acquiring data of all block-groups for one county at one time, need to acquire the county list of the specified state and combine data for each county. 

Functions defined and used:
* `get_group_data(state, var)`, `get_select_data(state, var)`: Gets data related to one group variable/one slected variables string, for all block-groups in a specified state.
* `update_cols(df, var)`, `update_select_cols(df, var)`: Decodes column names with actual meaning.
* `transform_group_data(state, var)`, `transform_select_data(state, var)`: Downloads data and tranforms it.

## 3. Export Data

Define `functions save_group_data(state, var)` and `save_select_data(state, var)` to export each data set separately.
