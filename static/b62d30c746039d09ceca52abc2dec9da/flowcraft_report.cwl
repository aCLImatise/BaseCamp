class: CommandLineTool
id: flowcraft_report.cwl
inputs:
- id: i
  doc: Specify the path to the pipeline report JSON file.
  type: string
  inputBinding:
    prefix: -i
- id: url
  doc: Specify the URL to where the data should be broadcast
  type: string
  inputBinding:
    prefix: --url
- id: trace_file
  doc: Specify the nextflow trace file. Only applicable in combination with --watch
    option.
  type: string
  inputBinding:
    prefix: --trace-file
- id: log_file
  doc: Specify the nextflow log file. Only applicable in combination with --watch
    option.
  type: string
  inputBinding:
    prefix: --log-file
- id: watch
  doc: Run the report in watch mode. This option will track the generation of reports
    during the execution of the pipeline, allowing for the visualization of the reports
    in real-time
  type: boolean
  inputBinding:
    prefix: --watch
outputs: []
cwlVersion: v1.1
baseCommand:
- flowcraft
- report
