# Source

[Link](https://www.highwaysafetymanual.org/Pages/support_answers.aspx#87)

# Notes

## Definitions

A **Crash Modification Factor** (CMF) is a value that quantifies the expected change in crash frequency at a site as a result of implementing a specific countermeasure.

**Countermeasure:** Countermeasures can also be called “treatments” or “safety treatments”. Traffic signals, bulbouts, roundabouts, etc. 

## Mathematical definition

$$
\text{CMF} = \frac{\text{Expected crash frequency with treatment}}{\text{Expected crash frequency without treatment}}
$$

From this, a CMF above 1 is expected to increase crash frequency. A CMF below 1 is expected to reduce crash frequency. CMF of 1 indicates no expected change. Lower bound of 0. 

## Crash modification function

CMFs can be calculated for specific sites with specific characteristics. This is called a **Crash modification function** which calculates the **crash modification factor** given certain parameters. 

## Use cases

CMFs can be used to:

- Compare safety gains across traffic measures.
- Compare safety gains across locations.
- Check reasonableness by comparing against existing CMFs.
- Check validity of assumptions in cost-benefit analysis.

This can even be used to compare safety gains given cost. Like, for example, the CMF per dollar. 

## Standard error

CMFs, being randon variables, have standard error. This is documented in the HSM. 

## CMF per type of crash

A CMF may be different across different kinds of accidents. Like, a signal may show a reduction in right-turn accidents (CMF < 1) but an increase in read-endings (CMF > 1). 

So correctly using CMFs depends on the type of accidents that are relevant to the given situation. 

## Multiple treatments

Common practice is to multiply the two treatment CMFs together. So for a project with a bulbout and a light, you would combine the two. 

**WARNING:** This statement assumes the treatments are at the same location with the same conditions. 

# Additional info

An entire database of CMFs can be found from the federal department of transportation. Complete with a data dictionary and information on thousands of traffic measures accounting for a variety of different situations.

[link](https://cmfclearinghouse.fhwa.dot.gov/cmf_data.php)

# CMF Digging

Here I will compile some of my initial findings on CMFs that may/may not be relevant to this project. 

### Countermeasure: Install pedestrian crossing (signed and marked with curb ramps and extensions)

- [link 1](https://cmfclearinghouse.fhwa.dot.gov/study_detail.php?stid=73)
- [link 2](https://cmfclearinghouse.fhwa.dot.gov/detail.php?facid=1786)
- Countemeasure ID: 1786
- Crash modification factor: 0.63
- Crash reduction factor: 1 - 0.63 = 0.37

This indicates that this countermeasure, which seems to be the closest to the bulbout/curb extension category, reduces pedestrian related accidents by 37%. 

**QUALITY WARNING:** 

> This CMF cannot be rated in the Clearinghouse because it appears in the 1st Edition of the Highway Safety Manual without an adjusted standard error.

### Idea: Use a possible lane reduction CMF as a proxy for what the curb extensions do anyway?

Doesn't seem feasible. There don't actually seem to be any CMFs for lane reduction at all, and certainly none within our situation. 

### Countermeasure: Install a traffic signal

|Crash Type|CMF Value|Std error|Link|
|---|---|---|---|
|All|0.56|0.03|[CMID 325](https://cmfclearinghouse.fhwa.dot.gov/detail.php?facid=325)|
|Rear ends|1.58|0.17|[CMID 328](https://cmfclearinghouse.fhwa.dot.gov/detail.php?facid=328)
|Left turn|0.4|0.06|[CMID 327](https://cmfclearinghouse.fhwa.dot.gov/detail.php?facid=327)