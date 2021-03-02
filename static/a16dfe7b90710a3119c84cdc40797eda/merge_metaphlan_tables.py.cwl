class: CommandLineTool
id: merge_metaphlan_tables.py.cwl
inputs:
- id: in_name_output_file
  doc: Name of output file in which joined tables are saved
  type: File?
  inputBinding:
    prefix: -o
- id: in_input_dot_txt
  doc: One or more tab-delimited text tables to join
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file in which joined tables are saved
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- merge_metaphlan_tables.py
