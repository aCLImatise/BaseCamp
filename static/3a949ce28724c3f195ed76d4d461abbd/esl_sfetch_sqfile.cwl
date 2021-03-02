class: CommandLineTool
id: esl_sfetch_sqfile.cwl
inputs:
- id: in_index
  doc: ''
  type: File?
  inputBinding:
    prefix: --index
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_esl_s_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/easel:0.47--h516909a_0
cwlVersion: v1.1
baseCommand:
- esl-sfetch
- sqfile
