class: CommandLineTool
id: show_aligns.cwl
inputs:
- id: in_sort_alignments_query
  doc: Sort alignments by the query start coordinate
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_sort_alignments_reference
  doc: Sort alignments by the reference start coordinate
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_set_screen_width
  doc: Set the screen width - default is terminal width
  type: long?
  inputBinding:
    prefix: -w
- id: in_colorize_bases_output
  doc: Colorize bases on output
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_set_matrix_type
  doc: Set the matrix type - default is 2 (BLOSUM 62)
  type: long?
  inputBinding:
    prefix: -x
- id: in_space_markers_default
  doc: "Space between markers - default is 10, disable with 0\nother options include\
    \ 1 (BLOSUM 45) and 3 (BLOSUM 80)\nnote: only has effect on amino acid alignments"
  type: long?
  inputBinding:
    prefix: -m
- id: in_delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_id
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_qry_id
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
- show-aligns
