class: CommandLineTool
id: ../../../tadtool_subset.cwl
inputs:
- id: matrix
  doc: 'Square Hi-C Matrix as tab-delimited or .npy file (created with numpy.save)
    or sparse matrix format (each line: <row region index> <column region index> <matrix
    value>)'
  type: string
  inputBinding:
    position: 0
- id: regions
  doc: BED file (no header) with regions corresponding to the number of rows in the
    provided matrix. Fourth column, if present, denotes name field, which is used
    as an identifier in sparse matrix notation.
  type: string
  inputBinding:
    position: 1
- id: sub_region
  doc: 'Region of the Hi-C matrix to display in plot. Format: <chromosome>:<start>-<end>,
    e.g. chr12:31000000-33000000'
  type: string
  inputBinding:
    position: 2
- id: output_matrix
  doc: Output matrix file.
  type: string
  inputBinding:
    position: 3
- id: output_regions
  doc: Output regions file.
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- tadtool
- subset
