class: CommandLineTool
id: dropletutils_downsample_matrix.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R SingleCellExperiment object can be found
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_prop
  doc: A numeric scalar or, if bycol=TRUE, a file with ncol(x) lines specifying a
    value for each cell. All values should lie in [0, 1] specifying the downsampling
    proportion for the matrix or for each cell.
  type: File?
  inputBinding:
    prefix: --prop
- id: in_by_col
  doc: A logical scalar indicating whether downsampling should be performed on a column-by-column
    basis.
  type: string?
  inputBinding:
    prefix: --bycol
- id: in_output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: File?
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dropletutils-scripts:0.0.5--0
cwlVersion: v1.1
baseCommand:
- dropletutils-downsample-matrix.R
