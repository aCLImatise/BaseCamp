class: CommandLineTool
id: dropletutils_read_10x_counts.R.cwl
inputs:
- id: output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dropletutils-read-10x-counts.R
