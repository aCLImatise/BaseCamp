class: CommandLineTool
id: rgt_tools.py_bed_subtract.cwl
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
- id: in_define_bed_file
  doc: Define the target BED file to subtract.
  type: File?
  inputBinding:
    prefix: -t
- id: in_all
  doc: Subtract the whole region when it overlaps.
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_block_i
  doc: Read the blocks in input.
  type: boolean?
  inputBinding:
    prefix: -blocki
- id: in_block_t
  doc: Read the blocks in target.
  type: boolean?
  inputBinding:
    prefix: -blockt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_subtract
