# Forecasting the Future: A Time Series Analysis of NIFTY and NYSE

## Project Overview
This project, titled **Forecasting the Future: A Time Series Analysis of NIFTY and NYSE**, involves a comprehensive time series analysis of the NIFTY 50 index (India) and the NYSE Composite Index (USA). The goal is to uncover patterns, trends, and insights into stock market dynamics using advanced statistical models. The analysis utilizes Holt’s Exponential Smoothing, SARIMA models for seasonality, and ARCH/GARCH models for volatility analysis.

## Project Objectives
- Perform time series forecasting for NIFTY 50 and NYSE Composite Index stock prices.
- Compare the effectiveness of different forecasting models.
- Evaluate volatility using ARCH and GARCH tests.

## Methodology
### Data Collection
- Data Source: Yahoo Finance
- Time Frame: Financial years 2015-2022
- Data Type: Closing prices of NIFTY 50 and NYSE Composite Index

### Analytical Approach
1. **Data Decomposition**: Analyzed trend and seasonality.
2. **Stationarity Check**: ADF test to validate stationarity.
3. **Model Fitting**:
   - **Holt’s Exponential Smoothing** for weighted averaging of past data.
   - **SARIMA Model** for handling seasonality (Best models: NYSE (2,0,2)(0,0,1)[12], NIFTY (4,0,0)(1,0,0)[12]).
   - **Ljung Box Test** for goodness of fit.
   - **ARCH & GARCH Models** to analyze volatility structure.

## Results
- Holt’s Exponential Smoothing demonstrated better forecasting performance with lower RMSE values compared to SARIMA.
- Presence of ARCH effect confirmed for both indices.
- GARCH model captured volatility clustering effectively.

## Tools & Technologies
- **Programming Language**: R
- **Libraries**: `forecast`, `tseries`, `fGarch`
- **Visualizations**: Plots for ACF, PACF, Decomposition, and Forecasting

## Future Scope
- Employ **Granger Causality tests** to analyze predictive relationships between indices.
- Use **Johansen's Cointegration Test** to explore long-term relationships.
- Develop **VAR/VEC models** for simultaneous forecasting of NIFTY and NYSE.

## Author
**Samriddhi**
- M.sc in Applied Statistics

