class: CommandLineTool
id: rtg_extract.cwl
inputs:
- id: in_header
  doc: print out header also
  type: boolean
  inputBinding:
    prefix: --header
- id: in_header_only
  doc: out header only
  type: string
  inputBinding:
    prefix: --header-only
- id: in_file
  doc: the indexed block compressed genome position data file to
  type: File
  inputBinding:
    position: 0
- id: in_extract
  doc: Filtering
  type: string
  inputBinding:
    position: 1
- id: in_times
  doc: Reporting
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rtg
- extract
