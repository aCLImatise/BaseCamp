class: CommandLineTool
id: tgTigDisplay.cwl
inputs:
- id: in_t
  doc: ''
  type: File?
  inputBinding:
    prefix: -t
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- tgTigDisplay
