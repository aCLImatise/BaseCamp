class: CommandLineTool
id: mono_symbolicate.cwl
inputs:
- id: in_quiet_warnings_displayed
  doc: Quiet, warnings are not displayed
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_verbose_log_debug
  doc: Verbose, log debug messages
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mono-symbolicate
