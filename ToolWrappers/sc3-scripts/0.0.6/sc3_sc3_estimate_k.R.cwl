class: CommandLineTool
id: sc3_sc3_estimate_k.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a processed SC3 object can be found.
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_output_object_file
  doc: File name in which to store the SingleCellExperiment object with estimated
    k'.
  type: File
  inputBinding:
    prefix: --output-object-file
- id: in_output_text_file
  doc: Text file name in which to store the estimated k'.
  type: File
  inputBinding:
    prefix: --output-text-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store the SingleCellExperiment object with estimated
    k'.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_text_file
  doc: Text file name in which to store the estimated k'.
  type: File
  outputBinding:
    glob: $(inputs.in_output_text_file)
cwlVersion: v1.1
baseCommand:
- sc3-sc3-estimate-k.R
