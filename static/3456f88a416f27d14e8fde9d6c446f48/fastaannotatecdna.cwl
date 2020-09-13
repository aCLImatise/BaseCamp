class: CommandLineTool
id: ../../../fastaannotatecdna.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_cdna
  doc: ''
  type: File
  inputBinding:
    prefix: --cdna
- id: in_protein
  doc: ''
  type: File
  inputBinding:
    prefix: --protein
- id: in_genetic_code
  doc: ''
  type: boolean
  inputBinding:
    prefix: --geneticcode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastaannotatecdna
