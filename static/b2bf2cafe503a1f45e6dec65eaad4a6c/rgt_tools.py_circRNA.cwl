class: CommandLineTool
id: rgt_tools.py_circRNA.cwl
inputs:
- id: in_input_chimeric_junction
  doc: Input chimeric junction file from STAR
  type: File
  inputBinding:
    prefix: -i
- id: in_input_bed_file
  doc: Input BED file of tcons
  type: File
  inputBinding:
    prefix: -t
- id: in_output_bed_file
  doc: Output BED file
  type: File
  inputBinding:
    prefix: -o
- id: in_output_bed_file_circular
  doc: Output BED file of circular RNA
  type: File
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: Output BED file
  type: File
  outputBinding:
    glob: $(inputs.in_output_bed_file)
- id: out_output_bed_file_circular
  doc: Output BED file of circular RNA
  type: File
  outputBinding:
    glob: $(inputs.in_output_bed_file_circular)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- circRNA
