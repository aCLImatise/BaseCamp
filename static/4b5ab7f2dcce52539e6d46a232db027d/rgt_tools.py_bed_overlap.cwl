class: CommandLineTool
id: rgt_tools.py_bed_overlap.cwl
inputs:
- id: in_input_bed_files
  doc: Input BED files or directory
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_output_text_file
  doc: Output text file
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_text_file
  doc: Output text file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_text_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- bed_overlap
