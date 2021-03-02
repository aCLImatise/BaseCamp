class: CommandLineTool
id: rgt_tools.py_bed_add_columns.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_bed_file
  doc: Output BED file
  type: File?
  inputBinding:
    prefix: -o
- id: in_ref
  doc: Define file for referring the extra columns
  type: File?
  inputBinding:
    prefix: -ref
- id: in_field
  doc: "Which field of the reference file is compared for\nnames.\n"
  type: File?
  inputBinding:
    prefix: --field
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: Output BED file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bed_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_add_columns
