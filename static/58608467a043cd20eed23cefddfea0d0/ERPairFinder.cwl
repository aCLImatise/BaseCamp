class: CommandLineTool
id: ERPairFinder.cwl
inputs:
- id: in
  doc: "*                            Input mzML file containing the ER spectra. (valid\
    \ formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: pair_in
  doc: "*                       Pair-file in the format: m/z-light m/z-heavy charge\
    \ rt (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -pair_in
- id: out
  doc: "*                           Output consensusXML file were the pairs of the\
    \ feature are written into. (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: feature_out
  doc: "Output featureXML file, only written if given, skipped otherwise. (valid formats:\
    \ 'featureXML')"
  type: File
  inputBinding:
    prefix: -feature_out
- id: precursor_mass_tolerance
  doc: "Precursor mass tolerance which is used for the pair finding and the matching\
    \ of the given pair m/z values to the features. (default: '0.3' min: '0')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
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
- ERPairFinder
