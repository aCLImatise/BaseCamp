class: CommandLineTool
id: rgt_tools.py_bed_extend.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_bed_name
  doc: Output BED name.
  type: string?
  inputBinding:
    prefix: -o
- id: in_only_zero
  doc: Extend only the zero-length regions
  type: boolean?
  inputBinding:
    prefix: --onlyzero
- id: in_len
  doc: Define the length to extend.
  type: long?
  inputBinding:
    prefix: -len
- id: in_extend_center_directions
  doc: Extend from the center to both directions.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_extend_left_ends
  doc: Extend from the left ends.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_extend_right_ends
  doc: Extend from the right ends.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_up
  doc: Extend from the upstream ends.
  type: boolean?
  inputBinding:
    prefix: -up
- id: in_down
  doc: Extend from the downstream ends.
  type: boolean?
  inputBinding:
    prefix: -down
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_extend
