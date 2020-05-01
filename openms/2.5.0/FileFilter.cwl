#!/usr/bin/env cwl-runner

baseCommand:
- FileFilter
class: CommandLineTool
cwlVersion: v1.0
id: filefilter
inputs:
- doc: "*                                                  Input file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "*                                                 Output file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
- doc: "[min]:[max]                                              Retention time range\
    \ to extract (default: ':')"
  id: rt
  inputBinding:
    prefix: -rt
  type: boolean
- doc: "[min]:[max]                                              M/z range to extract\
    \ (applies to ALL ms levels!) (default: ':')"
  id: mz
  inputBinding:
    prefix: -mz
  type: boolean
- doc: "[min]:[max]                                             Intensity range to\
    \ extract (default: ':')"
  id: int
  inputBinding:
    prefix: -int
  type: boolean
- doc: Sorts the output according to RT and m/z.
  id: sort
  inputBinding:
    prefix: -sort
  type: boolean
- doc: ":sn <s/n ratio>                                 Write peaks with S/N > 'sn'\
    \ values only (default: '0.0')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: :rm_pc_charge i j ...                           Remove MS(2) spectra with these
    precursor charges. All spectra without precursor are kept!
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":pc_mz_range [min]:[max]                        MSn (n>=2) precursor filtering\
    \ according to their m/z value. Do not use this flag in conjunction with 'mz',\
    \ unless you want to actually remove peak s in spectra (see 'mz'). RT filtering\
    \ is covered by 'rt' and compatible with this flag. (default: ':')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: :pc_mz_list mz_1 mz_2 ...                       List of m/z values. If a precursor
    window covers ANY of these values, the corresponding MS/MS spectrum will be kept.
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":level i j ...                                  MS levels to extract (default:\
    \ '[1 2 3]')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: :sort_peaks                                     Sorts the peaks according to
    m/z
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: :no_chromatograms                               No conversion to space-saving
    real chromatograms, e.g. from SRM scans
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: :remove_chromatograms                           Removes chromatograms stored
    in a file
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: :remove_empty                                   Removes spectra and chromatograms
    without peaks.
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":mz_precision 32 or 64                          Store base64 encoded m/z data\
    \ using 32 or 64 bit precision (default: '64' valid: '32', '64')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":int_precision 32 or 64                         Store base64 encoded intensity\
    \ data using 32 or 64 bit precision (default: '32' valid: '32', '64')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":indexed_file true or false                     Whether to add an index to\
    \ the file when writing (default: 'true' valid: 'true', 'false')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":zlib_compression true or false                 Whether to store data with\
    \ zlib compression (lossless compression) (default: 'false' valid: 'true', 'false')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":numpress:masstime <compression_scheme>         Apply MS Numpress compression\
    \ algorithms in m/z or rt dimension (recommended: linear) (default: 'none' valid:\
    \ 'none', 'linear', 'pic', 'slof')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":numpress:intensity <compression_scheme>        Apply MS Numpress compression\
    \ algorithms in intensity dimension (recommended: slof or pic) (default: 'none'\
    \ valid: 'none', 'linear', 'pic', 'slof')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: ":numpress:float_da <compression_scheme>         Apply MS Numpress compression\
    \ algorithms for the float data arrays (recommended: slof or pic) (default: 'none'\
    \ valid: 'none', 'linear', 'pic', 'slo f')"
  id: peak_options
  inputBinding:
    prefix: -peak_options
  type: boolean
- doc: :remove_zoom                                         Remove zoom (enhanced
    resolution) scans
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":remove_mode <mode>                                  Remove scans by scan\
    \ mode (valid: 'Unknown', 'MassSpectrum', 'MS1Spectrum', 'MSnSpectrum', 'SelectedIonMonitoring',\
    \ 'SelectedReactionMonitoring',  'ConsecutiveReactionMonitoring', 'ConstantNeutralGain',\
    \ 'ConstantNeutralLoss', 'Precursor', 'EnhancedMultiplyCharged', 'TimeDelayedFragmentation',\
    \ 'ElectromagneticRadiation', 'Emission', 'Absorption')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":remove_activation <activation>                      Remove MSn scans where\
    \ any of its precursors features a certain activation method (valid: 'Collision-induced\
    \ dissociation', 'Post-source decay',  'Plasma desorption', 'Surface-induced dissociation',\
    \ 'Blackbody infrared radiative dissociation', 'Electron capture dissociation',\
    \ 'Infrared multip hoton dissociation', 'Sustained off-resonance irradiation',\
    \ 'High-energy collision-induced dissociation', 'Low-energy collision-induced\
    \ dissociatio n', 'Photodissociation', 'Electron transfer dissociation', 'Pulsed\
    \ q dissociation')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":remove_collision_energy [min]:[max]                 Remove MSn scans with\
    \ a collision energy in the given interval (default: ':')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":remove_isolation_window_width [min]:[max]           Remove MSn scans whose\
    \ isolation window width is in the given interval (default: ':')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: :select_zoom                                         Select zoom (enhanced
    resolution) scans
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":select_mode <mode>                                  Selects scans by scan\
    \ mode (valid: 'Unknown', 'MassSpectrum', 'MS1Spectrum', 'MSnSpectrum', 'SelectedIonMonitoring',\
    \ 'SelectedReactionMonitoring', 'ConsecutiveReactionMonit oring', 'ConstantNeutralGain',\
    \ 'ConstantNeutralLoss', 'Precursor', 'EnhancedMultiplyCharged', 'TimeDelayedFragmentation',\
    \ 'ElectromagneticRadiation ', 'Emission', 'Absorption')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":select_activation <activation>                      Retain MSn scans where\
    \ any of its precursors features a certain activation method (valid: 'Collision-induced\
    \ dissociation', 'Post-source decay',  'Plasma desorption', 'Surface-induced dissociation',\
    \ 'Blackbody infrared radiative dissociation', 'Electron capture dissociation',\
    \ 'Infrared multip hoton dissociation', 'Sustained off-resonance irradiation',\
    \ 'High-energy collision-induced dissociation', 'Low-energy collision-induced\
    \ dissociatio n', 'Photodissociation', 'Electron transfer dissociation', 'Pulsed\
    \ q dissociation')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":select_collision_energy [min]:[max]                 Select MSn scans with\
    \ a collision energy in the given interval (default: ':')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":select_isolation_window_width [min]:[max]           Select MSn scans whose\
    \ isolation window width is in the given interval (default: ':')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":select_polarity <polarity>                          Retain MSn scans with\
    \ a certain scan polarity (valid: 'unknown', 'positive', 'negative')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":blackorwhitelist:file <file>                        Input file containing\
    \ MS2 spectra that should be retained or removed from the mzML file! Matching\
    \ tolerances are taken from 'spectra:blackorwhitelist:similarity_threshold|rt|mz'\
    \ options. (valid formats: 'mzML')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":blackorwhitelist:similarity_threshold <similarity>  Similarity threshold\
    \ when matching MS2 spectra. (-1 = disabled). (default: '-1.0' min: '-1.0' max:\
    \ '1.0')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":blackorwhitelist:rt tolerance                       Retention tolerance [s]\
    \ when matching precursor positions. (-1 = disabled) (default: '0.01')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":blackorwhitelist:mz tolerance                       M/z tolerance [Th] when\
    \ matching precursor positions. (-1 = disabled) (default: '0.01')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":blackorwhitelist:use_ppm_tolerance                  If ppm tolerance should\
    \ be used. Otherwise Da are used. (default: 'false')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":blackorwhitelist:blacklist                          True: remove matched\
    \ MS2. False: retain matched MS2 spectra. Other levels are kept (default: 'true'\
    \ valid: 'false', 'true')"
  id: spectra
  inputBinding:
    prefix: -spectra
  type: boolean
- doc: ":q [min]:[max]                                       Overall quality range\
    \ to extract [0:1] (default: ':')"
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: :map i j ...                                       Non-empty list of maps to
    be extracted from a consensus (indices are 0-based).
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: :map_and                                           Consensus features are kept
    only if they contain exactly one feature from each map (as given above in 'map')
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":blackorwhitelist:blacklist                        True: remove matched MS2.\
    \ False: retain matched MS2 spectra. Other levels are kept (default: 'true' valid:\
    \ 'false', 'true')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":blackorwhitelist:file <file>                      Input file containing consensus\
    \ features whose corresponding MS2 spectra should be removed from the mzML file!\
    \ Matching tolerances are taken from 'consensus:blackorwhitelist:rt' and 'consensus:blackorwhitelist:mz'\
    \ options. If consensus:blackorwhitelist:maps is specified, only these will be\
    \ used. (valid formats: 'consensusXML')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: :blackorwhitelist:maps i j ...                     Maps used for black/white
    list filtering
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":blackorwhitelist:rt tolerance                     Retention tolerance [s]\
    \ for precursor to consensus feature position (default: '60.0' min: '0.0')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":blackorwhitelist:mz tolerance                     M/z tolerance [Th] for\
    \ precursor to consensus feature position (default: '0.01' min: '0.0')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":blackorwhitelist:use_ppm_tolerance                If ppm tolerance should\
    \ be used. Otherwise Da are used. (default: 'false' valid: 'false', 'true')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":charge [min]:[max]                                  Charge range to extract\
    \ (default: ':')"
  id: f_and_c
  inputBinding:
    prefix: -f_and_c
  type: boolean
- doc: ":size [min]:[max]                                    Size range to extract\
    \ (default: ':')"
  id: f_and_c
  inputBinding:
    prefix: -f_and_c
  type: boolean
- doc: :remove_meta <name> 'lt|eq|gt' <value>               Expects a 3-tuple (=3
    entries in the list), i.e. <name> 'lt|eq|gt' <value>; the first is the name of
    meta value, followed by the comparison operato r (equal, less or greater) and
    the value to compare to. All comparisons are done after converting the given value
    to the corresponding data value type of the meta value (for lists, this simply
    compares length, not content!)!
  id: f_and_c
  inputBinding:
    prefix: -f_and_c
  type: boolean
- doc: :keep_best_score_id                                       In case of multiple
    peptide identifications, keep only the id with best score
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :sequences_whitelist <sequence>                           Keep only features
    containing whitelisted substrings, e.g. features containing LYSNLVER or the modification
    (Oxidation). To control comparison meth od used for whitelisting, see 'id:sequence_comparison_method'.
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :accessions_whitelist <accessions>                        Keep only features
    with white listed accessions, e.g. sp|P02662|CASA1_BOVIN
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :remove_annotated_features                                Remove features with
    annotations
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :remove_unannotated_features                              Remove features without
    annotations
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :remove_unassigned_ids                                    Remove unassigned
    peptide identifications
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: ":blacklist <file>                                         Input file containing\
    \ MS2 identifications whose corresponding MS2 spectra should be removed from the\
    \ mzML file! Matching tolerances are taken from 'id:rt' and 'id:mz' options. This\
    \ tool will require all IDs to be matched to an MS2 spectrum, and quit with error\
    \ otherwise. Use 'id:blacklist_imperfect' to allow for mismatch es. (valid formats:\
    \ 'idXML')"
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: ":rt tolerance                                             Retention tolerance\
    \ [s] for precursor to id position (default: '0.1' min: '0.0')"
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: ":mz tolerance                                             M/z tolerance [Th]\
    \ for precursor to id position (default: '0.001' min: '0.0')"
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :blacklist_imperfect                                      Allow for mismatching
    precursor positions (see 'id:blacklist')
  id: id
  inputBinding:
    prefix: -id
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
- doc: S/N algorithm section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_FileFilter.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
