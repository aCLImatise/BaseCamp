#!/usr/bin/env cwl-runner

baseCommand:
- FeatureFinderMultiplex
class: CommandLineTool
cwlVersion: v1.0
id: featurefindermultiplex
inputs:
- doc: "*                              LC-MS dataset in either centroid or profile\
    \ mode (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file containing the individual peptide features. (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: ":labels <text>                 Labels used for labelling the samples. If the\
    \ sample is unlabelled (i.e. you want to detect only single peptide features)\
    \ please leave this parameter empty. [...] spec ifies the labels for a single\
    \ sample. For example [][Lys8,Arg10]        ... SILAC [][Lys4,Arg6][Lys8,Arg10]\
    \        ... triple-SILAC [Dimethyl0][Dimethyl6]        ... Dimethyl [Dimethyl0][Dimethyl4][Dimethyl8]\
    \        ... triple Dimethyl [ICPL0][ICPL4][ICPL6][ICPL10]        ... ICPL (default:\
    \ '[][Lys8,Arg10]')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":charge <text>                 Range of charge states in the sample, i.e.\
    \ min charge : max charge. (default: '1:4')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":rt_typical <value>            Typical retention time [s] over which a characteristic\
    \ peptide elutes. (This is not an upper bound. Peptides that elute for longer\
    \ will be reported.) (default: '40.0'  min: '0.0')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":rt_band <value>               The algorithm searches for characteristic isotopic\
    \ peak patterns, spectrum by spectrum. For some low-intensity peptides, an important\
    \ peak might be missing in one spec trum but be present in one of the neighbouring\
    \ ones. The algorithm takes a bundle of neighbouring spectra with width rt_band\
    \ into account. For example with rt_band = 0, all characteristic isotopic peaks\
    \ have to be present in one and the same spectrum. As rt_band increases, the sensitivity\
    \ of the algorithm but also the likelihood of false detections increases. (default:\
    \ '0.0' min: '0.0')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":rt_min <value>                Lower bound for the retention time [s]. (Any\
    \ peptides seen for a shorter time period are not reported.) (default: '2.0' min:\
    \ '0.0')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":mz_tolerance <value>          M/z tolerance for search of peak patterns.\
    \ (default: '6.0' min: '0.0')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":mz_unit <choice>              Unit of the 'mz_tolerance' parameter. (default:\
    \ 'ppm' valid: 'Da', 'ppm')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":intensity_cutoff <value>      Lower bound for the intensity of isotopic peaks.\
    \ (default: '1000.0' min: '0.0')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":peptide_similarity <value>    Two peptides in a multiplet are expected to\
    \ have the same isotopic pattern. This parameter is a lower bound on their similarity.\
    \ (default: '0.5' min: '-1.0' max: '1.0' )"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":averagine_similarity <value>  The isotopic pattern of a peptide should resemble\
    \ the averagine model at this m/z position. This parameter is a lower bound on\
    \ similarity between measured isotopic  pattern and the averagine model. (default:\
    \ '0.4' min: '-1.0' max: '1.0')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":missed_cleavages <number>     Maximum number of missed cleavages due to incomplete\
    \ digestion. (Only relevant if enzymatic cutting site coincides with labelling\
    \ site. For example, Arg/Lys in the  case of trypsin digestion and SILAC labelling.)\
    \ (default: '0' min: '0')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
