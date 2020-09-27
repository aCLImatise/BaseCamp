class: CommandLineTool
id: poretools_events.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_pre_base_called
  doc: Report pre-basecalled events
  type: boolean
  inputBinding:
    prefix: --pre-basecalled
- id: in_files
  doc: The input FAST5 files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poretools
- events
