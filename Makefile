PHONY.: download_clean_data masterdatafile cleanedtables

all: output/master_county_data/master_county_data.csv output/master_county_data/cleanedsocial.csv output/master_county_data/cleanedrisk.csv

download_clean_data: 
	Rscript code/natamen.R
	Rscript code/TrimmingCensusRaceData.R
	Rscript code/hurricane.r
	Rscript code/tornado_wind_hail.R
	Rscript code/unemployment_clean.R
	Rscript code/income_clean.R
	Rscript code/poverty_clean.R
	
masterdatafile: code/join_tidy_county_data.R
	Rscript code/join_tidy_county_data.R

cleanedtables: code/CleanMasterForAnalysis.R
	Rscript code/CleanMasterForAnalysis.R

