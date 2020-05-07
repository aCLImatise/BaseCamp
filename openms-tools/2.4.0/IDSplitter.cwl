class: CommandLineTool
id: IDSplitter.cwl
inputs:
- id: in
  doc: "*        Input file (data annotated with identifications) (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file (data without identifications). Either 'out' or 'id_out' are required.\
    \ They can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: id_out
  doc: "Output file (identifications). Either 'out' or 'id_out' are required. They\
    \ can be used together. (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_out
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
- IDSplitter
