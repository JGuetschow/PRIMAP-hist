# v1.2 (December 2017)

The v1.2 release uses new input data. CRF data have been updated to the 2017 and 2016 releases, CDIAC and BP data have been updated to their 2017 releases and the UNFCCC Non-Annex I data have been updated to the status of August 2017.

## Changes in PRIMAP-hist source creation
- The method to fill gaps in time series has been changed. In v1.1 gaps in higher priority time series were linearly interpolated to enable the calculation of trends for the combination of time-series from different data sources even if the time-series contained only few data points. This method can not be used any more as we now include UNFCCC data for China which has data for only three years. Linear interpolation overestimates emissions in the late 1990s where the Asian financial crisis lead to declining emissions (with a steep increase after the crisis). In v1.2 gaps are filled with data from lower priority time series (where available) in the following way: the linear trend for the gap period is calculated both for the time series with the gap and the time series used to fill the gap. Then the deviation from the trend is calculated for the time series used to fill the gap. Scaling factors between the two time series are calculated for the left and right boundary of the gap. They are capped using the same bound as for the extension with lower priority time series (a factor of 3 (1/3)). The final time series to fill the gap is constructed as the sum of the linear trend of the higher priority time series and the scaled deviation from trend of the lower priority time series. The scaling uses a linear interpolation between the scaling at the left and right boundaries. This change affects all countries that have reported only a few years under UNFCCC2017B data, however for most countries the differences are small. Details are presented in the *noteworthy changes* section.
- Changes in extrapolation trend calculations: in some cases the time span to calculate linear trends for the extrapolation starting points have changed.
    - LULUCF, CO$_2$, future extrapolation: FAOSTAT LULUCF data has a change in methodology in 2011 (inclusion of forest degradation and regrowth) leading to abrupt changes in estimates of emissions and removals. To avoid calculating an average over data calculated using different methodologies we shorten the period to calculate the average to 4 years (2011 - 2014). The average is used to extrapolate data to 2015.
    - LULUCF, all gases. The trend used to calculate the starting point for extrapolations to the past is now calculated over 20 years instead of 30 years to avoid the use of different unharmonized data sources in the trend calculation.
    - BP data is only used to amend a single year to energy CO$_2$ time series. We therefore no longer use a trend calculation to determine the starting point for the extrapolation but use the last data point of the higher priority source directly.
- Historical extrapolation for LULUCF, CH$_4$: until v1.1 we used EDGARHYDE data for the extrapolation. However, for some regions the EDGARHYDE data have non-zero emissions only between 1960 and 1985 - 1990 which is inconsistent with other sources. We therefore switched to RCP data which is available on a level of 5 regions. As RCP data is defined starting in 1850 the linear interpolation for 1850 - 1890 is no longer necessary.

## Changes in data sources and preprocessing

### Input source updates
- CRF data has been updated to the 2017 release with the 2016 release used as backup for missing 2017 data.
    - The last data year is now 2015 for all categories and gases
    - CRF data since 2015 follows the IPCC2006 guidelines. Therefore reported emissions have changed, especially for fugitive emissions and CH$_4$ and $N$_2$O from agriculture and land use. See also @Jeffery2018_PRIMAPcrf and @Jeffery2018_PRIMAPcrf_data.
  - CDIAC fossil CO$_2$ data has been updated to the 2017 release, last data year is 2014.
  - BP fossil CO$_2$ data has been updated to the 2017 release, last used data year is 2015.
  - UNFCCC detailed by party data has been updated to August 2017: several countries are included for the first time with sufficient data to be used in PRIMAP-hist. Some countries have updated and extended data. However, some time-series seem to be constructed from data-points that were calculated using different methodologies and therefore show large discrepancies. Other data show strong fluctuations or deviate strongly from third party sources. In several cases we excluded data from use in PRIMAP-hist as we could not identify the source of the fluctuations and discrepancies. Details are presented in the *noteworthy changes* section.

### Changes in preprocessing
- CRF2016 and 2017 data is reported using new tables. The sectors in these tables are similar to but not exactly the IPCC2006 sectors. The new reporting format makes a conversion to IPCC1996 sector definitions used for PRIMAP-hist necessary. Depending on the reporting this is not perfectly possible for all countries. However, this mainly influences category 3 which has very small emissions. For details we refer to @Jeffery2018_PRIMAPcrf.


## Further bug fixes
- none

## Known problems
- For Mauritius, the first data point for CH$_4$, category 6 (waste) in the UNFCCC2017 dataset is very low compared to the other data points. This influences the final dataset. As the low data point is in line with EDGAR data we do not remove it.
- There is no CH$_4$ and N$_2$O land use data for Egypt, Grenada, Haiti, and Singapore in PRIMAP-hist v1.1. The only available data source is FAO, which has only zero values in its current version and is thus not used for the PRIMAP-hist source.
- The (former) Netherlands Antilles are not included in the country mask used for Houghton (2008) downscaling thus there is no Houghton (2008) based data.
- The country mask used in the downscaling of Houghton (2008) data treats Taiwan as a part of China and thus does not deliver data for Taiwan. As none of the data sources used for PRIMAP-hist has land use data for Taiwan we have no option to downscale Taiwan from China.

## Noteworthy changes
The noteworthy changes are grouped by dataset or processing which induced the change

- CRF (UNFCCC Annex I)
    - The new reporting guidelines introduce changes in emissions estimates for all countries which vary in strength and sectors affected. Countries with smaller changes are grouped while for countries with larger changes or changes that are specific to a single country we explain the changes individually. For a more comprehensive discussion of the CRF2017 data see @Jeffery2018_PRIMAPcrf.
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
        - Paraguay: strong fluctuations for CH$_4$ and N$_2$O data (CAT4 and CAT6) which dominate the KYOTO GHG time-series. We remove UNFCCC data completely.
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


# v1.1 (January 2017)

The v1.1 release is mostly to fix some bugs. To keep the dataset up to date we also included some updated data
sources. The methodology remained unchanged apart from the minor changes described below.

## Changes in PRIMAP-hist source creation
-   South Sudan now has individual data for some sectors. For these sectors South Sudan is treated as any other
    country during the source creation while timeseries for other sectors and gases are downscaled from Sudan
    data.
-   Sources with scarce data points for several countries (BUR2015, UNFCCC2017) are now interpolated before the
    creation of the PRIMAP-hist dataset such that the linear regression used to match lower priority data sources
    can be computed.

## Changes in data sources and preprocessing
### Input source updates
-   FAOSTAT data has been updated to the January 2017 version.
    -   The last data year is now 2014 for all categories except for forest land emissions where it is 2015.
        However, for the PRIMAP-hist dataset we use the aggregate land use time series which has 2014 as the last
        data point.
    -   There are significant changes in historical emissions for several countries.
        -   Land use data for several countries is very different from the 2015 version of FAOSTAT data.
        -   Manure management CH4 and N2O emissions for a lof of (mostly developed) countries were adjusted down
            by a large margin. This is not a general adjustment though, as some countries' emissions were adjusted
            upwards, while others remained unchanged.
        -   For some economies in transition pre 1990 emissions are higher than in the 2015 FAOSTAT data.
-   CDIAC fossil CO2 data has been updated to the 2016 release
-   BP fossil CO2 data has been updated to the 2016 release
-   UNFCCC detailed by party data has been updated to January 2017
    -   Data has not changed much compared to the version used for PRIMAP-hist v1.0
    -   For Kazakhstan HFCs and PFCs data years 1990 and 1991 showing very high emissions was removed from the
        UNFCCC data repository. In consequence Kazakhstan's Historical emissions for HFCs and PFCs are much lower
        in v1.1 than in v1.0.

### Changes in processing
-   FAOSTAT
    -   In version 1.0 negative data was removed from the FAOSTAT dataset during processing. This has been fixed.
        It only affected land use CO2. Where data was negative for part of the time series it was replaced by zero
        while time series completely consisting of negative data were discarded such that Houghton data was used.
    -   During category aggregation single subcategories were linearly extrapolated. For some countries this lead
        to emission estimates of these subcategories to increase in the past. In PRIMAP-hist v1.0 the linear
        regression was replaced with a linear path to zero emissions in the first year with data (1961). This has
        been changed such that in those cases a constant extrapolation is used instead of a linear extrapolation
        to zero.
        This affects emission estimates from "Field burning of agricultural residues" (IPCC1996 category 4F) and
        to a lesser extend subsectors of the "Agricultural soils" sector (IPCC1996 category 4D). CH4 and N2O
        emissions are affected. Only a few countries aree affected by the change.
-   CDIAC
    -   A bug in downscaling of regions to countries was fixed. This affected Indonesia (though not concerning
        the growth rates used in the PRIMAP-hist dataset, just the absolute values), Timor-Leste, Latvia and
        Estonia (cement only), and Palau prior to 1992.
    -   Downscaling of Italy and San Marino as a region to individual countries now uses EDGAR emissions from
        appropriate sectors instead of GDP data.
-   UNFCCC
    -   A bug in the routine that read the csv files exported from the UNFCCC website lead to omitting the
        second row in csv files with a line break in the individual time-series. This bug has been fixed.
        Consequently some countries now have one to three additional data points.
    -   Data for Viet Nam and Peru are now contained in the UNFCCC dataset with enough data to meet our minimum
        requirements

## Further bug fixes
-   In v1.0 A few countries were missing in the downscaled Houghton data where possible. Soem countries are
    still not available as they are missing in the country mask. See section known problems below.
-   In some cases the csg removed the first / last data point of a time series. This bug has been fixed.

## known problems
-   For Mauritius, the first data point for CH4 for different sectors in the UNFCCC 2017 dataset is very low
    compared to the other data points. This influences the final dataset.
-   For Micronesia, the last data point for CH4 and N2O from the agricultural sector (and all subsectors) is very
    low. This influences the final dataset.
-   For Saint Kitts and Newis, the last years for N2O from the agricultural sector are much higher than the rest
    of the data. This influences the final dataset.
-   There is no CH4 and N2O land use data for Egypt, Grenada, Haiti, and Singapore in PRIMAP-hist v1.1.
    The only available data source is FAO, which has only zero values in its current version and is thus not used
    for the PRIMAP-hist source.
-   The (former) Netherlands Antilles are not included in the country mask used for Houghton (2008) downscaling
    thus there is no Houghton (2008) based data.
-   The country mask used in the downscaling of Houghton
    (2008) data treats Taiwan as a part of China and thus does not deliver data for Taiwan. As there is not
    a single data source which has land use data for Taiwan we have no option downscale Taiwan from China.
-   Due to the additional year in FAO (2014) some developed countries have very low land use CH4 emissions in
    2014
    compared to the period with CRF data. This will be solved in the next revision of PRIMAP-hist where CRF2015
    and CRF2016 will be used. In general CRF and FAO data are completely inconsistent for land use CH4 emissions.
-   Country reported data for Ecuador (aggregate sectors and gases) is much higher than third party data, but
    only covers a few years. The resulting time series thus is discontinuous.

## Major changes
-   Aruba: historical CO2 emissions are lower than in v1.0 because CDIAC emissions have been adjusted downwards
    for the years prior to 1998.
-   Australia, Belize, Botswana, Guinea-Bissau, Namibia, Papua New Guinea, Zimbabwe, Mongolia:
    changes in CH4 and / or N2O emissions due to the change in
    extrapolation of FAO data for subsectors of the agricultural sector.
-   Bosnia and Herzegovina: pre-1990 CDIAC data has changed leading to higher per-1990 CO2 emissions in
    PRIMAP-hist
-   Eritrea: historical CO2 emissions are higher than in v1.0 because CDIAC emissions have been adjusted
    upwards for the years prior to 1998.
-   Federated States of Micronesia and Saint Helena, Ascension, and Tristan da Cunha: emissions have increased
    due to an increase in FAO agricultural CH4 and N2O emissions.
-   India: energy related CO2 is lower starting in 1977 due to changes in CDIAC data.
-   Palau, Timor-Leste: higher historical emissions due to the bugfix in CDIAC downscaling
-   Peru: UNFCCC data
-   San Marino: changes in historical emissions due to the changed key data for downscaling of San Marino from
    Italy in CDIAC.
-   Sudan, South Sudan: the availability of data for South Sudan changed the time series from the previous
    time series which were based on downscaling using population data.
-   Vanuatu had zero CO2 emissions before 1960. Now the data is non-zero.
-   For several countries data for the last two years has changed as additional data points replace
    extrapolated data.
-   Land use data for the period of 1991 - 2014 has changed for several countries. The first reason is that we
    now use Houghton data where available (and not estimated). The second reason is that the FAO data changed
    massively.
