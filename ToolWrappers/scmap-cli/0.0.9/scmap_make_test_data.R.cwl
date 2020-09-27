class: CommandLineTool
id: scmap_make_test_data.R.cwl
inputs:
- id: in_output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: file name in which to store serialized R object of type 'SingleCellExperiment'.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- scmap-make-test-data.R
