## Phishing Dectection Using Logistic Regression and Ensemble methods of Machine Learning
### Overview
In this project, we'll build a classification system to detect the legitimacy of an URL and thus classify them a 'Phishing' and 
'Legitimate' using Machine Learning algorithms like <b>Logistic Regression</b> and Ensemble methods like 
<b>Bagging(Randon Forest classifer)</b> and <b>Boosting(AdaBoost and XGD Boosting)</b>.

We'll be doing the following steps to implement our project:

- We'll collect the data
- We'll first carry out a preliminary analysis to explore the data and check for their completeness, Relevancy, Validity 
  and Integrity
- We'll then preprocess the data, first by splitting it into a train set(used for training our model) and 
  test set(used to evaluate the performance of our model).
- Then carry out the process of <b>Feature Selection</b>, which helps our model <b>train faster, reduces the complexity</b> and 
  <b>improves the accuracy</b>
- We'll then fit our model and compare the performance of Logistic Regression against the Ensemble methods

### Data
- The dataset ‘Phishing website Dataset’ has been taken from Kaggle 
- It consists of legitimate and phishing URLs, the legitimate sites are taken from ‘Yahoo’ and ‘starting point directory’ 
  and the phishing sites from the ‘Phishtank data archive’. 
- The data consists of 11055 URLs and 32 features. There are 6157 legitimate, 4898 phishing websites. 

