class: CommandLineTool
id: rgt_tools.py_tpx2bed.cwl
inputs:
- id: in_input_tpx_file
  doc: Input TPX file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_bed_file
  doc: Output BED file
  type: File
  inputBinding:
    prefix: -o
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
- tpx2bed
