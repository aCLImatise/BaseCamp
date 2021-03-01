class: CommandLineTool
id: oligoscreen.cwl
inputs:
- id: in_dna
  doc: "This flag only matters if the input file is a sequence file and has been\n\
    specified as such. Specify that the sequence is DNA, and DNA parameters are\n\
    to be used.\nDefault is to use RNA parameters."
  type: boolean?
  inputBinding:
    prefix: --DNA
- id: in_temperature
  doc: "Specify the temperature at which calculation takes place in Kelvin.\nDefault\
    \ is 310.15 K, which is 37 degrees C.\n"
  type: boolean?
  inputBinding:
    prefix: --temperature
- id: in_list_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_report_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- oligoscreen
