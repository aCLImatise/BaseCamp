class: CommandLineTool
id: rgt_tools.py_bed_change_strand.cwl
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
- id: in_define_threshold_bp
  doc: Define the threshold of distance (default:0 bp
  type: long
  inputBinding:
    prefix: -d
- id: in_target_bed_file
  doc: Target BED file
  type: File
  inputBinding:
    prefix: -t
- id: in_reverse_the_strand
  doc: Reverse the strand
  type: boolean
  inputBinding:
    prefix: -r
- id: in_define_stand_regions
  doc: Define the stand for all regions
  type: string
  inputBinding:
    prefix: -a
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
- bed_change_strand
