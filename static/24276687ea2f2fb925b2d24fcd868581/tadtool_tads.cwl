class: CommandLineTool
id: tadtool_tads.cwl
inputs:
- id: in_algorithm
  doc: "TAD-calling algorithm. Options: insulation,\nninsulation, directionality.\
    \ Default: insulation."
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_normalisation_window
  doc: "Normalisation window in number of regions. Only\naffects ninsulation algorithm.\
    \ If not specified,\nwindow will be the whole chromosome."
  type: long?
  inputBinding:
    prefix: --normalisation-window
- id: in_write_values
  doc: Write index values to file instead of TADs.
  type: boolean?
  inputBinding:
    prefix: --write-values
- id: in_matrix
  doc: "Square Hi-C Matrix as tab-delimited or .npy file\n(created with numpy.save)\
    \ or sparse matrix format\n(each line: <row region index> <column region index>\n\
    <matrix value>)"
  type: string
  inputBinding:
    position: 0
- id: in_regions
  doc: "BED file (no header) with regions corresponding to the\nnumber of rows in\
    \ the provided matrix. Fourth column,\nif present, denotes name field, which is\
    \ used as an\nidentifier in sparse matrix notation."
  type: string
  inputBinding:
    position: 1
- id: in_window_size
  doc: Window size in base pairs
  type: string
  inputBinding:
    position: 2
- id: in_cut_off
  doc: Cutoff for TAD-calling algorithm at given window size.
  type: string
  inputBinding:
    position: 3
- id: in_output
  doc: Optional output file to save TADs.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tadtool:0.82--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tadtool
- tads
