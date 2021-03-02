class: CommandLineTool
id: makeFastq.sh.cwl
inputs:
- id: in_basename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_suffix
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- makeFastq.sh
