class: CommandLineTool
id: seq2science_init_WORKFLOW.cwl
inputs:
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_dir
  doc: ''
  type: File?
  inputBinding:
    prefix: --dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seq2science:0.5.1--pypy_0
cwlVersion: v1.1
baseCommand:
- seq2science
- init
- WORKFLOW
