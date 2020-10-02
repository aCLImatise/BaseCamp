class: CommandLineTool
id: rgt_tools.py_bed_remove_if_overlap.cwl
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
- id: in_define_bed_file
  doc: Define BED file for target regions
  type: File
  inputBinding:
    prefix: -t
- id: in_keep
  doc: Keep the overlapped regions, and remove the non-overlapped
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_ones_dot
  doc: -b, --block  Read and write BED12 format.
  type: string
  inputBinding:
    position: 0
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
- bed_remove_if_overlap
