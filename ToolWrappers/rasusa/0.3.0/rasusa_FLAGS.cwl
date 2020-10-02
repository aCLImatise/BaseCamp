class: CommandLineTool
id: rasusa_FLAGS.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: in_genome_size
  doc: ''
  type: long
  inputBinding:
    prefix: --genome-size
- id: in_coverage
  doc: ''
  type: string
  inputBinding:
    prefix: --coverage
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rasusa
- FLAGS
