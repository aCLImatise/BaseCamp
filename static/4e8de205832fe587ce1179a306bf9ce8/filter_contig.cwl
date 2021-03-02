class: CommandLineTool
id: filter_contig.cwl
inputs:
- id: in_contig_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_id
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter_contig
