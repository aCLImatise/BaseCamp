class: CommandLineTool
id: tleap.cwl
inputs:
- id: in_ignore_leaprc_startup
  doc: Ignore leaprc startup file.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_add_search_path
  doc: Add {dir} to search path.
  type: string
  inputBinding:
    prefix: -I
- id: in_source_
  doc: Source {file}.
  type: string
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tleap
