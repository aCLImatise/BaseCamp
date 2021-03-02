class: CommandLineTool
id: sc3_sc3_calc_consens.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a SC3 'SingleCellExperiment' object has been stored after
    kmeans clustering.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_output_text_file
  doc: Text file name in which to store clusters, one column for every k value.
  type: File?
  inputBinding:
    prefix: --output-text-file
- id: in_output_object_file
  doc: File name for R object of type 'SingleCellExperiment' from SC3 in which to
    store the consensus matrix.
  type: File?
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_text_file
  doc: Text file name in which to store clusters, one column for every k value.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_text_file)
- id: out_output_object_file
  doc: File name for R object of type 'SingleCellExperiment' from SC3 in which to
    store the consensus matrix.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
hints: []
cwlVersion: v1.1
baseCommand:
- sc3-sc3-calc-consens.R
