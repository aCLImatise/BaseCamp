class: CommandLineTool
id: map2gtf.cwl
inputs:
- id: in_annotation_do_ttl_st
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignments_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_file_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- map2gtf
