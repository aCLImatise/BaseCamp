class: CommandLineTool
id: ../../../MapAlignerIdentification.cwl
inputs:
- id: in
  doc: "*               Input files to align (all must have the same file type) (valid\
    \ formats: 'featureXML', 'consensusXML', 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output files (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'featureXML', 'consensusXML',\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: traf_o_out
  doc: "Transformation output files. This option or 'out' has to be provided; they\
    \ can be used together. (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -trafo_out
- id: design
  doc: "Input file containing the experimental design (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -design
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
- MapAlignerIdentification
