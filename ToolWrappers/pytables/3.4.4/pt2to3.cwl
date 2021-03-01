class: CommandLineTool
id: pt2to3.cwl
inputs:
- id: in_reverse
  doc: reverts changes, going from 3.x -> 2.x.
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_no_ignore_previous
  doc: ignores previous_api() calls.
  type: boolean?
  inputBinding:
    prefix: --no-ignore-previous
- id: in_output_file_write
  doc: output file to write to.
  type: File?
  inputBinding:
    prefix: -o
- id: in_in_place
  doc: overwrites the file in-place.
  type: boolean?
  inputBinding:
    prefix: --inplace
- id: in_filename
  doc: path to input file.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_write
  doc: output file to write to.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_write)
hints: []
cwlVersion: v1.1
baseCommand:
- pt2to3
