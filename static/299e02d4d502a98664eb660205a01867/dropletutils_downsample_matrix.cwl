class: CommandLineTool
id: dropletutils_downsample_matrix.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R SingleCellExperiment object can be found
  type: string
  inputBinding:
    prefix: --input-object-file
- id: prop
  doc: A numeric scalar or, if bycol=TRUE, a file with ncol(x) lines specifying a
    value for each cell. All values should lie in [0, 1] specifying the downsampling
    proportion for the matrix or for each cell.
  type: string
  inputBinding:
    prefix: --prop
- id: by_col
  doc: A logical scalar indicating whether downsampling should be performed on a column-by-column
    basis.
  type: string
  inputBinding:
    prefix: --bycol
- id: output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dropletutils-downsample-matrix.R
