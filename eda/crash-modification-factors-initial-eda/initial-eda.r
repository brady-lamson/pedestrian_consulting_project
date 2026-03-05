library(dplyr)
df <- readr::read_csv("data/crash-modification-factors/cmfclearinghouse.csv.gz")

readr::write_csv(df, "cmfclearninghouse.csv.gz")

# df %>% View()

df <- df %>%
    select(
        crfid,
        cmid,
        cmName,
        cmDesc,
        cmCostRange,
        catname,
        subcatname,
        qualRating,
        priorCondition,
        crfactor,
        crfunction,
        accModFactor,
        accModFunction,
        adjStanErrorCrf,
        unAdjStanErrorCrf,
        adjStanErrorAmf,
        unAdjStanErrorAmf,
        intersectionRelated,
        trafVolUnit,
        trafficControl,
        minTrafficVol,
        maxTrafficVol,
        streetType,
        bai_7,
        bai_8,
        bai_9,
        bai_10,
        bai_19,
        bai_20
    ) %>%
    mutate("cmname_cleaned" = stringr::str_to_lower(cmName))

cmfs_of_interest <- df %>%
    filter(
        # stringr::str_detect(cmname_cleaned, "signal|pedestrian|crosswalk|curb|extension|unsignalized|intersection") &
        # !stringr::str_detect(cmname_cleaned, "icws|cfi|dare|rcut|riro|mut|twltl|roundabout|centerline|additional")
    ) %>%
    select(cmname_cleaned) %>%
    distinct() %>%
    pull()

# cmfs_of_interest <- c(
#     "convert signalized intersection to modern roundabout",                                                                           
#     "convert unsignalized intersection to roundabout",                                                                                
#     "convert intersection with minor-road stop control to modern roundabout",        
#     "replacement of traditional intersection with roundabout with cycle lanes",                                                       
#     "replacement of traditional intersection with roundabout with separated cycle path",                                              
#     "replacement of traditional intersection with roundabout with a grade separated cycle path",  
#     "convert all-way, stop-controlled intersection to roundabout",   
#     "convert intersection to roundabout",  
#     "install pedestrian crossing (signed and marked with curb ramps and extensions)", 
#     "install two-way stop controlled intersections at uncontrolled intersections",
#     "install pedestrian signing",
#     "install pedestrian signal"
# )

# df %>% View()

df %>%
    filter(cmname_cleaned %in% cmfs_of_interest) %>%
    View()




