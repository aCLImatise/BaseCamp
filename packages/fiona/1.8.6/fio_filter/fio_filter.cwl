class: CommandLineTool
id: fio_filter.cwl
inputs:
- id: in_no_rs
  doc: "Use RS (0x1E) as a prefix for individual texts in a sequence\nas per http://tools.ietf.org/html/draft-ietf-json-text-\n\
    sequence-13 (default is False)."
  type: boolean?
  inputBinding:
    prefix: --no-rs
- id: in_filter_expression
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
- filter
