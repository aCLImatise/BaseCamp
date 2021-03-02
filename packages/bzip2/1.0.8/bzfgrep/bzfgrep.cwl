class: CommandLineTool
id: bzfgrep.cwl
inputs:
- id: in_grep_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_pattern
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_files
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
  dockerPull: quay.io/biocontainers/bzip2:1.0.8
cwlVersion: v1.1
baseCommand:
- bzfgrep
