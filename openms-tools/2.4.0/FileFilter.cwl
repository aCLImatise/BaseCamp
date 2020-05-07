class: CommandLineTool
id: FileFilter.cwl
inputs:
- id: in
  doc: "*                                                  Input file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "*                                                 Output file (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: string
  inputBinding:
    prefix: -out_type
- id: rt
  doc: "[min]:[max]                                              Retention time range\
    \ to extract (default: ':')"
  type: boolean
  inputBinding:
    prefix: -rt
- id: mz
  doc: "[min]:[max]                                              M/z range to extract\
    \ (applies to ALL ms levels!) (default: ':')"
  type: boolean
  inputBinding:
    prefix: -mz
- id: int
  doc: "[min]:[max]                                             Intensity range to\
    \ extract (default: ':')"
  type: boolean
  inputBinding:
    prefix: -int
- id: sort
  doc: Sorts the output according to RT and m/z.
  type: boolean
  inputBinding:
    prefix: -sort
- id: peak_options
  doc: ":sn <s/n ratio>                                 Write peaks with S/N > 'sn'\
    \ values only (default: '0')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: :rm_pc_charge i j ...                           Remove MS(2) spectra with these
    precursor charges. All spectra without precursor are kept!
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":pc_mz_range [min]:[max]                        MSn (n>=2) precursor filtering\
    \ according to their m/z value. Do not use this flag in conjunction with 'mz',\
    \ unless you want to actually remove peak s in spectra (see 'mz'). RT filtering\
    \ is covered by 'rt' and compatible with this flag. (default: ':')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: :pc_mz_list mz_1 mz_2 ...                       List of m/z values. If a precursor
    window covers ANY of these values, the corresponding MS/MS spectrum will be kept.
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":level i j ...                                  MS levels to extract (default:\
    \ '[1 2 3]')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: :sort_peaks                                     Sorts the peaks according to
    m/z
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: :no_chromatograms                               No conversion to space-saving
    real chromatograms, e.g. from SRM scans
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: :remove_chromatograms                           Removes chromatograms stored
    in a file
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":mz_precision 32 or 64                          Store base64 encoded m/z data\
    \ using 32 or 64 bit precision (default: '64' valid: '32', '64')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":int_precision 32 or 64                         Store base64 encoded intensity\
    \ data using 32 or 64 bit precision (default: '32' valid: '32', '64')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":indexed_file true or false                     Whether to add an index to\
    \ the file when writing (default: 'true' valid: 'true', 'false')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":zlib_compression true or false                 Whether to store data with\
    \ zlib compression (lossless compression) (default: 'false' valid: 'true', 'false')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":numpress:masstime <compression_scheme>         Apply MS Numpress compression\
    \ algorithms in m/z or rt dimension (recommended: linear) (default: 'none' valid:\
    \ 'none', 'linear', 'pic', 'slof')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":numpress:masstime_error <error>                Maximal allowable error in\
    \ m/z or rt dimension (default 10 ppm at 100 m/z; set to 0.5 for pic or negative\
    \ to disable check and speed up conversion) (default: '0.0001')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":numpress:intensity <compression_scheme>        Apply MS Numpress compression\
    \ algorithms in intensity dimension (recommended: slof or pic) (default: 'none'\
    \ valid: 'none', 'linear', 'pic', 'slof')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: peak_options
  doc: ":numpress:intensity_error <error>               Maximal allowable error in\
    \ intensity dimension (set to 0.5 for pic or negative to disable check and speed\
    \ up conversion) (default: '0.0001')"
  type: boolean
  inputBinding:
    prefix: -peak_options
- id: spectra
  doc: :remove_zoom                                         Remove zoom (enhanced
    resolution) scans
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":remove_mode <mode>                                  Remove scans by scan\
    \ mode (valid: 'Unknown', 'MassSpectrum', 'MS1Spectrum', 'MSnSpectrum', 'SelectedIonMonitoring',\
    \ 'SelectedReactionMonitoring',  'ConsecutiveReactionMonitoring', 'ConstantNeutralGain',\
    \ 'ConstantNeutralLoss', 'Precursor', 'EnhancedMultiplyCharged', 'TimeDelayedFragmentation',\
    \ 'ElectromagneticRadiation', 'Emission', 'Absorption')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":remove_activation <activation>                      Remove MSn scans where\
    \ any of its precursors features a certain activation method (valid: 'Collision-induced\
    \ dissociation', 'Post-source decay',  'Plasma desorption', 'Surface-induced dissociation',\
    \ 'Blackbody infrared radiative dissociation', 'Electron capture dissociation',\
    \ 'Infrared multip hoton dissociation', 'Sustained off-resonance irradiation',\
    \ 'High-energy collision-induced dissociation', 'Low-energy collision-induced\
    \ dissociatio n', 'Photodissociation', 'Electron transfer dissociation', 'Pulsed\
    \ q dissociation')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":remove_collision_energy [min]:[max]                 Remove MSn scans with\
    \ a collision energy in the given interval (default: ':')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":remove_isolation_window_width [min]:[max]           Remove MSn scans whose\
    \ isolation window width is in the given interval (default: ':')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: :select_zoom                                         Select zoom (enhanced
    resolution) scans
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":select_mode <mode>                                  Selects scans by scan\
    \ mode (valid: 'Unknown', 'MassSpectrum', 'MS1Spectrum', 'MSnSpectrum', 'SelectedIonMonitoring',\
    \ 'SelectedReactionMonitoring', 'ConsecutiveReactionMonit oring', 'ConstantNeutralGain',\
    \ 'ConstantNeutralLoss', 'Precursor', 'EnhancedMultiplyCharged', 'TimeDelayedFragmentation',\
    \ 'ElectromagneticRadiation ', 'Emission', 'Absorption')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":select_activation <activation>                      Retain MSn scans where\
    \ any of its precursors features a certain activation method (valid: 'Collision-induced\
    \ dissociation', 'Post-source decay',  'Plasma desorption', 'Surface-induced dissociation',\
    \ 'Blackbody infrared radiative dissociation', 'Electron capture dissociation',\
    \ 'Infrared multip hoton dissociation', 'Sustained off-resonance irradiation',\
    \ 'High-energy collision-induced dissociation', 'Low-energy collision-induced\
    \ dissociatio n', 'Photodissociation', 'Electron transfer dissociation', 'Pulsed\
    \ q dissociation')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":select_collision_energy [min]:[max]                 Select MSn scans with\
    \ a collision energy in the given interval (default: ':')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":select_isolation_window_width [min]:[max]           Select MSn scans whose\
    \ isolation window width is in the given interval (default: ':')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":select_polarity <polarity>                          Retain MSn scans with\
    \ a certain scan polarity (valid: 'unknown', 'positive', 'negative')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":blackorwhitelist:file <file>                        Input file containing\
    \ MS2 spectra that should be retained or removed from the mzML file! Matching\
    \ tolerances are taken from 'spectra:blackorwhitelist:similarity_threshold|rt|mz'\
    \ options. (valid formats: 'mzML')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":blackorwhitelist:similarity_threshold <similarity>  Similarity threshold\
    \ when matching MS2 spectra. (-1 = disabled). (default: '-1' min: '-1' max: '1')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":blackorwhitelist:rt tolerance                       Retention tolerance [s]\
    \ when matching precursor positions. (-1 = disabled) (default: '0.01')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":blackorwhitelist:mz tolerance                       M/z tolerance [Th] when\
    \ matching precursor positions. (-1 = disabled) (default: '0.01')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":blackorwhitelist:use_ppm_tolerance                  If ppm tolerance should\
    \ be used. Otherwise Da are used. (default: 'false')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: spectra
  doc: ":blackorwhitelist:blacklist                          True: remove matched\
    \ MS2. False: retain matched MS2 spectra. Other levels are kept (default: 'true'\
    \ valid: 'false', 'true')"
  type: boolean
  inputBinding:
    prefix: -spectra
- id: feature
  doc: ":q [min]:[max]                                       Overall quality range\
    \ to extract [0:1] (default: ':')"
  type: boolean
  inputBinding:
    prefix: -feature
- id: consensus
  doc: :map i j ...                                       Maps to be extracted from
    a consensus
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: :map_and                                           Consensus features are kept
    only if they contain exactly one feature from each map (as given above in 'map')
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: ":blackorwhitelist:blacklist                        True: remove matched MS2.\
    \ False: retain matched MS2 spectra. Other levels are kept (default: 'true' valid:\
    \ 'false', 'true')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: ":blackorwhitelist:file <file>                      Input file containing consensus\
    \ features whose corresponding MS2 spectra should be removed from the mzML file!\
    \ Matching tolerances are taken from 'consensus:blackorwhitelist:rt' and 'consensus:blackorwhitelist:mz'\
    \ options. If consensus:blackorwhitelist:maps is specified, only these will be\
    \ used. (valid formats: 'consensusXML')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: :blackorwhitelist:maps i j ...                     Maps used for black/white
    list filtering
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: ":blackorwhitelist:rt tolerance                     Retention tolerance [s]\
    \ for precursor to consensus feature position (default: '60' min: '0')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: ":blackorwhitelist:mz tolerance                     M/z tolerance [Th] for\
    \ precursor to consensus feature position (default: '0.01' min: '0')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: ":blackorwhitelist:use_ppm_tolerance                If ppm tolerance should\
    \ be used. Otherwise Da are used. (default: 'false' valid: 'false', 'true')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: f_and_c
  doc: ":charge [min]:[max]                                  Charge range to extract\
    \ (default: ':')"
  type: boolean
  inputBinding:
    prefix: -f_and_c
- id: f_and_c
  doc: ":size [min]:[max]                                    Size range to extract\
    \ (default: ':')"
  type: boolean
  inputBinding:
    prefix: -f_and_c
- id: f_and_c
  doc: :remove_meta <name> 'lt|eq|gt' <value>               Expects a 3-tuple (=3
    entries in the list), i.e. <name> 'lt|eq|gt' <value>; the first is the name of
    meta value, followed by the comparison operato r (equal, less or greater) and
    the value to compare to. All comparisons are done after converting the given value
    to the corresponding data value type of the meta value (for lists, this simply
    compares length, not content!)!
  type: boolean
  inputBinding:
    prefix: -f_and_c
- id: id
  doc: :keep_best_score_id                                       In case of multiple
    peptide identifications, keep only the id with best score
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: :sequences_whitelist <sequence>                           Keep only features
    containing whitelisted substrings, e.g. features containing LYSNLVER or the modification
    (Oxidation). To control comparison meth od used for whitelisting, see 'id:sequence_comparison_method'.
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: :accessions_whitelist <accessions>                        Keep only features
    with white listed accessions, e.g. sp|P02662|CASA1_BOVIN
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: :remove_annotated_features                                Remove features with
    annotations
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: :remove_unannotated_features                              Remove features without
    annotations
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: :remove_unassigned_ids                                    Remove unassigned
    peptide identifications
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: ":blacklist <file>                                         Input file containing\
    \ MS2 identifications whose corresponding MS2 spectra should be removed from the\
    \ mzML file! Matching tolerances are taken from 'id:rt' and 'id:mz' options. This\
    \ tool will require all IDs to be matched to an MS2 spectrum, and quit with error\
    \ otherwise. Use 'id:blacklist_imperfect' to allow for mismatch es. (valid formats:\
    \ 'idXML')"
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: ":rt tolerance                                             Retention tolerance\
    \ [s] for precursor to id position (default: '0.1' min: '0')"
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: ":mz tolerance                                             M/z tolerance [Th]\
    \ for precursor to id position (default: '0.001' min: '0')"
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: :blacklist_imperfect                                      Allow for mismatching
    precursor positions (see 'id:blacklist')
  type: boolean
  inputBinding:
    prefix: -id
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
- id: algorithm
  doc: S/N algorithm section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- FileFilter
