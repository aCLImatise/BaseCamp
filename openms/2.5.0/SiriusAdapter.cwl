#!/usr/bin/env cwl-runner

baseCommand:
- SiriusAdapter
class: CommandLineTool
cwlVersion: v1.0
id: siriusadapter
inputs:
- doc: The Sirius executable. Provide a full or relative path, or make sure it can
    be found in your PATH environment.
  id: executable
  inputBinding:
    prefix: -executable
  type: string
- doc: "*                                          MzML Input file (valid formats:\
    \ 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "FeatureXML input with feature and adduct information (valid formats: 'featureXML')"
  id: in_feature_info
  inputBinding:
    prefix: -in_featureinfo
  type: File
- doc: "MzTab Output file for SiriusAdapter results (valid formats: 'mzTab')"
  id: out_sirius
  inputBinding:
    prefix: -out_sirius
  type: File
- doc: "MzTab output file for CSI:FingerID, if this parameter is given, SIRIUS will\
    \ search for a molecular structure using CSI:FingerID after determining the sum\
    \  formula (valid formats: 'mzTab')"
  id: out_finger_id
  inputBinding:
    prefix: -out_fingerid
  type: File
- doc: "Internal SIRIUS .ms format after OpenMS preprocessing (valid formats: 'ms')"
  id: out_ms
  inputBinding:
    prefix: -out_ms
  type: File
- doc: Output directory for SIRIUS workspace
  id: out_workspace_directory
  inputBinding:
    prefix: -out_workspace_directory
  type: Directory
- doc: ":filter_by_num_masstraces <number>     Features have to have at least x MassTraces.\
    \ To use this parameter feature_only is neccessary (default: '1' min: '1')"
  id: preprocessing
  inputBinding:
    prefix: -preprocessing
  type: boolean
- doc: ":precursor_mz_tolerance <value>        Tolerance window for precursor selection\
    \ (Feature selection in regard to the precursor) (default: '0.005')"
  id: preprocessing
  inputBinding:
    prefix: -preprocessing
  type: boolean
- doc: ":precursor_mz_tolerance_unit <choice>  Unit of the precursor_mz_tolerance\
    \ (default: 'Da' valid: 'Da', 'ppm')"
  id: preprocessing
  inputBinding:
    prefix: -preprocessing
  type: boolean
- doc: ":precursor_rt_tolerance <number>       Tolerance window (left and right) for\
    \ precursor selection [seconds] (default: '5')"
  id: preprocessing
  inputBinding:
    prefix: -preprocessing
  type: boolean
- doc: :feature_only                          Uses the feature information from in_featureinfo
    to reduce the search space to MS2 associated with a feature.
  id: preprocessing
  inputBinding:
    prefix: -preprocessing
  type: boolean
- doc: ":profile <choice>                             Specify the used analysis profile\
    \ (default: 'qtof' valid: 'qtof', 'orbitrap', 'fticr')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":candidates <number>                          The number of candidates in\
    \ the SIRIUS output. (default: '5' min: '1')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":database <choice>                            Search formulas in given database\
    \ (default: 'all' valid: 'all', 'chebi', 'custom', 'kegg', 'bio', 'natural products',\
    \ 'pubmed', 'hmdb', 'biocyc', 'hsdb',  'knapsack', 'biological', 'zinc bio', 'gnps',\
    \ 'pubchem', 'mesh', 'maconda')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":noise <number>                               Median intensity of noise peaks\
    \ (default: '0' min: '0')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":ppm_max <number>                             Allowed ppm for decomposing\
    \ masses (default: '10')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":isotope <choice>                             How to handle isotope pattern\
    \ data. Use 'score' to use them for ranking or 'filter' if you just want to remove\
    \ candidates with bad isotope pattern. With  'both' you can use isotopes for filtering\
    \ and scoring. Use 'omit' to ignore isotope pattern. (default: 'both' valid: 'score',\
    \ 'filter', 'both', 'omit')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":elements <text>                              The allowed elements. Write\
    \ CHNOPSCl to allow the elements C, H, N, O, P, S and Cl. Add numbers in brackets\
    \ to restrict the maximal allowed occurrence of  these elements: CHNOP[5]S[8]Cl[1].\
    \ (default: 'CHNOP[5]S[8]Cl[1]')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":compound_timeout <number>                    Time out in seconds per compound.\
    \ To disable the timeout set the value to 0 (default: '10' min: '0')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":tree_timeout <number>                        Time out in seconds per fragmentation\
    \ tree computation. (default: '0' min: '0')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":top_n_hits <number>                          The number of top hits for each\
    \ compound written to the CSI:FingerID output (default: '10' min: '1')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: ":cores <number>                               The number of cores SIRIUS is\
    \ allowed to use on the system (default: '1' min: '1')"
  id: sirius
  inputBinding:
    prefix: -sirius
  type: boolean
- doc: :auto_charge                                  Use this option if the charge
    of your compounds is unknown and you do not want to assume [M+H]+ as default.
    With the auto charge option SIRIUS will not  care about charges and allow arbitrary
    adducts for the precursor peak.
  id: sirius
  inputBinding:
    prefix: -sirius
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
