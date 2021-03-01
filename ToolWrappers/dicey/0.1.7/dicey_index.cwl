class: CommandLineTool
id: dicey_index.cwl
inputs:
- id: in_arg_output_file
  doc: '[ --output ] arg (="genome.fm9")  output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_genome_dot_fado_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --output ] arg (="genome.fm9")  output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- dicey
- index
