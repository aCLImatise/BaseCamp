class: CommandLineTool
id: dropletutils_barcoderanks.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R SingleCellExperiment object can be found
  type: string
  inputBinding:
    prefix: --input-object-file
- id: lower
  doc: A numeric scalar specifying the lower bound on the total UMI count, at or below
    which all barcodes are assumed to correspond to empty droplets.
  type: string
  inputBinding:
    prefix: --lower
- id: fit_bounds
  doc: A string, '<lower>,<upper>', specifying the lower and upper bouunds on the
    total UMI count for spline fitting.
  type: string
  inputBinding:
    prefix: --fit-bounds
- id: output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: string
  inputBinding:
    prefix: --output-object-file
- id: output_png_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: string
  inputBinding:
    prefix: --output-png-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dropletutils-barcoderanks.R
