class: CommandLineTool
id: huge_merge.pl.cwl
inputs:
- id: in_keep
  doc: "Keep the unmerged files.\nThe unmerged files are deleted by default."
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_source_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- huge-merge.pl
