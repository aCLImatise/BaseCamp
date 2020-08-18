class: CommandLineTool
id: ../../../ragout_maf2synteny.cwl
inputs:
- id: path_output_directory
  doc: path to the output directory [default = .]
  type: string
  inputBinding:
    prefix: -o
- id: path_file_custom
  doc: path to a file with custom simplification parameters [default = not set]
  type: string
  inputBinding:
    prefix: -s
- id: commaseparated_list_synteny
  doc: comma-separated list of synteny block scales [default = 5000]
  type: string
  inputBinding:
    prefix: -b
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: maf_file
  doc: path to maf file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ragout-maf2synteny
