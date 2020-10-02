class: CommandLineTool
id: msstitch_storespectra.cwl
inputs:
- id: in_set_names
  doc: SETNAMES [SETNAMES ...]
  type: string[]
  inputBinding:
    prefix: --setnames
- id: in_dbfile
  doc: Database lookup file
  type: File
  inputBinding:
    prefix: --dbfile
- id: in_output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- msstitch
- storespectra
