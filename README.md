
# Chronoamperogram Analysis MATLAB Code

This repository contains MATLAB code for analyzing chronoamperometry experiments. The script extracts current-time data, visualizes oxidation phases, and computes ion extraction rates.

## Files

- `Chronoamperogram_Code.m` : Main MATLAB script for processing and plotting chronoamperometry data.
- `Chronoamperogram_Sample_Plot.png` : Example image showing the type of plot the script generates.



## Usage

1. Open MATLAB and navigate to this folder.

2. In `Chronoamperogram_Code.m`, define your dataset:

```matlab
Dataset = Your chronoamperometry data
DatasetTitle = 'Your Experiment Name';.


```

Users must provide their own dataset; the script does not include built-in data.

**3. Selecting oxidation regions:** To select a specific oxidation region, edit the mask in the code:

```matlab
mask = (x_data >= 30) & (x_data <= 31);
```
Replace 30 and 31 with your desired time range. 

**4. Zooming in on a region:**  To focus on a specific region in the plot, adjust the x-axis limits:
```matlab
xlim([30 31])
```
Replace 30 and 31 with the same range as your mask for consistency.



## Script Output

Extract time and current data from your dataset

Integrate current over specified oxidation regions to compute ion extraction rates

Plot the selected oxidation region and the entire region of data 















