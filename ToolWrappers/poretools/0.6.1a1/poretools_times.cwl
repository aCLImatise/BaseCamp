class: CommandLineTool
id: poretools_times.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_utc
  doc: Show timestamps in UTC.
  type: boolean
  inputBinding:
    prefix: --utc
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
- times
