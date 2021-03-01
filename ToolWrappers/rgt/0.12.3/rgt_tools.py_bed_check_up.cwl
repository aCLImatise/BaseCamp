class: CommandLineTool
id: rgt_tools.py_bed_check_up.cwl
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
- id: in_define_length_bp
  doc: Define the length (bp) to detect
  type: long?
  inputBinding:
    prefix: -l
- id: in_organism
  doc: Define the organism
  type: string?
  inputBinding:
    prefix: -organism
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
- bed_check_up
