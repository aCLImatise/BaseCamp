class: CommandLineTool
id: prep_reads.cwl
inputs:
- id: in_filter_multi
  doc: ''
  type: string?
  inputBinding:
    prefix: --filter-multi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prep_reads
