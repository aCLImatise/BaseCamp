class: CommandLineTool
id: bcbio_monitor.cwl
inputs:
- id: in_config
  doc: "PAth to the configuration file, defaults to\n~/.bcbio/monitor.yaml"
  type: File?
  inputBinding:
    prefix: --config
- id: in_title
  doc: Title (or name) for the analysis, i.e NA12878 test
  type: long?
  inputBinding:
    prefix: --title
- id: in_no_update
  doc: "Don't update frontend with the last log line read (less\nrequests)"
  type: boolean?
  inputBinding:
    prefix: --no-update
- id: in_no_browser
  doc: Don't open a new browser tab
  type: boolean?
  inputBinding:
    prefix: --no-browser
- id: in_local
  doc: "Force the monitor to look for the log file locally\n(regardless of the configuration\
    \ file.)\n"
  type: boolean?
  inputBinding:
    prefix: --local
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_monitor
