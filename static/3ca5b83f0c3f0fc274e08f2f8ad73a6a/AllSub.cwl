class: CommandLineTool
id: AllSub.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault\
    \ is to use RNA parameters."
  type: boolean
  inputBinding:
    prefix: --DNA
- id: in_absolute
  doc: "Specify a maximum absolute energy difference.\nDefault is determined by the\
    \ length of the sequence."
  type: boolean
  inputBinding:
    prefix: --absolute
- id: in_constraint
  doc: "Specify a constraints file to be applied.\nDefault is to have no constraints\
    \ applied."
  type: boolean
  inputBinding:
    prefix: --constraint
- id: in_percent
  doc: "Specify a maximum percent energy difference.\nDefault is determined by the\
    \ length of the sequence."
  type: boolean
  inputBinding:
    prefix: --percent
- id: in_temperature
  doc: "Specify the temperature at which calculation takes place in Kelvin.\nDefault\
    \ is 310.15 K, which is 37 degrees C.\n"
  type: boolean
  inputBinding:
    prefix: --temperature
- id: in_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- AllSub
