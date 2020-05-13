class: CommandLineTool
id: scmap_make_test_data.R.cwl
inputs:
- id: output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scmap-make-test-data.R
