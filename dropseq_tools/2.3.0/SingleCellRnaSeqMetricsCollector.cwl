class: CommandLineTool
id: SingleCellRnaSeqMetricsCollector.cwl
inputs:
- id: m
  doc: (default 4g)
  type: string
  inputBinding:
    prefix: -m
- id: v
  doc: final command line before executing
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- SingleCellRnaSeqMetricsCollector
