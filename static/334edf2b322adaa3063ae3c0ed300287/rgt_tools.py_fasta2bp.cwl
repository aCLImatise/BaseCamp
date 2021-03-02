class: CommandLineTool
id: rgt_tools.py_fasta2bp.cwl
inputs:
- id: in_input_fasta_file
  doc: Input FASTA file or directory
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file_table
  doc: Output file with a table
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_table
  doc: Output file with a table
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_table)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- fasta2bp
