class: CommandLineTool
id: rgt_tools.py_bed_cut.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_bed_name
  doc: Output BED name.
  type: string
  inputBinding:
    prefix: -o
- id: in_define_target_file
  doc: Define the target BED file for cutting.
  type: File
  inputBinding:
    prefix: -t
- id: in_strandspecific
  doc: Strand-specific.
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_cut
