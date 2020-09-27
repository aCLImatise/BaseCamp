class: CommandLineTool
id: cfsan_snp_pipeline_combine_metrics.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_metrics
  doc: "File name of the metrics files which must exist in\neach of the sample directories.\
    \ (default: metrics)"
  type: File
  inputBinding:
    prefix: --metrics
- id: in_output
  doc: "Output file. Relative or absolute path to the combined\nmetrics file. (default:\
    \ metrics.tsv)"
  type: File
  inputBinding:
    prefix: --output
- id: in_spaces
  doc: "Emit column headings with spaces instead of\nunderscores (default: False)"
  type: boolean
  inputBinding:
    prefix: --spaces
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Relative or absolute path to the combined\nmetrics file. (default:\
    \ metrics.tsv)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- combine_metrics
