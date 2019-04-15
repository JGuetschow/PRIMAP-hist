---
title: The PRIMAP-hist national historical emissions time series (1850-2016) (v2.0, updated December 2018)
header-includes:
  - \usepackage{mdframed}
  - \usepackage{xcolor}
  - \usepackage{hyperref}
numbersections: true
---

\mdfsetup{%
  skipabove=5pt,
  linecolor=gray,
  backgroundcolor=orange!15}

# Recommended citation


\begin{mdframed}
Gütschow, J.; Jeffery, L.; Gieseke, R. (2019): The PRIMAP-hist national historical emissions time series v2.0 (1850-2016). GFZ Data Services. \href{https://doi.org/10.5880/PIK.2019.001}{https://doi.org/10.5880/PIK.2019.001}
\end{mdframed}


# Content

- [Use of the dataset and full description]
- [Abstract]
- [Support]
- [Sources]
- [Files included in the dataset]
- [Notes]
- [Data format description (columns)]
- [Changelog]
- [References]

# Use of the dataset and full description

Before using the dataset, please read this document and the article describing the
methodology, especially the section on uncertainties and the section on
limitations of the method and use of the dataset.

\begin{mdframed}
Gütschow, J.; Jeffery, L.; Gieseke, R.; Gebel, R.; Stevens, D.; Krapp, M.; Rocha, M. (2016): The PRIMAP-hist national historical emissions time series, Earth Syst. Sci. Data, 8, 571-603, \href{https://doi.org/10.5194/essd-8-571-2016}{https://dx.doi.org/10.5194/essd-8-571-2016}
\end{mdframed}

Please notify us (johannes.guetschow@pik-potsdam.de) if you use the dataset so that we can keep track of how it is used and take that into consideration when updating and improving the dataset.

When using this dataset or one of its updates, please cite the DOI of the precise version of the dataset used and also the data description article which this dataset is supplement to (see above). Please consider also citing the relevant original sources when using the PRIMAP-hist dataset. See the full citations in the References section further below.

# Support

If you need support in using the dataset or have any other questions regarding the dataset, please contact johannes.guetschow@pik-potsdam.de.

# Abstract

The PRIMAP-hist dataset combines several published datasets to create a comprehensive set of greenhouse gas emission pathways for every country and Kyoto gas covering the years 1850 to 2016, and all UNFCCC (United Nations Framework Convention on Climate Change) member states, as well as most non-UNFCCC territories. The data resolves the main IPCC (Intergovernmental Panel on Climate Change) 2006 categories. For CO$_2$, CH$_4$, and N$_2$O subsector data for Energy, Industrial Processes and Agriculture is available. Due to data availability and methodological issues version 2.0 of the PRIMAP-hist dataset does not include emissions from land use, land use change and forestry (LULUCF).



The PRIMAP-hist v2.0 dataset is an updated version of

\begin{mdframed}
Gütschow, J.; Jeffery, L.; Gieseke, R.; Gebel, R. (2017):
The PRIMAP-hist national historical emissions time series v1.2 (1850-2015).
GFZ Data Services. <https://doi.org/10.5880/PIK.2018.003>.
\end{mdframed}


Please consult the [Changelog] below for a detailed description of the changes in version 2.0.

# Sources

**Global CO$_2$ emissions from cement production v2 (Andrew 2018)** [data](https://doi.org/10.5281/zenodo.1336892), [paper](https://doi.org/10.5194/essd-10-195-2018)
@andrewGlobalCO2Emissions2018, @andrewGlobalCO2Emissions2018a

**BP Statistical Review of World Energy** [website](https://www.bp.com/en/global/corporate/energy-economics/statistical-review-of-world-energy.html):
@BP2018

**CDIAC** [data](http://doi.org/10.3334/CDIAC/00001_V2017): @Boden2017

**EDGAR versions 4.2 and 4.2 FT2010:** [EDGAR v4.2](https://doi.org/10.2904/EDGARv4.2), [EDGAR v4.2 FT2010](http://edgar.jrc.ec.europa.eu/overview.php?v=42FT2010): @JRC_EDGAR432_data, @InternationalEnergyAgency2012

**EDGAR version 4.3.2:** [data](http://doi.org/10.2904/JRC_DATASET_EDGAR), [paper](https://doi.org/10.5194/essd-2017-79): @JRC2011, @janssens-maenhoutEDGARV4Global2017

**EDGAR-HYDE 1.4** [data](http://themasites.pbl.nl/tridion/en/themasites/edgar/emission_data/edgar-hyde-100yr/edgar-hyde-1-4.html):  @VanAardenne2001, @Olivier2001,

**FAOSTAT database** [data](http://www.fao.org/faostat/en/#data): @FAO2018

**RCP historical data** [data](http://www.pik-potsdam.de/~mmalte/rcps/), [paper](https://doi.org/10.1007/s10584-011-0156-z): @Meinshausen2011

**UNFCCC National Communications and National Inventory Reports for developing countries** [website](http://di.unfccc.int/detailed_data_by_party), [data](https://doi.org/10.5281/zenodo.1310702): @UNFCCC2018, @giesekeUNFCCCEmissionsData2018

**UNFCCC Biennal Update Reports** [website](https://unfccc.int/process/transparency-and-reporting/reporting-and-review-under-convention/biennial-update-reports-0): @UNFCCC2018BUR

**UNFCCC Common Reporting Format (CRF)** [website](http://unfccc.int/national_reports/annex_i_ghg_inventories/national_inventories_submissions/items/10116.php), [data](https://doi.org/10.5194/essd-10-1427-2018): @UNFCCC2018CRF (processed as described in @jefferyPRIMAPcrfUNFCCCCRF2018), @UNFCCC2017CRF (processed CRF2017 data: @Jeffery2018_PRIMAPcrf_data)


# Files included in the dataset

**PRIMAP-hist_v2.0_11-Dec-2018.csv**: With numerical extrapolation of all time series  to 2016.

**PRIMAP-hist_no_extrapolation_v2.0_11-Dec-2018.csv**: Without numerical extrapolation of missing values and not including the groups mentioned below.

# Notes

* Emissions from international aviation and shipping are not included in the dataset.
* Emissions from land use, land use change, and forestry (LULUCF) are not included in this dataset.

# Data format description (columns)

## "scenario"
* HISTCR: In this scenario country reported data (CRF, BUR, UNFCCC) is prioritized over third party data (CDIAC, FAO, Andrew, EDGAR, BP).
* HISTTP: In this scenario third party data (CDIAC, FAO, Andrew, EDGAR, BP) is prioritized over country reported data (CRF, BUR, UNFCCC)

## "country"
ISO 3166 three-letter country codes or custom codes for groups:

Code       Region description
----       -------
EARTH      Aggregated emissions for all countries.
ANNEXI     Annex I Parties to the Convention
NONANNEXI  Non-Annex I Parties to the Convention
AOSIS      Alliance of Small Island States
BASIC      BASIC countries (Brazil, South Africa, India and China)
EU28       European Union
LDC        Least Developed Countries
UMBRELLA   Umbrella Group

Table: Additional "country" codes.


## "category"

IPCC (Intergovernmental Panel on Climate Change) 2006 categories for emissions. Some aggregate sectors have been added to the hierarchy. These begin with the prefix *IPCM* instead of *IPC*.

-----------------------------------------------------------------------
Category code Description
------------- ---------------------------------------------------------
IPCM0EL       National Total excluding LULUCF

IPC1          Energy

IPC1A         Fuel Combustion Activities

IPC1B         Fugitive Emissions from Fuels

IPC1B1        Solid Fuels

IPC1B2        Oil and Natural Gas

IPC1B3        Other Emissons from Energy Production

IPC1C         Carbon Dioxide Transport and Storage
              (currently no data available)

IPC2          Industrial Processes and Product Use

IPC2A         Mineral Industry

IPC2B         Chemical Industry

IPC2C         Metal Industry

IPC2D         Non-Energy Products from Fuels and Solvent Use

IPC2E         Electronics Industry
              (no data available as the category is only used for
              fluorinated gases which are only resolved at the level
              of category IPC2)

IPC2F         Product uses as Substitutes for Ozone Depleting Substances
              (no data available as the category is only used for
              fluorinated gases which are only resolved at the level
              of category IPC2)

IPC2G         Other Product Manufacture and Use

IPC2H         Other

IPCMAG        Agriculture, sum of IPC3A and IPCMAGELV

IPC3A         Livestock

IPCMAGELV     Agriculture excluding Livestock

IPC4          Waste

IPC5          Other
-----------------------------------------------------------------------

Table: Category descriptions using IPCC 2006 terminology.

## "entity"

Gas categories using global warming potentials from either Second Assessment Report (SAR)
or Assessment Report 4 (AR4).

Code          Description
----          -----------
CH4           Methane
CO2           Carbon Dioxide
FGASES        Fluorinated Gases (SAR)
FGASESAR4     Fluorinated Gases (AR4)
HFCS          Hydrofluorocarbons (SAR)
HFCSAR4       Hydrofluorocarbons (AR4)
KYOTOGHG      Kyoto greenhouse gases (SAR)
KYOTOGHGAR4   Kyoto greenhouse gases (AR4)
N2O           Nitrous Oxide
PFCS          Perflurocarbons (SAR)
PFCSAR4       Perflurocarbons (AR4)
SF6           Sulfur Hexafluoride
NF3           Nitrogen Trifluoride

Table: Gas categories and used global warming potentials

## "unit"

Unit is either Gg or GgCO$_2$eq (CO$_2$-equivalent according to the global warming potential used).


## Remaining columns

Years from 1850-2016.

# Changelog

## v2.0 (December 2018)

The v2.0 release comes with several important changes. The dataset now uses the sectors from the IPCC 2006 guidelines. It includes new and updated data sources (EDGAR v4.3.2, Andrew 2018 cement data, updated BUR, CRF and UNFCCC data, updated BP and FAO data). This release of PRIMAP-hist does not include LULUCF emissions. We also present two different time series to highlight discrepancies between data from third party assessments and data reported by countries. In the "country reported priority" time series we prioritize country reported data over third party data. This is a direct continuation of earlier versions of PRIMAP-hist. This time series has the scenario code "HISTCR". In the "third party priority" time series we prioritize data from third party assessments (e.g. by research institutes, international organization, or private companies) over the third party data. The scenario code is "HISTTP". A new data description paper with detailed methodology description is currently under preparation.

### Changes in PRIMAP-hist source creation
#### Data source prioritization
* Through the inclusion of new data sources the source prioritization has changed a little. The "HISTCR" time series which is the continuation of the previous PRIMAP-hist time series now uses the following source prioritization: CRF2018, CRF2017, BUR, UNFCCC2018, Andrew2018, CDIAC 2017, FAO2018, EDGAR v4.3.2, EDGAR v4.2 (FT2010), BP2018.
* The new "HISTTP" time series uses the same basic prioritization but with the block of country reported data sources (CRF, BUR, UNFCCC) at the end of the priority list.

#### Sectors and gases
The data source now uses the IPCC2006 sectors. The sectors are listed in section *category* above. The new sectors bring some changes to the categorical resolution.

* In the agricultural sector we now distinguish between emissions from livestock (IPC3A) and agricultural emissions without livestock (IPCMAGELV). Because of the use of manure as fertilizer for crops, this split is not always exactly the same for all data sources. The extrapolation has also changed because EDGAR-HYDE has individual data for livestock and agricultural emissions without livestock (for CH$_4$, for N$_2$O we use the combined time series as the individual time series for agriculture without livestock is zero before 1940 for most regions).
* Subsector resolution for IPC1 and IPC2 is now available for all gases except the fluorinated gases which lack this resolution in some input data sources.

The gas resolution has not been changed. Country and sector resolved data for individual HFCs and PFCs is still too scarce to create individual gas time series. However, NF$_3$ has been added to the time series but data is only available for a few countries.

#### Composite source generation methodology
* When only a few (less than 6) years are added to the time series by a lower priority source (for a specific country / gas / sector) the scaling is not carried out using regression values but the raw data of the time series and the lower priority source in the last year of the time series (first year in case of extension to the past). This method better accounts for short term trends which are the information we want to obtain from the lower priority source if only a few years are added.
* The the scaling of lower priority timeseries to higher priority timeseries has been adjusted for category IPC1B2. Now a trend of 5 years is used instead of a trend of 15 years. This was necessary as several countries showed a steep increase in emission in the first half of the 1970s leading to very high starting point of the backwards extrapolation of EDGAR v4.3.2 data.
* The scaling of lower priority sources when filling gaps in higher priority sources has been changed as there were some problems when the lower priority source data showed strong fluctuations in the years of the gap leading to different scaling factors for the right and the left boundary. Now small gaps (< 5 years) where the quotient of the left and right boundary scaling factors is larger than 2 are linearly interpolated instead of filling with scaled lower priority data.
* The bound on the scaling factor has been removed. Lower priority sources are now strictly used as growth rates.

#### Special treatment of individual countries
* South Sudan and Sudan now have individual data in most data sources. Thus individual time series are created for the two countries instead of downscaling of a common time series after the source creation as done before.


### Changes in data sources and preprocessing

#### Input source updates
- We have included Andrew 2018 (v2) data on CO$_2$ emissions from cement to replace the CDIAC cement CO$_2$ emissions. We classify the dataset as third party data as it provides an overview over emissions from almost all countries. However, country reported data (CRF) is also used to create the dataset.
- BP fossil CO$_2$ data has been updated to the 2018 release, last used data year is 2016.
- Data from the Biennial Update Reports (BURs) have been updated to include all BURs submitted until 1st September 2018 which use IPCC 2006 categories and contain sufficient data to be used in PRIMAP-hist. All data from countries which submitted their BURs in IPCC1996 categories should be included in the UNFCCC "Detailed Data by Party" source.
Countries included in our BUR data are
  - first BUR: Indonesia, Montenegro, Mongolia, Mauritania, Togo
  - second BUR: Andorra, Argentina, Macedonia, Namibia, South Africa
- CRF data has been updated to the 2018 release with the 2017 release used as backup for missing 2018 data. The last data year is now 2016 for all categories and gases
- EDGAR data has been updated to version v4.3.2. The new release shows significant differences in emissions estimates for some sectors and gases. Most prominent is a strong increase in estimates of fugitive emissions from oil and gas production. While this is a small contribution for most developed countries, it is a very important emissions source for oil exporting countries, especially when export of fossil fuels is the main economic sector. The change is justified in the EDGAR v4.3.2 description paper, see @janssens-maenhoutEDGARV4Global2017.
- FAOSTAT data has been updated to include all data available in September 2018. Changes in historical emissions are very limited. For most sectors and gases the last year is now 2016. There are some exceptions which need special processing which is explained in the following section.
- UNFCCC "Detailed Data by Party" has been updated to data available in September 2018 (no updates from the cited July version: @giesekeUNFCCCEmissionsData2018): several countries are included for the first time with sufficient data to be used in PRIMAP-hist. Some countries have updated and extended data. However, some time series seem to be constructed from data points that were calculated using different methodologies and therefore show large discrepancies. Other data show strong fluctuations or deviate strongly from third party sources. In several cases we excluded data from use in PRIMAP-hist as we could not identify the source of the fluctuations and discrepancies. Details are presented in the section *Noteworthy Changes* below.

#### Changes in preprocessing
* In earlier version of PRIMAP-hist all input sources were extrapolated during sector and gas aggregation where individual subsectors or gases did not cover the full time frame. This has now been replaced by more specific extrapolations for the few cases where extrapolation is needed.
* All data sources not reported in IPCC2006 sectors are converted to these sectors. These are: FAOSTAT, EDGAR v4.2, EDGAR v4.3.2, EDGAR-HYDE v1.4, RCP, and UNFCCC. BP, CDIAC, and Andrew cement data do not need a conversion as they only cover subsectors which are also present in the 2006 guidelines.
* FAOSTAT data covers the period 1961 to 2016 for most sectors and gases. However, there are a few exceptions that need special treatment:
    - For N$_2$O emissions from synthetic fertilizers, the resolved direct and indirect emissions miss 2016 data. We use the net emissions trend to extrapolate direct and indirect emissions. Direct and indirect emissions are mapped to different sectors in the IPCC2006 categories and are thus needed for the whole time frame.
    - Data for agricultural waste burning is only available from 1990 on. In the PRIMAP-hist source creation is it included in the IPCMAGELV sector. For some countries it is a mayor contribution. We thus extrapolate the FAO data with EDGAR v4.3.2 data for the same sector before aggregation of the IPCMAGELV sector.
    - Data for cultivation of organic soils is only available from 1990 onwards. As we have no alternate data source for this sector we use a constant extrapolation. The data available in FAO is also a constant time series. Implicitly, the same was done in PRIMAP-hist v1.2 as the linear extrapolation of a constant function is a constant extrapolation
* In the BUR data some tables contained unit errors or ambiguities that had to be corrected. Some countries provided the detailed category and gas information only for selected years and required downscaling to obtain time series usable in PRIMAP-hist
    - SF6 data for Montenegro has been corrected as it was presented with a wrong unit in the BUR (The unit given is Gg while the data are actually in GgCO2eq)
    - Indonesia data needs downscaling of IPC1 and IPC2 data to subsectors for 2000 - 2011 where detailed 2012 data is used as downscaling key.
    - Mongolia data only resolves gases for 1990 and 2014 for all sectors. KYOTOGHG time series are provided for all sectors for 1990 - 2014. Some sectors only contain emissions from a certain gas and thus the Kyoto GHG time series can be used to construct an individual gas time series for these sectors. Other sectors need downscaling of Kyoto GHG time series to individual gases using the shares from 1990 and  2014 (linearly interpolated). These sectors are: IPC1 and subsectors; IPC4.
    - Argentina provides data for 1990 - 2014 with gas detail only for 2014. Thus for all sectors Kyoto GHG data is downscaled to individual gas level using the 2014 shares.
* The UNFCCC "Detailed Data by Party" interface combines data from different country submissions. Sometimes these data have been prepared using different methodologies and guidelines and are inconsistent. When the sectors don't match the IPCC1996 guidelines used by the interface they time series are sometimes put into "other" categories. We thus have to remove data points and partial time series for several countries. In other cases we have to downscale data that is not available in the necessary categorical detail using detailed data available for individual years.
* Downscaling of Sudan data to Sudan and South Sudan is now carried out in the individual sources which do not yet contain data for the individual countries (e.g. EDGAR v4.2) or only resolve the individual countries for the time after the separation of Sudan e.g. (FAO, CDIAC).
* The downscaling of the groups for countries not individually resolved in the BP data has been improved. It now uses the trend of emissions shares from CDIAC rather than the shares themselves.

### Further bug fixes
None.

### Known problems
* The shorter regression period for category IPC1B2 extrapolation is only applied when extrapolating with EDGAR-HYDE data. However, EDGAR-HYDE data for N$_2$O in IPC1B2  starts in 1970, the same year as EDGAR v4.3.2 data. Thus it is not used for extrapolation. In the extrapolation with RCP data the normal regression period is used and thus the starting point of the extrapolation is higher as there was a steep increase in fugitive emissions in the early 1970s.
* Data for the Pitcairn Islands has no CO$_2$. All data for the territory comes from  EDGAR v4.2 and is very patchy. However, this is not very important as the Pitcairn Islands have only about 50 inhabitants.
* Tokelau CO$_2$ data is not extrapolated before 1890. Tokelau has no CO$_2$ IPC1A data and thus needs a special treatment for the CO$_2$ extrapolation. This will be added in a future version.
* The agricultural sectors (IPC3A, IPCMAG, IPCMAGELV) miss the last years for some country. To add them in a manner consistent with the rest of the dataset use a linear extrapolation with a trend calculated from the last 15 years with data. This bug will be corrected in the next release.

### Noteworthy changes
We group the changes by their impact on cumulative IPCM0EL, Kyoto GHG emissions and present the reasons for these changes.

* Changes over 100% in cumulative emissions
    - Brunei Darussalam: EDGAR v4.3.2 shows strong changes compared with EDGAR v4.2 and other sources (especially CH$_4$). These changes come from fugitive emissions (IPC1B2, fugitive emissions from oil and natural gas).
* Changes between 50 and 100% in cumulative emissions
    - Republic of the Congo, Gabon, Libya, Nigeria, Oman, Qatar: All countries have large changes in fugitive emissions due to differences in EDGAR v4.3.2 vs. EDGAR v4.2. The main sector is IPC1B2, but other sectors are also affected (e.g. N$_2$O from fuel combustion activities (IPC1A) or for Oman emissions from industrial processes and product use (IPC2))
* Changes between 20 and 50% in cumulative emissions
    - Angola, Algeria, Cameroon, Iraq, Kuwait, Saudi Arabia: These countries are impacted by the change in fugitive emissions in the EDGAR data (IPC1B2, CH$_4$; for Cameroon also CO$_2$; for Iraq also N$_2$O from different sectors).
    - Armenia: UNFCCC data is now used. This has changed emissions estimates. Agricultural data from UNFCCC is subject to high fluctuations.
    - Bhutan: Changes in CH$_4$ and N$_2$O from new EDGAR data (IPC1 and subsectors) have reduced emissions estimates.
    - Democratic Republic of the Congo: There are changes for all three mayor gases. Changes in CO$_2$ and CH$_4$ from EDGAR v4.3.2, IPC1B2. Changes in N$_2$O from IPC5, which has also changed substantially from EDGAR v4.2 to EDGAR v4.3.2.
    - Equatorial Guinea: Changes come mainly from CH$_4$, a bit from N$_2$O. They originate from EDGAR v4.3.2 which is also used for CH$_4$ in IPCMAGELV.
    - Guyana: CH$_4$ extrapolation before 1960.
    - Lebanon: Changes in CH$_4$ and N$_2$O emissions from UNFCCC data. Changes before 1990 in CO$_2$, IPC1B2 from EDGAR v4.3.2 data.
    - Saint Lucia, Madagascar: UNFCCC data has been included which differs from other sources. (for Saint Lucia especially for N$_2$O and CH$_4$).
    - Mauritania: Inclusion of BUR data changed emissions estimates. The main source of differences are N$_2$O in IPC4 and IPCMAG, and CH$_4$ in IPC4.
    - Niger: Inclusion of UNFCCC data introduced changes for all sectors and gases. UNFCCC data is very scarce and fluctuating but somewhat in line with third party sources and therefore kept.
    - Turks and Caicos Islands: Changes in emissions estimates of all three mayor gases due to EDGAR v4.3.2.
    - Chad: Changes mainly in emissions estimates of N$_2$O and CH$_4$ from EDGAR v4.3.2. UNFCCC data is only used for IPC4.
    - Tokelau: Changes in emissions estimates of N$_2$O and CH$_4$ from EDGAR v4.3.2.
    - Timor-Leste: Changes mainly in emissions estimates of CH$_4$ and smaller changes in CO$_2$ emissions, both from EDGAR v4.3.2.
    - Saint Vincent and the Grenadines: UNFCCC data for agricultural CH$_4$ and N$_2$O is not used any more as it showed large fluctuations and step changes not in line with any other source.
* Changes between 10 and 20% in cumulative emissions
    - Djibouti: EDGAR v4.3.2 has changed emissions estimates of CH$_4$ and N$_2$O significantly.
    - Ecuador: CH$_4$ emissions estimates have changed for several sectors due to EDGAR v4.3.2.
    - Federated States of Micronesia: cumulative changes mainly from CO$_2$ (because downscaled BP data is available) but also strong peak changes for CH$_4$ and N$_2$O (from FAO which had very low emission in the last data year in the last revision)
    - Georgia: We have removed UNFCCC CH$_4$ CAT1A data prior to 2000 because it was reported in CAT1A5 (other) and did not match the data for later years which means that is was likely calculated using a different methodology than data submitted later.
    - Croatia: CH$_4$ data has changed as IPC3A data in CRF2018 is significantly higher than in CRF2017 which was used in PRIMAP-hist v1.2. CO$_2$ data before 1990 is higher because the scaling of EDGAR to CRF is not bounded any more. PFCs data has changed because the CRF data has a gap and the gap filling procedure was adapted.
    - Haiti: CH$_4$ emissions from IPC1B1 are much higher after 2004 due to EDGAR v4.3.2.
    - Iran: Changes come mainly from CH$_4$ in IPC1B2, originating from EDGAR v4.3.2. The EDGAR data also introduces changes in N$_2$O data for different sectors.
    - Kiribati: The changes come mainly from CH$_4$ where IPC4 has been added in EDGAR v4.3.2 and IPC3A Where UNFCCC data is now used. Other gases and sectors changed as well also due to the inclusion of UNFCCC and EDGAR v4.3.2 data.
    - Mali, Senegal, Mozambique, Tanzania: CH$_4$ and N$_2$O have changed, mostly before 1990: this is due to a new method to extrapolate missing emissions from burning of agricultural residues. In v1.2 linear extrapolation was used, now we use growth rates from EDGAR v4.3.2 (see above).
    - Montenegro: The main change in emissions estimates comes from a modified scaling of EDGAR v4.2 PFCs data to the much higher country reported data (BUR and UNFCCC).
    - Mongolia: The inclusion of BUR data has introduced changes in several sectors and gases.
    - Paraguay: Inclusion of UNFCCC data which was no included in v1.2 has changed emissions, primarily N$_2$O where IPCMAGELV is the dominant sector.
    - Sudan and South Sudan: There now is more independent data available for South Sudan such that we need less downscaling based on economical data. This introduces some changes in emissions especially for years after 2000. Furthermore, some input data has changed (FAO, EDGAR). The different extrapolation of missing FAO data has also impacted pre 1990 CH$_4$ and N$_2$O emissions especially for South Sudan.
    - Syria: Changes are mainly CH$_4$, IPC1B2 and originate from EDGAR v4.3.2 data. N$_2$O data has also changed, again because of changes in EDGAR data.
    - Togo: Emission estimates for all gases have changed because of the inclusion of BUR data.
    - Yemen: CH$_4$ has changed post 1990 in sector IPC1B2. N$_2$O has also changed. Both changes come from EDGAR v4.3.2.
    - South Africa: Higher CH$_4$ emissions due to the inclusion of BUR data for the agricultural sector which is much higher than third party sources.



## v1.2 (December 2017)

The v1.2 release uses new input data. CRF data have been updated to the 2017 and 2016 releases, CDIAC and BP data have been updated to their 2017 releases and the UNFCCC Non-Annex I data have been updated to the status of August 2017.

### Changes in PRIMAP-hist source creation
- The method to fill gaps in time series has been changed. In v1.1 gaps in higher priority time series were linearly interpolated to enable the calculation of trends for the combination of time series from different data sources even if the time series contained only few data points. This method can not be used any more as we now include UNFCCC data for China which has data for only three years. Linear interpolation overestimates emissions in the late 1990s where the Asian financial crisis lead to declining emissions (with a steep increase after the crisis). In v1.2 gaps are filled with data from lower priority time series (where available) in the following way: the linear trend for the gap period is calculated both for the time series with the gap and the time series used to fill the gap. Then the deviation from the trend is calculated for the time series used to fill the gap. Scaling factors between the two time series are calculated for the left and right boundary of the gap. They are capped using the same bound as for the extension with lower priority time series (a factor of 3 (1/3)). The final time series to fill the gap is constructed as the sum of the linear trend of the higher priority time series and the scaled deviation from trend of the lower priority time series. The scaling uses a linear interpolation between the scaling at the left and right boundaries. This change affects all countries that have reported only a few years under UNFCCC2017B data, however for most countries the differences are small. Details are presented in the *noteworthy changes* section.
- Changes in extrapolation trend calculations: in some cases the time span to calculate linear trends for the extrapolation starting points have changed.
    - LULUCF, CO$_2$, future extrapolation: FAOSTAT LULUCF data has a change in methodology in 2011 (inclusion of forest degradation and regrowth) leading to abrupt changes in estimates of emissions and removals. To avoid calculating an average over data calculated using different methodologies we shorten the period to calculate the average to 4 years (2011 - 2014). The average is used to extrapolate data to 2015.
    - LULUCF, all gases. The trend used to calculate the starting point for extrapolations to the past is now calculated over 20 years instead of 30 years to avoid the use of different unharmonized data sources in the trend calculation.
    - BP data is only used to amend a single year to energy CO$_2$ time series. We therefore no longer use a trend calculation to determine the starting point for the extrapolation but use the last data point of the higher priority source directly.
- Historical extrapolation for LULUCF, CH$_4$: until v1.1 we used EDGARHYDE data for the extrapolation. However, for some regions the EDGARHYDE data have non-zero emissions only between 1960 and 1985 - 1990 which is inconsistent with other sources. We therefore switched to RCP data which is available on a level of 5 regions. As RCP data is defined starting in 1850 the linear interpolation for 1850 - 1890 is no longer necessary.

### Changes in data sources and preprocessing

#### Input source updates
- CRF data has been updated to the 2017 release with the 2016 release used as backup for missing 2017 data.
    - The last data year is now 2015 for all categories and gases
    - CRF data since 2015 follows the IPCC2006 guidelines. Therefore reported emissions have changed, especially for fugitive emissions and CH$_4$ and $N$_2$O from agriculture and land use. See also @jefferyPRIMAPcrfUNFCCCCRF2018 and @Jeffery2018_PRIMAPcrf_data.
  - CDIAC fossil CO$_2$ data has been updated to the 2017 release, last data year is 2014.
  - BP fossil CO$_2$ data has been updated to the 2017 release, last used data year is 2015.
  - UNFCCC "Detailed Data by party" has been updated to August 2017: several countries are included for the first time with sufficient data to be used in PRIMAP-hist. Some countries have updated and extended data. However, some time series seem to be constructed from data points that were calculated using different methodologies and therefore show large discrepancies. Other data show strong fluctuations or deviate strongly from third party sources. In several cases we excluded data from use in PRIMAP-hist as we could not identify the source of the fluctuations and discrepancies. Details are presented in the *noteworthy changes* section.

#### Changes in preprocessing
- CRF2016 and 2017 data is reported using new tables. The sectors in these tables are similar to but not exactly the IPCC2006 sectors. The new reporting format makes a conversion to IPCC1996 sector definitions used for PRIMAP-hist necessary. Depending on the reporting this is not perfectly possible for all countries. However, this mainly influences category 3 which has very small emissions. For details we refer to @jefferyPRIMAPcrfUNFCCCCRF2018.


### Further bug fixes
- none

### Known problems
- For Mauritius, the first data point for CH$_4$, category 6 (waste) in the UNFCCC2017 dataset is very low compared to the other data points. This influences the final dataset. As the low data point is in line with EDGAR data we do not remove it.
- There is no CH$_4$ and N$_2$O land use data for Egypt, Grenada, Haiti, and Singapore in PRIMAP-hist v1.1. The only available data source is FAO, which has only zero values in its current version and is thus not used for the PRIMAP-hist source.
- The (former) Netherlands Antilles are not included in the country mask used for Houghton (2008) downscaling thus there is no Houghton (2008) based data.
- The country mask used in the downscaling of Houghton (2008) data treats Taiwan as a part of China and thus does not deliver data for Taiwan. As none of the data sources used for PRIMAP-hist has land use data for Taiwan we have no option to downscale Taiwan from China.

### Noteworthy changes
The noteworthy changes are grouped by dataset or processing which induced the change

- CRF (UNFCCC Annex I)
    - The new reporting guidelines introduce changes in emissions estimates for all countries which vary in strength and sectors affected. Countries with smaller changes are grouped while for countries with larger changes or changes that are specific to a single country we explain the changes individually. For a more comprehensive discussion of the CRF2017 data see @jefferyPRIMAPcrfUNFCCCCRF2018.
    - Several countries exhibit changes in several sectors where relative changes are large for some sectors and gases but differences in economy wide GHG emission estimates are small: Canada, Czech Republic, Germany, Denmark, Spain, France, Luxembourg, Netherlands, Norway, New Zealand, Poland, Slovakia, USA.
    - Several countries exhibit changes of emissions estimates which are mainly in the agricultural sector: Greece, Croatia, Hungary, Ireland, Liechtenstein, Lithuania, Latvia, Portugal, Slovenia, Sweden.
    - Australia: Total CH$_4$ emissions are much lower under the IPCC2006 guidelines used for CRF 2017 data than under the 1996 guidelines used for CRF2014 data which is the basis of v1.1. The largest change is in the agricultural sector. N$_2$O emissions are much lower in CRF2017 than in CRF2014 as well.
    - Austria: Total CH$_4$ emissions are higher under the IPCC2006 guidelines used for CRF 2017 data than under the 1996 guidelines. Total CO$_2$ emissions are almost unchanged, however, CAT1 emissions decreased significantly while CAT2 emissions increased. Total N$_2$O emissions are much lower.
    - Belgium: Total CH$_4$ emissions are higher under the IPCC2006 guidelines used for CRF 2017 data than under the 1996 guidelines.
    - Bulgaria: Total CH$_4$ emissions are much lower in 1990 under the IPCC2006 guidelines used for CRF 2017 data than under the 1996 guidelines. This leads to different historical emissions. Total N$_2$O emissions are much lower.
    - Belarus: Total CH$_4$ emissions are higher under the IPCC2006 guidelines used for CRF 2017 data than under the 1996 guidelines. Total N$_2$O emissions are significantly lower.
    - Cyprus: Total CH$_4$ emissions are much lower under the IPCC2006 guidelines used for CRF 2017 data than under the 1996 guidelines, especially for CAT6. This leads to different historical emissions. Total N$_2$O emissions are much lower as well where CAT4 is the main source.
    - Iceland: CH$_4$ from land use drastically increased under IPCC2006 guidelines and significantly increased total emissions.
    - Kazakhstan: Changes due to changed data in the industrial processes sector.
    - Monaco: Energy CO$_2$ is lower in CRF2017 than in CRF2014
    - Malta: Changes due to changed data in several sectors and gases.
    - Russia: Increased emissions mostly due to higher non-CO2 emissions from the energy sector.
    - Turkey: Changes due to changed data mainly in the waste and agricultural sectors.
    - Ukraine: Lower emissions due to changed data in several sectors and gases


- UNFCCC2017B (UNFCCC for Non-Annex I)
    - for several countries UNFCCC data is available which was not available for v1.1.
        - Countries which now use UNFCCC data but show no strong changes in total emissions: Guatemala, Togo.
        - Some countries have newly available UNFCCC data, however, the sector resolution is not sufficient to be used for CO$_2$ in categories 1 and 2: Albania, Egypt (CAT2 only), Chad.
        - Countries with newly available UNFCCC data where PRIMAP-hist total emissions are corrected downward significantly (individual sectors / gases / years can also shown increased emissions): Albania, China (especially energy CO$_2$), Cuba, Ethiopia, India, Kenya, Niue, Saudi Arabia, Thailand.
        - Countries with newly available UNFCCC data where PRIMAP-hist emissions are corrected upward significantly (individual sectors / gases / years can also shown decreased emissions): Morocco, Marshall Islands, Montenegro (post 1990), Malaysia, Saint Vincent and the Grenadines, Lebanon (CAT4).
    - Some countries have extended or modified data
        - Extended and modified data: Brazil (total emissions corrected downward, but individual sectors / gases corrected upward), Mauritius (small changes), Kyrgyzstan (significant differences for most sectors and gases), Uzbekistan (small changes), Uruguay (lower emissions, mainly from CAT4 and CAT6)
        - Extended data: Argentina (recent emissions corrected upward), Bosnia and Herzegovina (recent emissions corrected upward), Peru (no major changes), Singapore (much higher emissions in recent years),
    - We excluded some existing and new data. Some data might be included again in future versions of the PRIMAP-hist dataset if discrepancies to other sources and between years can be understood and the data verified.
        - Belize: single years show emissions with a factor of 20-50 over the other years and EDGAR data for several sectors and gases. Data removed completely.
        - Chile: We exclude the UNFCCC2017B data and only use BUR data as the UNFCCC data contains additional data points which do not fit the BUR data and presumably were generated using a different methodology than used for the BUR data. This impacts emissions estimates for several sectors and gases.
        - Central African Republic: single year with emissions which strongly differ from other years (factor of ~100). Presumably using different methodology and from older National Communication. Remove completely as remaining data only covers a period of 8 years.
        - Dominica: single year with emissions which strongly differ from other years (factor of ~100). Presumably using different methodology and from older National Communication. Remove completely as remaining data only covers a period of 6 years.
        - Ecuador: factor ~100 discrepancies with EDGAR and FAO in CAT4, N$_2$O. Similar discrepancies in other sectors. As several years are affected, we remove data completely. Emissions are changed compared to v1.1.
        - Ethiopia: UN data for CAT1(A4), CH$_4$, N$_2$O seems to contain a mistake as it is inconsistent with the preceding and following years and the figures in the national communication. The tables in the national communication (@ETH2015NC2) contain the presumably erroneous data. We remove 1997 - 2004 for CAT, CH$_4$ and N$_2$O.
        - Jordan: single year with higher (factor 3) emissions in CAT6 (CH$_4$, N$_2$O) influencing the CATM0EL KYOTO GHG results. We remove UNFCCC data completely as only 2 data years remaining.
        - Kenya: CAT4 N$_2$O data is almost 0 in 1994 compared to significant emissions in later years. Potentially using different methodology and from older National Communication. This strongly influences economy wide emissions and is not in line with other sources. We remove 1994 data. This changes emissions compared to v1.1
        - Kiribati: CAT4 N$_2$O data is very high for a few years and not in line with EDGAR and FAO. This strongly affects the CAT0 results. We remove UNFCCC data completely.
        - Kyrgyzstan: HFCs data seems to have a unit error. HFCs data are removed and EDGAR are data are used.
        - Niger: scaling of CDIAC due to UNFCCC data is extreme, especially as based on only two data points. We completely remove UNFCCC data.
        - Paraguay: strong fluctuations for CH$_4$ and N$_2$O data (CAT4 and CAT6) which dominate the KYOTO GHG time series. We remove UNFCCC data completely.
        - Zimbabwe (ZWE): Energy CO$_2$ is much higher than other sources for one of the three available data points. We remove UNFCCC data completely as only 2 years remaining.

- CDIAC2017
    - Four countries have major adjustments of recent emissions:
        - Afghanistan: emissions for energy CO$_2$ have been corrected downward. In the 2016 release, 2013 emissions were above 20Mt while for the 2017 release they are roughly 10Gt. BP data is in line CDIAC and extends the downward trend for 2015. Economy wide Kyoto GHG emissions are corrected downward by about 1/3rd.
        - Botswana: Emissions have strongly increased and are much higher than calculated in PRIMAP-hist v1.1. Consequently 2014 emissions have changed from PRIMAP-hist v1.1 and 2015 emissions have increased further from 2014 emissions (based on BP2017 data).
        - Mongolia: Emissions for energy CO$_2$ have been corrected downward. In the 2016 release, 2013 emissions were above 45Mt while in the 2017 release they are roughly 20Gt. BP data is in line CDIAC and extends the downward trend for 2015. Economy wide Kyoto GHG emissions are corrected downward by about 1/5th.
        - Tonga: Emissions for 2013 are much lower than in CDIAC2016. This has significantly decreased 2013 and 2014 total emissions.
    - CDIAC emissions have changed for several small states, especially small island states, also for historical years. The changes differ in affected years and strength over countries. Some larger countries have been corrected as well. Affected countries are: Anguilla, Antigua and Barbuda, Belize, Cook Islands, Comoros, Cape Verde, Dominican Republic, Fiji, Federated States of Micronesia, Iran, Kiribati, Saint Kitts and Newis, Lesotho, Macao, Nigeria, Palau, People's Democratic Republic of Korea, Singapore, Suriname, Seychelles, Turks and Caicos Islands, Trinidad and Tobago, Samoa, Yemen, Zimbabwe.
    - Additional historical years for Andorra lead to changes in extrapolation with EDGARHYDE data for energy CO$_2$.
    - CDIAC contains data for Tuvalu in the 2017 release. Former releases did not contain data for Tuvalu.

- Processing
    - Gap filling algorithm:
        - Singapore: According to CDIAC data energy CO$_2$ emissions were decreasing from 2011 to 2007. This was not visible in v1.1 as the gap between 2000 and 2010 in UNFCCC data was interpolated linearly and not filled with CDIAC trends as in v1.2.
        - Other countries affected: Armenia, Azerbaijan, Colombia, Costa Rica, Dominican Republic, Peru, Peoples' Democratic Republic of Korea, Uruguay


## v1.1 (March 2017)

The v1.1 release contains mostly bug fixes. To keep the dataset up to date we also included some updated data
sources. The methodology remained unchanged apart from the minor changes described below.

### Changes in PRIMAP-hist source creation
- South Sudan now has individual data for some sectors. For these sectors, South Sudan
  is treated as any other country during the source creation while timeseries for other  sectors and gases are downscaled from Sudan data.
- Sources with scarce data points for several countries (BUR2015, UNFCCC2017) are now
  interpolated before the
  creation of the PRIMAP-hist dataset such that the linear regression used to match
  lower priority data sources can be computed. Before the last data point was used directly.

### Changes in data sources and preprocessing
#### Input source updates
- FAOSTAT data has been updated to the January 2017 version.
    - The last data year is now 2014 for all categories except for forest land emissions where it is 2015.
        However, for the PRIMAP-hist dataset we use the aggregate land use time series which has 2014 as the last
        data point.
    - There are significant changes in historical emissions for several countries.
        - Land use data for several countries is very different from the 2015 version of FAOSTAT data.
        - Manure management CH$_4$ and N$_2$O emissions for a lot of (mostly developed) countries were adjusted down
            by a large margin. This is not a general adjustment though, as some countries' emissions were adjusted
            upward, while others remained unchanged.
        - For some economies in transition, pre-1990 emissions are higher than in the 2015 FAOSTAT data.
- CDIAC fossil CO$_2$ data has been updated to the 2016 release
- BP fossil CO$_2$ data has been updated to the 2016 release
- UNFCCC "Detailed Data by Party" has been updated to January 2017
    - Data has not changed much compared to the version used for PRIMAP-hist v1.0
    - For Kazakhstan, HFCs and PFCs data for the years 1990 and 1991 with very high emissions were removed from the UNFCCC data repository. In consequence Kazakhstan's historical (pre-1992) emissions for HFCs and PFCs are much lower
        in v1.1 than in v1.0.

#### Changes in processing
- FAOSTAT
    - In version 1.0 negative data were removed from the FAOSTAT dataset during processing. This has been fixed.
        It only affected land use CO$_2$. Where data were negative for part of the time series they were replaced by zero
        while time series completely consisting of negative data were discarded such that Houghton data was used.
    - In v1.0 single subcategories were linearly extrapolated during category aggregation such that time series
        for all categories covered the same time frame. When the linear extrpolation lead to emission estimates
        of these subcategories to increase backwards in time, the linear
        regression was replaced with a linear path to zero emissions in the first year with data (1961). In
        v1.1 this has been changed such that in those cases a constant extrapolation is used instead of a
        linear extrapolation to zero.
        This affects emission estimates from "Field burning of agricultural residues" (IPCC1996 category 4F) and
        to a lesser extent subsectors of the "Agricultural soils" sector (IPCC1996 category 4D). CH$_4$ and N$_2$O
        emissions are affected. Only a few countries are affected by the change.
- CDIAC
    - A bug in the downscaling of regions to countries was fixed. This affected Indonesia (though not concerning
        the growth rates used in the PRIMAP-hist dataset, just the absolute values), Timor-Leste, Latvia and
        Estonia (cement only), and Palau prior to 1992.
    - Downscaling of Italy and San Marino as a region to individual countries now uses EDGAR emissions from
        appropriate sectors instead of GDP data.
- UNFCCC
    - A bug in the routine that read the csv files exported from the UNFCCC website lead to omitting the second block in the non-standard csv files. This bug has been fixed.
        Consequently some countries now have one to three additional data points added at the end of the time series.
    - Data for Viet Nam and Peru are now contained in the UNFCCC dataset with enough data to meet our minimum requirements. UNFCCC data for these two countries is therefore included in PRIMAP-hist v1.1.

### Further bug fixes
- In v1.0 a few countries were missing in the downscaled Houghton data. Some countries are
    still not available as they are missing in the country mask used to convert the gridded vegetation data to countries. For details see Section Known problems below.
- In some cases the Composite Source Generator removed the first or last data point of a time series. This bug has been fixed.

#### Known problems
- For Mauritius, the first data point for CH$_4$ for different sectors in the UNFCCC 2017 dataset is very low
    compared to the other data points. This influences the final dataset.
- For Micronesia, the last data point for CH$_4$ and N$_2$O from the agricultural sector (and all subsectors) is very
    low. This influences the final dataset.
- For Saint Kitts and Newis, N$_2$O emissions from the agricultural sector in the last years are much higher than the rest
    of the data. This influences the final dataset.
- There is no CH$_4$ and N$_2$O land use data for Egypt, Grenada, Haiti, and Singapore in PRIMAP-hist v1.1.
    The only available data source is FAO, which has only zero values in its current version and is thus not used
    for the PRIMAP-hist source.
- The (former) Netherlands Antilles are not included in the country mask used for Houghton (2008) downscaling thus there is no Houghton (2008) based data.
- The country mask used in the downscaling of Houghton (2008) data treats Taiwan as a part of China and thus does not deliver data for Taiwan. As none of the data sources used for PRIMAP-hist has land use data for Taiwan we have no option to downscale Taiwan from China.
- Due to the additional year in FAO (2014) some developed countries have very low land use CH$_4$ emissions in
    2014
    compared to the period with CRF data. This will be solved in the next revision of PRIMAP-hist where CRF2015
    and CRF2016 will be used. A number of possible reasons account for the differences between FAO and CRF data, which likely differ between countries. Land-use CH$_4$ emissions are dominantly from biomass burning. The FAO (@FAO2016a) calculate non-CO2 from biomass burning using the tier 1 methodology of IPCC 2006 guidelines (@IPCC2006) and activity data from GFED4 (@Giglio2017). National inventories (CRF2014) are often based on country specific emissions factors and data for burned areas. The national inventories may also exclude natural disturbances and have different definitions than FAO for managed land areas. Land use N$_2$O emissions are subject to similar differences in data.
- UNFCCC data for Ecuador (aggregate sectors and gases) is much higher than third party data, but
    only covers a few years. The resulting time series is thus discontinuous.

### Noteworthy changes
- Aruba: historical CO$_2$ emissions are lower than in v1.0 because CDIAC emissions have been adjusted downward
    for the years prior to 1998.
- Australia, Belize, Botswana, Guinea-Bissau, Namibia, Papua New Guinea, Zimbabwe, Mongolia:
    changes in CH$_4$ and/or N$_2$O emissions due to the change in
    extrapolation of FAO data for subsectors of the agricultural sector.
- Bosnia and Herzegovina: pre-1990 CDIAC data has changed leading to higher pre-1990 CO$_2$ emissions in
    PRIMAP-hist.
- Eritrea: historical CO$_2$ emissions are higher than in v1.0 because CDIAC emissions have been adjusted
    upward for the years prior to 1998.
- Federated States of Micronesia and Saint Helena, Ascension, and Tristan da Cunha: emissions have increased
    due to an increase in FAO agricultural CH$_4$ and N$_2$O emissions.
- India: energy related CO$_2$ is lower starting in 1977 due to changes in CDIAC data.
- Palau, Timor-Leste: higher historical emissions due to the bugfix in CDIAC downscaling.
- Peru: the UNFCCC data that is now used as the first priority source differs from the third party sources used in PRIMAP-histy v1.0.
- San Marino: changes in historical emissions due to the changed key data for downscaling of San Marino from Italy in CDIAC.
- Sudan, South Sudan: the availability of data for South Sudan changed the time series from the previous
    time series which were based on downscaling using population data.
- Vanuatu had zero CO$_2$ emissions before 1960 in PRIMAP-hist v1.0 because CDIAC2015 had zero data for a few years before 1960. Now the data is non-zero as these data points are not contained in CDIAC2016.
- For several countries data for the last two years has changed as additional data points from updated CDIAC, FAOSTAT, UNFCCC, and BP data replace extrapolated data.
- Land use data for the period of 1991 - 2014 has changed for several countries. The first reason is that we now use Houghton data for all years where they are available and not
obtained through extrapolation (see Section 2.4.1 of the data
description paper). The second reason is that the FAO data changed massively.


# References
