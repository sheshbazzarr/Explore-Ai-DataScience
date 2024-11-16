#!/bin/bash

# Base directory for the GitHub repo
BASE_DIR="AI-DataScience-Exploration"

# Create the main project directory
mkdir -p "$BASE_DIR"
cd "$BASE_DIR" || exit

# Function to create directories and README.md files
create_course_directory() {
  COURSE_NAME="$1"
  MODULES=("${@:2}")  # Array of module names
  
  mkdir -p "$COURSE_NAME"
  cd "$COURSE_NAME" || exit

  for MODULE in "${MODULES[@]}"; do
    # Create the module directory
    MODULE_DIR=$(echo "$MODULE" | tr -s ' ' '_')  # Replace spaces with underscores
    mkdir -p "$MODULE_DIR"
    
    # Create a README.md for the module
    cat > "$MODULE_DIR/README.md" <<EOL
# $MODULE

## Module Overview

This module covers topics related to **$MODULE**. Here, we explore the essential aspects of the subject matter, including key concepts and practical applications.

## Key Concepts:
- Placeholder for key concepts
- Placeholder for learning objectives

## How to Navigate:
- Go through the exercises in the module and follow along with the project implementation.
- Review the provided resources and the integrated project.

EOL
  done

  cd ..  # Return to the main course directory
}

# Creating directories for the courses
create_course_directory "Preparing Data" \
  "Module overview: DS Preparing data" \
  "Data sources and access" \
  "An introduction to using data" \
  "Data aggregations and descriptive statistics" \
  "An introduction to data visualisation" \
  "Integrated project: Access to drinking water (Part 1)" \
  "Data formatting" \
  "Data cleaning" \
  "Samples and distributions" \
  "Spreadsheet functions" \
  "Integrated project: Access to drinking water (Part 2)" \
  "Identifying patterns" \
  "Accuracy" \
  "Drawing and testing assumptions" \
  "End of Module feedback"

create_course_directory "SQL" \
  "Module overview: SQL" \
  "Database concepts" \
  "SQL basics" \
  "Querying with SQL" \
  "Integrated project: Beginning our data-driven journey in Maji Ndogo" \
  "SQL in production" \
  "Querying in notebooks" \
  "SQL: Numeric functions and aggregations" \
  "SQL: Window functions" \
  "SQL: String, date, and miscellaneous functions" \
  "SQL: Control flow functions" \
  "Integrated project: Clustering data to unveil Maji Ndogo's water crisis" \
  "SQL: Entity-relationship data models" \
  "SQL: Joins and set operations" \
  "SQL: Optimising queries" \
  "SQL: Views" \
  "SQL: Normalisation" \
  "An introduction to NoSQL" \
  "Integrated project: Weaving the data threads of Maji Ndogo's narrative" \
  "Integrated project: Charting the course for Maji Ndogo's water future" \
  "SQL exam: The Movie Database" \
  "End of Module feedback"

create_course_directory "Data Visualisation and Storytelling" \
  "Module overview: DS Visualising data" \
  "Communicating our findings" \
  "Design for impactful communication" \
  "An introduction to dashboards and reports" \
  "Creating visuals in Power BI" \
  "Integrated project: Visualising Maji Ndogo’s past" \
  "Formatting visuals in Power BI" \
  "Data models in Power BI" \
  "Data transformations in Power BI" \
  "Integrated project: Moulding data into visual stories in Maji Ndogo" \
  "Calculated columns with DAX" \
  "DAX aggregations" \
  "Building reports and dashboards" \
  "Exploratory Data Analysis in Power BI" \
  "Integrated project: Communicating our findings in Maji Ndogo" \
  "Integrated project: Transparency in tracking Maji Ndogo's water funds" \
  "End of Module feedback"

create_course_directory "Python" \
  "Module overview: Python" \
  "An introduction to Python" \
  "Python variables and data types" \
  "Python data structures" \
  "Logic and loops in Python" \
  "An introduction to version control" \
  "Python functions" \
  "Algorithms and algorithmic complexity" \
  "Recursive and Lambda functions" \
  "Classes, objects, and methods" \
  "PEP 8" \
  "An introduction to packages in Python" \
  "Data handling in Python" \
  "Pandas for Data Science" \
  "Integrated Project: Understanding Maji Ndogo's agriculture Part 1" \
  "Advanced string manipulation" \
  "Python visualisations" \
  "Integrated Project: Understanding and trusting data (Part 2)" \
  "Statistics with Python" \
  "Statistics with Python [MCQ]" \
  "Scripting and testing" \
  "More advanced Python" \
  "Integrated Project: Validating our data" \
  "Python exam" \
  "End of Module feedback"

create_course_directory "Regression" \
  "Module overview: Regression" \
  "An introduction to machine learning" \
  "Linear models" \
  "Model performance" \
  "Multiple linear regression" \
  "Variable selection and model persistence" \
  "Regularisation" \
  "Decision trees" \
  "Ensemble methods and bootstrapping" \
  "Decision tree code challenge" \
  "Random forests and applying our knowledge" \
  "Regression MCQ" \
  "End of Module feedback"

create_course_directory "NLP and Classification" \
  "Module overview: NLP & Classification" \
  "Natural language processing" \
  "Logistic regression" \
  "Classification metrics" \
  "Model improvements" \
  "Tree-based classification methods" \
  "Support vector machines" \
  "Nearest Neighbours and Naive Bayes" \
  "Hyperparameter tuning and model validation" \
  "Neural network classifiers" \
  "Classifier model selection" \
  "NLP and Classification Exam" \
  "End of Module feedback"

create_course_directory "Unsupervised Learning" \
  "Overview: Unsupervised Learning" \
  "Unsupervised Learning - Overview [Slides]" \
  "Principal component analysis" \
  "Advanced dimensionality reduction" \
  "K-means clustering" \
  "Hierarchical clustering" \
  "K-means and hierarchical clustering MCQ" \
  "Gaussian Mixture Models" \
  "Clustering and Geospatial Analysis" \
  "Gaussian mixture models and geospatial data [MCQ]" \
  "Recommender systems" \
  "Kaggle: Movies recommender system" \
  "Unsupervised learning exam"

create_course_directory "AWS Foundations" \
  "AWS Cloud Foundations" \
  "AWS Economics and Billing" \
  "AWS Global Infrastructure" \
  "AWS Cloud Security" \
  "AWS Networking and Content Delivery"

echo "Repository structure has been created successfully!"

