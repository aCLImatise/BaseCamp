class: CommandLineTool
id: FeatureLinkerUnlabeledQT.cwl
inputs:
- id: in
  doc: "*        Input files separated by blanks (valid formats: 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*        Output file (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: design
  doc: "Input file containing the experimental design (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -design
- id: keep_subelements
  doc: 'For consensusXML input only: If set, the sub-features of the inputs are transferred
    to the output.'
  type: boolean
  inputBinding:
    prefix: -keep_subelements
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
- FeatureLinkerUnlabeledQT
