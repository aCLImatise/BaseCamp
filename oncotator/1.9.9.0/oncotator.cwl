class: CommandLineTool
id: ../../../oncotator.cwl
inputs:
- id: var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: input_file
  doc: Input file to be annotated. Type is specified through options.
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: Output file name of annotated file.
  type: string
  inputBinding:
    position: 1
- id: genome_build
  doc: 'Genome build. For example: hg19'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- oncotator
