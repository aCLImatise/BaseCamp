class: CommandLineTool
id: ../../../slicedimage_checksum.cwl
inputs:
- id: in_pretty
  doc: Pretty-print the output file
  type: File
  inputBinding:
    prefix: --pretty
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pretty
  doc: Pretty-print the output file
  type: File
  outputBinding:
    glob: $(inputs.in_pretty)
cwlVersion: v1.1
baseCommand:
- slicedimage
- checksum
