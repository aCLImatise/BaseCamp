class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pyrpipe_diagnostic.py_logfile.cwl
inputs:
- id: command
  doc: Subcommand to run [report,bash,benchmark,all]
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pyrpipe_diagnostic.py
- logfile
