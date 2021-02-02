class: CommandLineTool
id: gcloud_info.cwl
inputs:
- id: in_anonymize
  doc: "Minimize any personal identifiable information. Use it when sharing\noutput\
    \ with others."
  type: boolean
  inputBinding:
    prefix: --anonymize
- id: in_run_diagnostics
  doc: Run diagnostics on your installation of the Cloud SDK.
  type: boolean
  inputBinding:
    prefix: --run-diagnostics
- id: in_show_log
  doc: Print the contents of the last log file.
  type: boolean
  inputBinding:
    prefix: --show-log
- id: in_connectivity_dot
  doc: o gcloud info --show-log prints the contents of the most recent log
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: FLAGS
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- info
