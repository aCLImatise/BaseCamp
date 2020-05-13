class: CommandLineTool
id: AssayGeneratorMetabo.cwl
inputs:
- id: executable
  doc: SIRIUS executable e.g. sirius
  type: string
  inputBinding:
    prefix: -executable
- id: in
  doc: "<file(s)>*                                       MzML input file(s) used for\
    \ assay library generation (valid formats: 'mzML')"
  type: boolean
  inputBinding:
    prefix: -in
- id: in_id
  doc: "<file(s)>*                                    FeatureXML input file(s) containing\
    \ identification information (e.g. AccurateMassSearch) (valid formats: 'featureXML')"
  type: boolean
  inputBinding:
    prefix: -in_id
- id: out
  doc: "*                                         Assay library output file (valid\
    \ formats: 'tsv', 'traML', 'pqp')"
  type: File
  inputBinding:
    prefix: -out
- id: fragment_annotation
  doc: "Fragment annotation method (default: 'none' valid: 'none', 'sirius')"
  type: string
  inputBinding:
    prefix: -fragment_annotation
- id: method
  doc: "Spectrum with the highest precursor intensity or a consensus spectrum ist\
    \ used for assay library construction (if no fragment annotation is used). (default\
    \ : 'highest_intensity' valid: 'highest_intensity', 'consensus_spectrum')"
  type: string
  inputBinding:
    prefix: -method
- id: use_exact_mass
  doc: Use exact mass for fragment annotation
  type: boolean
  inputBinding:
    prefix: -use_exact_mass
- id: exclude_ms2_precursor
  doc: Excludes precursor in ms2 from transition list
  type: boolean
  inputBinding:
    prefix: -exclude_ms2_precursor
- id: precursor_mz_distance
  doc: "Max m/z distance of the precursor entries of two spectra to be merged in [Da].\
    \ (default: '1.0e-04')"
  type: string
  inputBinding:
    prefix: -precursor_mz_distance
- id: precursor_rt_tolerance
  doc: "Tolerance window (left and right) for precursor selection [seconds] (default:\
    \ '5.0')"
  type: string
  inputBinding:
    prefix: -precursor_rt_tolerance
- id: use_known_unknowns
  doc: Use features without identification information
  type: boolean
  inputBinding:
    prefix: -use_known_unknowns
- id: min_transitions
  doc: "Minimal number of transitions (default: '3')"
  type: long
  inputBinding:
    prefix: -min_transitions
- id: max_transitions
  doc: "Maximal number of transitions (default: '3')"
  type: long
  inputBinding:
    prefix: -max_transitions
- id: cosine_similarity_threshold
  doc: "Threshold for cosine similarity of MS2 spectra from the same precursor used\
    \ in consensus spectrum creation (default: '0.98')"
  type: string
  inputBinding:
    prefix: -cosine_similarity_threshold
- id: transition_threshold
  doc: "Further transitions need at least x% of the maximum intensity (default 5%)\
    \ (default: '5.0')"
  type: string
  inputBinding:
    prefix: -transition_threshold
- id: de_iso_to_ping
  doc: :use_deisotoper                          Use Deisotoper (if no fragment annotation
    is used)
  type: boolean
  inputBinding:
    prefix: -deisotoping
- id: de_iso_to_ping
  doc: ":fragment_tolerance <num>                Tolerance used to match isotopic\
    \ peaks (default: '1.0')"
  type: boolean
  inputBinding:
    prefix: -deisotoping
- id: de_iso_to_ping
  doc: ":fragment_unit <choice>                  Unit of the fragment tolerance (default:\
    \ 'ppm' valid: 'ppm', 'Da')"
  type: boolean
  inputBinding:
    prefix: -deisotoping
- id: de_iso_to_ping
  doc: ":min_charge <num>                        The minimum charge considered (default:\
    \ '1' min: '1')"
  type: boolean
  inputBinding:
    prefix: -deisotoping
- id: de_iso_to_ping
  doc: ":max_charge <num>                        The maximum charge considered (default:\
    \ '1' min: '1')"
  type: boolean
  inputBinding:
    prefix: -deisotoping
- id: de_iso_to_ping
  doc: ":min_isopeaks <num>                      The minimum number of isotopic peaks\
    \ (at least 2) required for an isotopic cluster (default: '2' min: '2')"
  type: boolean
  inputBinding:
    prefix: -deisotoping
- id: de_iso_to_ping
  doc: ":max_isopeaks <num>                      The maximum number of isotopic peaks\
    \ (at least 2) considered for an isotopic cluster (default: '3' min: '3')"
  type: boolean
  inputBinding:
    prefix: -deisotoping
- id: de_iso_to_ping
  doc: :keep_only_deisotoped                    Only monoisotopic peaks of fragments
    with isotopic pattern are retained
  type: boolean
  inputBinding:
    prefix: -deisotoping
- id: de_iso_to_ping
  doc: :annotate_charge                         Annotate the charge to the peaks
  type: boolean
  inputBinding:
    prefix: -deisotoping
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
- id: out_workspace_directory
  doc: Output directory for SIRIUS workspace
  type: Directory
  inputBinding:
    prefix: -out_workspace_directory
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
- AssayGeneratorMetabo
