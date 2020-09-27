class: CommandLineTool
id: merge_contigs.sh.cwl
inputs:
- id: in_basename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_nuc_mer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_ref
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_suffix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge_contigs.sh
