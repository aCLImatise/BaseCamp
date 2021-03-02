class: CommandLineTool
id: fio_ls.cwl
inputs:
- id: in_indent
  doc: Indentation level for JSON output
  type: long?
  inputBinding:
    prefix: --indent
- id: in_input
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
  dockerPull: quay.io/biocontainers/fiona:1.8.6
cwlVersion: v1.1
baseCommand:
- fio
- ls
