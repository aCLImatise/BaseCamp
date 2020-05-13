class: CommandLineTool
id: scater_extract_qc_metric.R.cwl
inputs:
- id: input_object_file
  doc: singleCellExperiment object containing expression values and experimental information.
    Must have been appropriately prepared.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: metric
  doc: Metric name.
  type: string
  inputBinding:
    prefix: --metric
- id: output_file
  doc: Output file name, will be comma-separated cell,value.
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- scater-extract-qc-metric.R
