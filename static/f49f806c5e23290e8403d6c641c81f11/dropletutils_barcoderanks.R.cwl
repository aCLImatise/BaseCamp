class: CommandLineTool
id: dropletutils_barcoderanks.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R SingleCellExperiment object can be found
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_lower
  doc: A numeric scalar specifying the lower bound on the total UMI count, at or below
    which all barcodes are assumed to correspond to empty droplets.
  type: string?
  inputBinding:
    prefix: --lower
- id: in_fit_bounds
  doc: A string, '<lower>,<upper>', specifying the lower and upper bouunds on the
    total UMI count for spline fitting.
  type: string?
  inputBinding:
    prefix: --fit-bounds
- id: in_output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: File?
  inputBinding:
    prefix: --output-object-file
- id: in_output_png_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: File?
  inputBinding:
    prefix: --output-png-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_png_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_png_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dropletutils-scripts:0.0.5--0
cwlVersion: v1.1
baseCommand:
- dropletutils-barcoderanks.R
