class: CommandLineTool
id: huge_sort.pl.cwl
inputs:
- id: in_keep
  doc: "keep the unsorted file\nThe default is to delete the unsorted file."
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- huge-sort.pl
