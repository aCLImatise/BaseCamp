class: CommandLineTool
id: sc3_sc3_estimate_k.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a processed SC3 object can be found.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: output_object_file
  doc: File name in which to store the SingleCellExperiment object with estimated
    k'.
  type: string
  inputBinding:
    prefix: --output-object-file
- id: output_text_file
  doc: Text file name in which to store the estimated k'.
  type: string
  inputBinding:
    prefix: --output-text-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sc3-sc3-estimate-k.R
