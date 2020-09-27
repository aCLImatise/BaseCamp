class: CommandLineTool
id: pass.cwl
inputs:
- id: in_tags
  doc: /1 /2 > paired_alignments.sam
  type: boolean
  inputBinding:
    prefix: -tags
- id: in_range
  doc: 3000 100000 -unique_pair 1 -unique_single 1 -stdout \
  type: long
  inputBinding:
    prefix: -range
- id: in_lib_type
  doc: F3  > paired_alignments.sam
  type: long
  inputBinding:
    prefix: -lib_type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pass
