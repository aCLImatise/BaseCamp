class: CommandLineTool
id: o_trim.cwl
inputs:
- id: in_trim_from
  doc: Start position
  type: long
  inputBinding:
    prefix: --trim-from
- id: in_trim_to
  doc: End position
  type: long
  inputBinding:
    prefix: --trim-to
- id: in_min_length
  doc: Minimum lenght of a read to be kept
  type: long
  inputBinding:
    prefix: --min-length
- id: in_output
  doc: "Output file name.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- o-trim
