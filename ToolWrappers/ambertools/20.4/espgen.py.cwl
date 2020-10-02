class: CommandLineTool
id: espgen.py.cwl
inputs:
- id: in_input_file_name
  doc: Input file name
  type: File
  inputBinding:
    prefix: -i
- id: in_output_file_name
  doc: Output file name
  type: File
  inputBinding:
    prefix: -o
- id: in_software_version_default
  doc: "Software version [Default is gau (means Gaussian),\nother option is gms (means\
    \ GAMESS-US)]\n"
  type: string
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: Output file name
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- espgen.py
