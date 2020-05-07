class: CommandLineTool
id: MassTraceExtractor.cwl
inputs:
- id: in
  doc: "*        Input centroided mzML file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       Output featureXML file with mass traces (valid formats: 'featureXML',\
    \ 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: out_type
  doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'featureXML', 'consensusXML')"
  type: string
  inputBinding:
    prefix: -out_type
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
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- MassTraceExtractor
