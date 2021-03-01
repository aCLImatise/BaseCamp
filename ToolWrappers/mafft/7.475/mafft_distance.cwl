class: CommandLineTool
id: mafft_distance.cwl
inputs:
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_pd
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -PD
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mafft:7.475--h516909a_0
cwlVersion: v1.1
baseCommand:
- mafft-distance
