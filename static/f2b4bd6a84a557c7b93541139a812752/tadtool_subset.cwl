class: CommandLineTool
id: tadtool_subset.cwl
inputs:
- id: in_matrix
  doc: "Square Hi-C Matrix as tab-delimited or .npy file (created\nwith numpy.save)\
    \ or sparse matrix format (each line: <row\nregion index> <column region index>\
    \ <matrix value>)"
  type: string
  inputBinding:
    position: 0
- id: in_regions
  doc: "BED file (no header) with regions corresponding to the\nnumber of rows in\
    \ the provided matrix. Fourth column, if\npresent, denotes name field, which is\
    \ used as an identifier\nin sparse matrix notation."
  type: string
  inputBinding:
    position: 1
- id: in_sub_region
  doc: "Region of the Hi-C matrix to display in plot. Format:\n<chromosome>:<start>-<end>,\
    \ e.g. chr12:31000000-33000000"
  type: string
  inputBinding:
    position: 2
- id: in_output_matrix
  doc: Output matrix file.
  type: string
  inputBinding:
    position: 3
- id: in_output_regions
  doc: Output regions file.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tadtool
- subset
