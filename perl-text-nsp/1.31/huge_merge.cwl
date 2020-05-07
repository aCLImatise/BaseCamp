class: CommandLineTool
id: huge_merge.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: keep
  doc: Keep the unmerged files. The unmerged files are deleted by default.
  type: boolean
  inputBinding:
    prefix: --keep
outputs: []
cwlVersion: v1.1
baseCommand:
- huge-merge.pl
