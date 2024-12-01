# Credit Card Usage

## Overview


This study utilized data from [global findex](https://www.worldbank.org/en/publication/globalfindex). examines the effects of gender and employment status on credit card usage, revealing that employment significantly increases credit card use, while gender has an independent but less pronounced influence. The interaction between the two factors is not significant, suggesting their effects are primarily independent. Policy recommendations focus on enhancing employment opportunities and designing inclusive financial products to promote credit card adoption, especially among women. The analysis was performed using R programming and is presented in the final research paper in PDF format.

## Data set

The data in this repo come from the World Bank's Microdata Library, which provides free access to microdata produced by the World Bank and other international organizations, statistical agencies, and various subjects in developing countries. The data for this paper is available at https://microdata.worldbank.org/index.php/catalog/4607/data-dictionary.

## File Structure

The repo is structured as:

-   `data/00_simulate_data` contains the cleaned dataset that was constructed.
-   `data/01_raw_data` contains the cleaned dataset that was constructed.
-   `data/02_analysis_data` contains the cleaned dataset that was constructed.
-   `models` contains fitted models. 
-   `other` contains about literature, LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download, clean, test, model and parquet data.
  
## Statement on LLM usage

Some coding and editing writing in this project is done with the help of ChatGPT 4o and the entire chat history is available in usage.txt located in the "other/llm_usage/LLM_USAGE.txt".
