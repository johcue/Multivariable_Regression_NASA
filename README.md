# Multivariable_Regression_NASA

Classification of celestial bodies using multivariable linear regression - pandas and MATLAB.

The database presented here can be found on kaggle as ["Star Type Classification / NASA"](https://www.kaggle.com/brsdincer/star-type-classification/). The objective of this database refers to the prediction of the type of star according to astrophysical measurements. It contains 240 values and 7 characteristics. For this case, let's use the last feature as our target, which is a data set that goes from 0 to 5, in the form 0: Red Dwarf, 1: Brown Dwarf, 2: White Dwarf, 3: Main Sequence, 4 : Super Giants and 5: Hyper Giants.

## Data Encryption
Since two of the database features are categories, encoding of their data must be performed in order to obtain quantifiable values.

## Implementation in MATLAB
With the data preprocessing done, we move on to the implementation of the model in MATLAB.
The database used has characteristics with variable weights, which can generate problems in the prediction. Therefore, data normalization must be performed; of both the feature set and the target.
