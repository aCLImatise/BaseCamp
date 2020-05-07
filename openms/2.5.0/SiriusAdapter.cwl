class: CommandLineTool
id: SiriusAdapter.cwl
inputs:
- id: executable
  doc: The Sirius executable. Provide a full or relative path, or make sure it can
    be found in your PATH environment.
  type: string
  inputBinding:
    prefix: -executable
- id: in
  doc: "*                                          MzML Input file (valid formats:\
    \ 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_feature_info
  doc: "FeatureXML input with feature and adduct information (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in_featureinfo
- id: out_sirius
  doc: "MzTab Output file for SiriusAdapter results (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out_sirius
- id: out_finger_id
  doc: "MzTab output file for CSI:FingerID, if this parameter is given, SIRIUS will\
    \ search for a molecular structure using CSI:FingerID after determining the sum\
    \  formula (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out_fingerid
- id: out_ms
  doc: "Internal SIRIUS .ms format after OpenMS preprocessing (valid formats: 'ms')"
  type: File
  inputBinding:
    prefix: -out_ms
- id: out_workspace_directory
  doc: Output directory for SIRIUS workspace
  type: Directory
  inputBinding:
    prefix: -out_workspace_directory
- id: preprocessing
  doc: ":filter_by_num_masstraces <number>     Features have to have at least x MassTraces.\
    \ To use this parameter feature_only is neccessary (default: '1' min: '1')"
  type: boolean
  inputBinding:
    prefix: -preprocessing
- id: preprocessing
  doc: ":precursor_mz_tolerance <value>        Tolerance window for precursor selection\
    \ (Feature selection in regard to the precursor) (default: '0.005')"
  type: boolean
  inputBinding:
    prefix: -preprocessing
- id: preprocessing
  doc: ":precursor_mz_tolerance_unit <choice>  Unit of the precursor_mz_tolerance\
    \ (default: 'Da' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -preprocessing
- id: preprocessing
  doc: ":precursor_rt_tolerance <number>       Tolerance window (left and right) for\
    \ precursor selection [seconds] (default: '5')"
  type: boolean
  inputBinding:
    prefix: -preprocessing
- id: preprocessing
  doc: :feature_only                          Uses the feature information from in_featureinfo
    to reduce the search space to MS2 associated with a feature.
  type: boolean
  inputBinding:
    prefix: -preprocessing
- id: sirius
  doc: ":profile <choice>                             Specify the used analysis profile\
    \ (default: 'qtof' valid: 'qtof', 'orbitrap', 'fticr')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":candidates <number>                          The number of candidates in\
    \ the SIRIUS output. (default: '5' min: '1')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":database <choice>                            Search formulas in given database\
    \ (default: 'all' valid: 'all', 'chebi', 'custom', 'kegg', 'bio', 'natural products',\
    \ 'pubmed', 'hmdb', 'biocyc', 'hsdb',  'knapsack', 'biological', 'zinc bio', 'gnps',\
    \ 'pubchem', 'mesh', 'maconda')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":noise <number>                               Median intensity of noise peaks\
    \ (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":ppm_max <number>                             Allowed ppm for decomposing\
    \ masses (default: '10')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":isotope <choice>                             How to handle isotope pattern\
    \ data. Use 'score' to use them for ranking or 'filter' if you just want to remove\
    \ candidates with bad isotope pattern. With  'both' you can use isotopes for filtering\
    \ and scoring. Use 'omit' to ignore isotope pattern. (default: 'both' valid: 'score',\
    \ 'filter', 'both', 'omit')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":elements <text>                              The allowed elements. Write\
    \ CHNOPSCl to allow the elements C, H, N, O, P, S and Cl. Add numbers in brackets\
    \ to restrict the maximal allowed occurrence of  these elements: CHNOP[5]S[8]Cl[1].\
    \ (default: 'CHNOP[5]S[8]Cl[1]')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":compound_timeout <number>                    Time out in seconds per compound.\
    \ To disable the timeout set the value to 0 (default: '10' min: '0')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":tree_timeout <number>                        Time out in seconds per fragmentation\
    \ tree computation. (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":top_n_hits <number>                          The number of top hits for each\
    \ compound written to the CSI:FingerID output (default: '10' min: '1')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: ":cores <number>                               The number of cores SIRIUS is\
    \ allowed to use on the system (default: '1' min: '1')"
  type: boolean
  inputBinding:
    prefix: -sirius
- id: sirius
  doc: :auto_charge                                  Use this option if the charge
    of your compounds is unknown and you do not want to assume [M+H]+ as default.
    With the auto charge option SIRIUS will not  care about charges and allow arbitrary
    adducts for the precursor peak.
  type: boolean
  inputBinding:
    prefix: -sirius
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
