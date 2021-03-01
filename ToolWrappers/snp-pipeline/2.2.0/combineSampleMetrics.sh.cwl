class: CommandLineTool
id: combineSampleMetrics.sh.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_metrics
  doc: "File name of the metrics files which must exist in\neach of the sample directories.\
    \ (default: metrics)"
  type: File?
  inputBinding:
    prefix: --metrics
- id: in_output
  doc: "Output file. Relative or absolute path to the combined\nmetrics file. (default:\
    \ metrics.tsv)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_spaces
  doc: "Emit column headings with spaces instead of\nunderscores (default: False)"
  type: boolean?
  inputBinding:
    prefix: --spaces
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_cfsan_snp_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_combine_metrics
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Relative or absolute path to the combined\nmetrics file. (default:\
    \ metrics.tsv)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- combineSampleMetrics.sh
