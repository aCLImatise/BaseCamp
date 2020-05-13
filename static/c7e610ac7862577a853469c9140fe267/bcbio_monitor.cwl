class: CommandLineTool
id: bcbio_monitor.cwl
inputs:
- id: log_file
  doc: Path to the file bcbio-nextgen-debug.log
  type: string
  inputBinding:
    position: 0
- id: config
  doc: PAth to the configuration file, defaults to ~/.bcbio/monitor.yaml
  type: string
  inputBinding:
    prefix: --config
- id: title
  doc: Title (or name) for the analysis, i.e NA12878 test
  type: string
  inputBinding:
    prefix: --title
- id: no_update
  doc: Don't update frontend with the last log line read (less requests)
  type: boolean
  inputBinding:
    prefix: --no-update
- id: no_browser
  doc: Don't open a new browser tab
  type: boolean
  inputBinding:
    prefix: --no-browser
- id: local
  doc: Force the monitor to look for the log file locally (regardless of the configuration
    file.)
  type: boolean
  inputBinding:
    prefix: --local
outputs: []
cwlVersion: v1.1
baseCommand:
- bcbio_monitor
