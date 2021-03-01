class: CommandLineTool
id: gcloud_init.cwl
inputs:
- id: in_console_only
  doc: Prevent the command from launching a browser for authorization.
  type: boolean?
  inputBinding:
    prefix: --console-only
- id: in_skip_diagnostics
  doc: Do not run diagnostics.
  type: boolean?
  inputBinding:
    prefix: --skip-diagnostics
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- init
