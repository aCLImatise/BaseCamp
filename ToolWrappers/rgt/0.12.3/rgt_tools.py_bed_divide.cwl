class: CommandLineTool
id: rgt_tools.py_bed_divide.cwl
inputs:
- id: in_bed
  doc: Input BED file
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_input_expression_table
  doc: Input expression table (Gene name should match the region name.
  type: string
  inputBinding:
    prefix: -t
- id: in_o_one
  doc: Output first BED file
  type: File
  inputBinding:
    prefix: -o1
- id: in_o_two
  doc: Output second BED file
  type: File
  inputBinding:
    prefix: -o2
- id: in_define_the_cutoff
  doc: Define the cutoff
  type: string
  inputBinding:
    prefix: -c
- id: in_define_mode_such
  doc: Define the mode, such as mean, max, or min.
  type: long
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o_one
  doc: Output first BED file
  type: File
  outputBinding:
    glob: $(inputs.in_o_one)
- id: out_o_two
  doc: Output second BED file
  type: File
  outputBinding:
    glob: $(inputs.in_o_two)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_divide
