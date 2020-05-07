class: CommandLineTool
id: bioconvert_sniffer.cwl
inputs:
- id: test_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: verbosity
  doc: Set the outpout verbosity.
  type: string
  inputBinding:
    prefix: --verbosity
- id: input
  doc: Set the input file.
  type: string[]
  inputBinding:
    prefix: --input
- id: quiet
  doc: simply return a two columns output with filename and found format.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconvert_sniffer
