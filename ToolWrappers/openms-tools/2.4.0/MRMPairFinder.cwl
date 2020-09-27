class: CommandLineTool
id: MRMPairFinder.cwl
inputs:
- id: in_in
  doc: "*          Input featureXML file containing the features of the MRM experiment\
    \ spectra. (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_pair_in
  doc: "*     Pair-file in the format: prec-m/z-light prec-m/z-heavy frag-m/z-light\
    \ frag-m/z-heavy rt (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -pair_in
- id: in_out
  doc: "*         Output consensusXML file were the pairs of the features will be\
    \ written to. (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_feature_out
  doc: "Output featureXML file, only written if given, skipped otherwise. (valid formats:\
    \ 'featureXML')"
  type: File
  inputBinding:
    prefix: -feature_out
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*         Output consensusXML file were the pairs of the features will be\
    \ written to. (valid formats: 'consensusXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_feature_out
  doc: "Output featureXML file, only written if given, skipped otherwise. (valid formats:\
    \ 'featureXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_feature_out)
cwlVersion: v1.1
baseCommand:
- MRMPairFinder
