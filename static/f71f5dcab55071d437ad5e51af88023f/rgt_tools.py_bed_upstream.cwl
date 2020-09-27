class: CommandLineTool
id: rgt_tools.py_bed_upstream.cwl
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
- id: in_define_length_defaultbp
  doc: Define length (default:100bp)
  type: long
  inputBinding:
    prefix: -l
- id: in_define_distance_defaultbp
  doc: Define distance (default:100bp)
  type: long
  inputBinding:
    prefix: -d
- id: in_min
  doc: "Define minimum length of gene to filter out the small\ngenes (default:0)"
  type: long
  inputBinding:
    prefix: -min
- id: in_reverse
  doc: Reverse the strand.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_downstream
  doc: Find downstream regions instead of upstream.
  type: boolean
  inputBinding:
    prefix: --downstream
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
- bed_upstream
