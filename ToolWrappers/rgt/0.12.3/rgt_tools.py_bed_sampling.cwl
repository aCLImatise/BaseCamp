class: CommandLineTool
id: rgt_tools.py_bed_sampling.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_bed_file
  doc: Output BED file
  type: File
  inputBinding:
    prefix: -o
- id: in_number_output_regions
  doc: Number of the output regions
  type: long
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: Output BED file
  type: File
  outputBinding:
    glob: $(inputs.in_output_bed_file)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_sampling
