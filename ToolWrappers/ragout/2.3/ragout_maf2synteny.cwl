class: CommandLineTool
id: ragout_maf2synteny.cwl
inputs:
- id: in_path_output_directory
  doc: path to the output directory [default = .]
  type: File
  inputBinding:
    prefix: -o
- id: in_path_file_custom
  doc: path to a file with custom simplification parameters [default = not set]
  type: File
  inputBinding:
    prefix: -s
- id: in_commaseparated_list_synteny
  doc: comma-separated list of synteny block scales [default = 5000]
  type: long
  inputBinding:
    prefix: -b
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_maf_file
  doc: path to maf file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: path to the output directory [default = .]
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_directory)
cwlVersion: v1.1
baseCommand:
- ragout-maf2synteny
