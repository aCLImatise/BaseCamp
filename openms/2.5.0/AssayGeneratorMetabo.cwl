#!/usr/bin/env cwl-runner

baseCommand:
- AssayGeneratorMetabo
class: CommandLineTool
cwlVersion: v1.0
id: assaygeneratormetabo
inputs:
- doc: SIRIUS executable e.g. sirius
  id: executable
  inputBinding:
    prefix: -executable
  type: string
- doc: "<file(s)>*                                       MzML input file(s) used for\
    \ assay library generation (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: "<file(s)>*                                    FeatureXML input file(s) containing\
    \ identification information (e.g. AccurateMassSearch) (valid formats: 'featureXML')"
  id: in_id
  inputBinding:
    prefix: -in_id
  type: boolean
- doc: "*                                         Assay library output file (valid\
    \ formats: 'tsv', 'traML', 'pqp')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Fragment annotation method (default: 'none' valid: 'none', 'sirius')"
  id: fragment_annotation
  inputBinding:
    prefix: -fragment_annotation
  type: string
- doc: "Spectrum with the highest precursor intensity or a consensus spectrum ist\
    \ used for assay library construction (if no fragment annotation is used). (default\
    \ : 'highest_intensity' valid: 'highest_intensity', 'consensus_spectrum')"
  id: method
  inputBinding:
    prefix: -method
  type: string
- doc: Use exact mass for fragment annotation
  id: use_exact_mass
  inputBinding:
    prefix: -use_exact_mass
  type: boolean
- doc: Excludes precursor in ms2 from transition list
  id: exclude_ms2_precursor
  inputBinding:
    prefix: -exclude_ms2_precursor
  type: boolean
- doc: "Max m/z distance of the precursor entries of two spectra to be merged in [Da].\
    \ (default: '1.0e-04')"
  id: precursor_mz_distance
  inputBinding:
    prefix: -precursor_mz_distance
  type: string
- doc: "Tolerance window (left and right) for precursor selection [seconds] (default:\
    \ '5.0')"
  id: precursor_rt_tolerance
  inputBinding:
    prefix: -precursor_rt_tolerance
  type: string
- doc: Use features without identification information
  id: use_known_unknowns
  inputBinding:
    prefix: -use_known_unknowns
  type: boolean
- doc: "Minimal number of transitions (default: '3')"
  id: min_transitions
  inputBinding:
    prefix: -min_transitions
  type: long
- doc: "Maximal number of transitions (default: '3')"
  id: max_transitions
  inputBinding:
    prefix: -max_transitions
  type: long
- doc: "Threshold for cosine similarity of MS2 spectra from the same precursor used\
    \ in consensus spectrum creation (default: '0.98')"
  id: cosine_similarity_threshold
  inputBinding:
    prefix: -cosine_similarity_threshold
  type: string
- doc: "Further transitions need at least x% of the maximum intensity (default 5%)\
    \ (default: '5.0')"
  id: transition_threshold
  inputBinding:
    prefix: -transition_threshold
  type: string
- doc: :use_deisotoper                          Use Deisotoper (if no fragment annotation
    is used)
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
- doc: ":fragment_tolerance <num>                Tolerance used to match isotopic\
    \ peaks (default: '1.0')"
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
- doc: ":fragment_unit <choice>                  Unit of the fragment tolerance (default:\
    \ 'ppm' valid: 'ppm', 'Da')"
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
- doc: ":min_charge <num>                        The minimum charge considered (default:\
    \ '1' min: '1')"
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
- doc: ":max_charge <num>                        The maximum charge considered (default:\
    \ '1' min: '1')"
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
- doc: ":min_isopeaks <num>                      The minimum number of isotopic peaks\
    \ (at least 2) required for an isotopic cluster (default: '2' min: '2')"
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
- doc: ":max_isopeaks <num>                      The maximum number of isotopic peaks\
    \ (at least 2) considered for an isotopic cluster (default: '3' min: '3')"
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
- doc: :keep_only_deisotoped                    Only monoisotopic peaks of fragments
    with isotopic pattern are retained
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
- doc: :annotate_charge                         Annotate the charge to the peaks
  id: de_iso_to_ping
  inputBinding:
    prefix: -deisotoping
  type: boolean
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
- doc: Output directory for SIRIUS workspace
  id: out_workspace_directory
  inputBinding:
    prefix: -out_workspace_directory
  type: Directory
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
