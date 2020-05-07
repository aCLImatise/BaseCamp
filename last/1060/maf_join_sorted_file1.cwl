class: CommandLineTool
id: maf_join_sorted_file1.maf.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- maf-join
- sorted-file1.maf
