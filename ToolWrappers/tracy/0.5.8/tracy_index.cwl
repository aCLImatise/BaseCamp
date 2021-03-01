class: CommandLineTool
id: tracy_index.cwl
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tracy:0.5.8--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- tracy
- index
