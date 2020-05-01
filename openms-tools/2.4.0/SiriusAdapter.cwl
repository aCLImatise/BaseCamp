#!/usr/bin/env cwl-runner

baseCommand:
- SiriusAdapter
class: CommandLineTool
cwlVersion: v1.0
id: siriusadapter
inputs:
- doc: Sirius executable e.g. sirius
  id: executable
  inputBinding:
    prefix: -executable
  type: string
- doc: "*                            MzML Input file (valid formats: 'mzml')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "FeatureXML input with feature and adduct information (valid formats: 'featurexml')"
  id: in_feature_info
  inputBinding:
    prefix: -in_featureinfo
  type: File
- doc: "*                    MzTab Output file for SiriusAdapter results (valid formats:\
    \ 'mzTab')"
  id: out_sirius
  inputBinding:
    prefix: -out_sirius
  type: File
- doc: "MzTab output file for CSI:FingerID, if this parameter is given, SIRIUS will\
    \ search for a molecular structure using CSI:FingerID after determining the sum\
    \ formula (valid  formats: 'mzTab')"
  id: out_finger_id
  inputBinding:
    prefix: -out_fingerid
  type: File
- doc: "Features have to have at least x MassTraces. To use this parameter feature_only\
    \ is neccessary (default: '1' min: '1')"
  id: filter_by_num_mass_traces
  inputBinding:
    prefix: -filter_by_num_masstraces
  type: string
- doc: Uses the feature information from in_featureinfo to reduce the search space
    to only MS2 associated with a feature
  id: feature_only
  inputBinding:
    prefix: -feature_only
  type: boolean
- doc: "Tolerance window for precursor selection (Feature selection in regard to the\
    \ precursor) (default: '0.005')"
  id: precursor_mz_tolerance
  inputBinding:
    prefix: -precursor_mz_tolerance
  type: string
- doc: "Unit of the precursor_mz_tolerance (default: 'Da' valid: 'Da', 'ppm')"
  id: precursor_mz_tolerance_unit
  inputBinding:
    prefix: -precursor_mz_tolerance_unit
  type: string
- doc: "Tolerance window (left and right) for precursor selection [seconds] (default:\
    \ '5')"
  id: precursor_rt_tolerance
  inputBinding:
    prefix: -precursor_rt_tolerance
  type: string
- doc: "Specify the used analysis profile (default: 'qtof' valid: 'qtof', 'orbitrap',\
    \ 'fticr')"
  id: profile
  inputBinding:
    prefix: -profile
  type: string
- doc: "The number of candidates in the SIRIUS output. (default: '5')"
  id: candidates
  inputBinding:
    prefix: -candidates
  type: string
- doc: "Search formulas in given database (default: 'all' valid: 'all', 'chebi', 'custom',\
    \ 'kegg', 'bio', 'natural products', 'pubmed', 'hmdb', 'biocyc', 'hsdb', 'knapsack',\
    \  'biological', 'zinc bio', 'gnps', 'pubchem', 'mesh', 'maconda')"
  id: database
  inputBinding:
    prefix: -database
  type: string
- doc: "Median intensity of noise peaks (default: '0')"
  id: noise
  inputBinding:
    prefix: -noise
  type: string
- doc: "Allowed ppm for decomposing masses (default: '10')"
  id: ppm_max
  inputBinding:
    prefix: -ppm_max
  type: string
- doc: "How to handle isotope pattern data. Use 'score' to use them for ranking or\
    \ 'filter' if you just want to remove candidates with bad isotope pattern. With\
    \ 'both' you can  use isotopes for filtering and scoring. Use 'omit' to ignore\
    \ isotope pattern. (default: 'both' valid: 'score', 'filter', 'both', 'omit')"
  id: isotope
  inputBinding:
    prefix: -isotope
  type: string
- doc: "The allowed elements. Write CHNOPSCl to allow the elements C, H, N, O, P,\
    \ S and Cl. Add numbers in brackets to restrict the maximal allowed occurrence\
    \ of these elements: CHNOP[5]S[8]Cl[1]. (default: 'CHNOP[5]S[8]Cl[1]')"
  id: elements
  inputBinding:
    prefix: -elements
  type: string
- doc: "Time out in seconds per compound. To disable the timeout set the value to\
    \ 0 (default: '10')"
  id: compound_timeout
  inputBinding:
    prefix: -compound_timeout
  type: string
- doc: "Time out in seconds per fragmentation tree computation. (default: '0')"
  id: tree_timeout
  inputBinding:
    prefix: -tree_timeout
  type: string
- doc: "The number of top hits for each compound written to the CSI:FingerID output\
    \ (default: '10')"
  id: top_n_hits
  inputBinding:
    prefix: -top_n_hits
  type: string
- doc: Use this option if the charge of your compounds is unknown and you do not want
    to assume [M+H]+ as default. With the auto charge option SIRIUS will not care
    about charge s and allow arbitrary adducts for the precursor peak.
  id: auto_charge
  inputBinding:
    prefix: -auto_charge
  type: boolean
- doc: Print molecular formulas and node labels with the ion formula instead of the
    neutral formula
  id: ion_tree
  inputBinding:
    prefix: -ion_tree
  type: boolean
- doc: If this option is set, SIRIUS will not recalibrate the spectrum during the
    analysis.
  id: no_recalibration
  inputBinding:
    prefix: -no_recalibration
  type: boolean
- doc: SIRIUS uses the fragmentation spectrum with the most intense precursor peak
    (for each spectrum)
  id: most_intense_ms2
  inputBinding:
    prefix: -most_intense_ms2
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
