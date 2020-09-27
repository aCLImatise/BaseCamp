class: CommandLineTool
id: flowcraft_report.cwl
inputs:
- id: in_specify_path_pipeline
  doc: Specify the path to the pipeline report JSON file.
  type: File
  inputBinding:
    prefix: -i
- id: in_url
  doc: Specify the URL to where the data should be broadcast
  type: string
  inputBinding:
    prefix: --url
- id: in_trace_file
  doc: "Specify the nextflow trace file. Only applicable in\ncombination with --watch\
    \ option."
  type: File
  inputBinding:
    prefix: --trace-file
- id: in_log_file
  doc: "Specify the nextflow log file. Only applicable in\ncombination with --watch\
    \ option."
  type: File
  inputBinding:
    prefix: --log-file
- id: in_watch
  doc: "Run the report in watch mode. This option will track\nthe generation of reports\
    \ during the execution of the\npipeline, allowing for the visualization of the\n\
    reports in real-time\n"
  type: boolean
  inputBinding:
    prefix: --watch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- flowcraft
- report
