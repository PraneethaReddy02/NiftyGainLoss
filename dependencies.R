# dependencies.R

# List of required packages
required_packages <- c("shiny", "quantmod", "xts")

# Install any missing packages
new_packages <- required_packages[!(required_packages %in% installed.packages()[, "Package"])]
if (length(new_packages)) {
  install.packages(new_packages)
}

# Load the required packages
lapply(required_packages, library, character.only = TRUE)

# Define a vector of Nifty50 companies (Yahoo Finance tickers)
companies <- c(
  "Reliance Industries" = "RELIANCE.NS",
  "Tata Consultancy Services" = "TCS.NS",
  "HDFC Bank" = "HDFCBANK.NS",
  "Infosys" = "INFY.NS",
  "ICICI Bank" = "ICICIBANK.NS",
  "Kotak Mahindra Bank" = "KOTAKBANK.NS",
  "Hindustan Unilever" = "HINDUNILVR.NS",
  "State Bank of India" = "SBIN.NS",
  "Bajaj Finance" = "BAJFINANCE.NS",
  "Bharti Airtel" = "BHARTIARTL.NS"
)
