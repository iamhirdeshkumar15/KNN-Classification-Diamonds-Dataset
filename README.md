# KNN-Classification-Diamonds-Dataset
KNN classification of diamond prices using the built-in diamonds dataset in R.

## Project Overview
This project utilizes the K-Nearest Neighbors (KNN) algorithm to predict diamond prices based on various features such as carat, cut, color, clarity, and more. The diamonds dataset is sourced from the built-in `ggplot2` package in R, making it readily accessible for analysis.

## Objectives
- **Data Exploration**: Understand the structure and distribution of the dataset.
- **Data Preprocessing**: Normalize relevant features to prepare the data for KNN modeling.
- **Model Training**: Implement the KNN algorithm using the training dataset to classify diamonds based on their attributes.
- **Model Evaluation**: Generate a confusion matrix to evaluate the model's performance and calculate the accuracy.

## Methodology
1. **Data Loading**: The diamonds dataset is loaded using the `ggplot2` package.
2. **Normalization**: Selected features are normalized using a custom function to ensure all variables are on a similar scale.
3. **Data Splitting**: The dataset is randomly split into a training set (90%) and a test set (10%).
4. **KNN Implementation**: The KNN algorithm is applied to predict diamond prices, with the target variable being the price.
5. **Model Evaluation**: A confusion matrix is created to compare predicted values against actual values, and accuracy is calculated.

## Conclusion
This project demonstrates the application of KNN in predicting diamond prices, showcasing the relevance of machine learning techniques in real-world scenarios. Future work may involve exploring additional features or experimenting with different algorithms to enhance predictive performance.



