class: CommandLineTool
id: MapRTTransformer.cwl
inputs:
- id: in
  doc: "Input file to transform (separated by blanks) (valid formats: 'mzML', 'featureXML',\
    \ 'consensusXML', 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: traf_o_in
  doc: "*    Transformation to apply (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -trafo_in
- id: traf_o_out
  doc: "Transformation output file. This option or 'out' has to be provided; they\
    \ can be used together. (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -trafo_out
- id: invert
  doc: Invert transformation (approximatively) before applying it
  type: boolean
  inputBinding:
    prefix: -invert
- id: store_original_rt
  doc: Store the original retention times (before transformation) as meta data in
    the output file
  type: boolean
  inputBinding:
    prefix: -store_original_rt
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
- id: model
  doc: Options to control the modeling of retention time transformations from data
  type: boolean
  inputBinding:
    prefix: '- model'
- id: http
  doc: ://www.openms.de/documentation/TOPP_MapRTTransformer.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- MapRTTransformer
