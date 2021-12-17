# Amazon_Vine_Analysis

## Overview of the analysis
We are tasked with looking at analyzing Amazon reviews from members of the paid Amazon Vine program, which is a service that manufacturers and publishers can get reviews on their products after the Vine members try the products.  We are going to look at one such dataset (category sports) to determine if there is bias towards favourable reviews from Vine members in the dataset.

### Results:
In order to ensure the data we were looking at for our analysis was of high enough quality for us to be comfortable to draw conclusions from, we narrowed down the data we used for our analysis by removing any records that had less than 20 votes and created a new table with all the records that had 20 or more votes.

![20 votes and up](https://github.com/tessiertodd/Amazon_Vine_Analysis/blob/main/images/Deliverable%202%20-%20Q1.png)

We then removed all records with less than 50% of helpful votes and created a new table.

![50% helpful votes](https://github.com/tessiertodd/Amazon_Vine_Analysis/blob/main/images/Deliverable%202%20-%20Q2.png)

We then split the data into two tables so we could analyze each, one where vine reviews,

![Vine paid](https://github.com/tessiertodd/Amazon_Vine_Analysis/blob/main/images/Deliverable%202%20-%20Q3.png)

and one with non-vine reviews.

![Vine not paid](https://github.com/tessiertodd/Amazon_Vine_Analysis/blob/main/images/Deliverable%202%20-%20Q4.png)

Now with the two tables with vine reviews and non-vine reviews we could see if the 5 star reviews (high) were skewed by people who were being paid by vine program.

![Vine and non-vine analysis](https://github.com/tessiertodd/Amazon_Vine_Analysis/blob/main/images/Deliverable%202%20-%20Q5.png)

- There were 334 vine reviews and 61,614 non-vine reviews.
- There were 139 5-star vine reviews and 32,665 5-star non-vine reviews.
- The vine 5-star reviews were 41.6% of total reviews, while the non-vine 5-star reviews were 53.0% of total reviews. 


### Summary:
Based on the fact that vine members had a lower % at 41.6% of 5-star reviews versus non-vine members at 53.0%, I would conclude that the vine members do not show a bias towards giving higher ratings despite that fact that they are being paid to provide those ratings for products in the sports category.

There is still one piece of information verified_purchases that we did not explore. It would be interesting to see if further breaking down our vine datasets for vine between verified_purchases Yes and No to see if that would skew either the vine members.

We did the analysis on the two datasets with a subset of the original data.  We could also look at the original dataset, split that data between vine and non-vine and see if we are seeing any bias in the broader data... noting however that we are much more comfortable with the data we used as we made adjustments to ensure we had most complete and relevant data for our analysis.





