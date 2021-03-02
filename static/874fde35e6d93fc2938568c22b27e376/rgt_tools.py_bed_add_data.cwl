class: CommandLineTool
id: rgt_tools.py_bed_add_data.cwl
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
- id: in_target_bed_file
  doc: Target BED file
  type: File?
  inputBinding:
    prefix: -t
- id: in_same_or_opposite
  doc: same or opposite
  type: string?
  inputBinding:
    prefix: -s
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
- bed_add_data
