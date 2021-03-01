class: CommandLineTool
id: scater_extract_qc_metric.R.cwl
inputs:
- id: in_input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_metric
  doc: Metric name.
  type: string?
  inputBinding:
    prefix: --metric
- id: in_output_file
  doc: Output file name, will be comma-separated cell,value.
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file name, will be comma-separated cell,value.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- scater-extract-qc-metric.R
