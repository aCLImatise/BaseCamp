class: CommandLineTool
id: SiriusAdapter.cwl
inputs:
- id: executable
  doc: Sirius executable e.g. sirius
  type: string
  inputBinding:
    prefix: -executable
- id: in
  doc: "*                            MzML Input file (valid formats: 'mzml')"
  type: File
  inputBinding:
    prefix: -in
- id: in_feature_info
  doc: "FeatureXML input with feature and adduct information (valid formats: 'featurexml')"
  type: File
  inputBinding:
    prefix: -in_featureinfo
- id: out_sirius
  doc: "*                    MzTab Output file for SiriusAdapter results (valid formats:\
    \ 'mzTab')"
  type: File
  inputBinding:
    prefix: -out_sirius
- id: out_finger_id
  doc: "MzTab output file for CSI:FingerID, if this parameter is given, SIRIUS will\
    \ search for a molecular structure using CSI:FingerID after determining the sum\
    \ formula (valid  formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out_fingerid
- id: filter_by_num_mass_traces
  doc: "Features have to have at least x MassTraces. To use this parameter feature_only\
    \ is neccessary (default: '1' min: '1')"
  type: string
  inputBinding:
    prefix: -filter_by_num_masstraces
- id: feature_only
  doc: Uses the feature information from in_featureinfo to reduce the search space
    to only MS2 associated with a feature
  type: boolean
  inputBinding:
    prefix: -feature_only
- id: precursor_mz_tolerance
  doc: "Tolerance window for precursor selection (Feature selection in regard to the\
    \ precursor) (default: '0.005')"
  type: string
  inputBinding:
    prefix: -precursor_mz_tolerance
- id: precursor_mz_tolerance_unit
  doc: "Unit of the precursor_mz_tolerance (default: 'Da' valid: 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -precursor_mz_tolerance_unit
- id: precursor_rt_tolerance
  doc: "Tolerance window (left and right) for precursor selection [seconds] (default:\
    \ '5')"
  type: string
  inputBinding:
    prefix: -precursor_rt_tolerance
- id: profile
  doc: "Specify the used analysis profile (default: 'qtof' valid: 'qtof', 'orbitrap',\
    \ 'fticr')"
  type: string
  inputBinding:
    prefix: -profile
- id: candidates
  doc: "The number of candidates in the SIRIUS output. (default: '5')"
  type: string
  inputBinding:
    prefix: -candidates
- id: database
  doc: "Search formulas in given database (default: 'all' valid: 'all', 'chebi', 'custom',\
    \ 'kegg', 'bio', 'natural products', 'pubmed', 'hmdb', 'biocyc', 'hsdb', 'knapsack',\
    \  'biological', 'zinc bio', 'gnps', 'pubchem', 'mesh', 'maconda')"
  type: string
  inputBinding:
    prefix: -database
- id: noise
  doc: "Median intensity of noise peaks (default: '0')"
  type: string
  inputBinding:
    prefix: -noise
- id: ppm_max
  doc: "Allowed ppm for decomposing masses (default: '10')"
  type: string
  inputBinding:
    prefix: -ppm_max
- id: isotope
  doc: "How to handle isotope pattern data. Use 'score' to use them for ranking or\
    \ 'filter' if you just want to remove candidates with bad isotope pattern. With\
    \ 'both' you can  use isotopes for filtering and scoring. Use 'omit' to ignore\
    \ isotope pattern. (default: 'both' valid: 'score', 'filter', 'both', 'omit')"
  type: string
  inputBinding:
    prefix: -isotope
- id: elements
  doc: "The allowed elements. Write CHNOPSCl to allow the elements C, H, N, O, P,\
    \ S and Cl. Add numbers in brackets to restrict the maximal allowed occurrence\
    \ of these elements: CHNOP[5]S[8]Cl[1]. (default: 'CHNOP[5]S[8]Cl[1]')"
  type: string
  inputBinding:
    prefix: -elements
- id: compound_timeout
  doc: "Time out in seconds per compound. To disable the timeout set the value to\
    \ 0 (default: '10')"
  type: string
  inputBinding:
    prefix: -compound_timeout
- id: tree_timeout
  doc: "Time out in seconds per fragmentation tree computation. (default: '0')"
  type: string
  inputBinding:
    prefix: -tree_timeout
- id: top_n_hits
  doc: "The number of top hits for each compound written to the CSI:FingerID output\
    \ (default: '10')"
  type: string
  inputBinding:
    prefix: -top_n_hits
- id: auto_charge
  doc: Use this option if the charge of your compounds is unknown and you do not want
    to assume [M+H]+ as default. With the auto charge option SIRIUS will not care
    about charge s and allow arbitrary adducts for the precursor peak.
  type: boolean
  inputBinding:
    prefix: -auto_charge
- id: ion_tree
  doc: Print molecular formulas and node labels with the ion formula instead of the
    neutral formula
  type: boolean
  inputBinding:
    prefix: -ion_tree
- id: no_recalibration
  doc: If this option is set, SIRIUS will not recalibrate the spectrum during the
    analysis.
  type: boolean
  inputBinding:
    prefix: -no_recalibration
- id: most_intense_ms2
  doc: SIRIUS uses the fragmentation spectrum with the most intense precursor peak
    (for each spectrum)
  type: boolean
  inputBinding:
    prefix: -most_intense_ms2
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- SiriusAdapter
