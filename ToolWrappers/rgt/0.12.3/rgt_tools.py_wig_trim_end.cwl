class: CommandLineTool
id: rgt_tools.py_wig_trim_end.cwl
inputs:
- id: in_input_wig_file
  doc: Input WIG file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_wig_file
  doc: Output WIG file
  type: File
  inputBinding:
    prefix: -o
- id: in_chro_size
  doc: Define path to the chromosome size file
  type: boolean
  inputBinding:
    prefix: -chrosize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_wig_file
  doc: Output WIG file
  type: File
  outputBinding:
    glob: $(inputs.in_output_wig_file)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- wig_trim_end
