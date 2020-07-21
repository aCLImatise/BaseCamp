class: CommandLineTool
id: ../../../tracy_index.cwl
inputs:
- id: arg_output_file
  doc: '[ --output ] arg (="genome.fm9")  output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: genome_dot_fado_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tracy
- index
