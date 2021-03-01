class: CommandLineTool
id: amb2chm_par.py.cwl
inputs:
- id: in_o
  doc: '[--nat use_new_attype]'
  type: File?
  inputBinding:
    prefix: -o
- id: in_the_input_file
  doc: The input file
  type: File?
  inputBinding:
    prefix: -i
- id: in_input_file_parameter
  doc: "The input file is a parameter file (1) or just contains file\nnames (2) [default:\
    \ 2]"
  type: File?
  inputBinding:
    prefix: -f
- id: in_nat
  doc: "Whether to perform atom type transfer [0 means no, 1 means\nyes, default:\
    \ 1]\n"
  type: long?
  inputBinding:
    prefix: --nat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: '[--nat use_new_attype]'
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints: []
cwlVersion: v1.1
baseCommand:
- amb2chm_par.py
