class: CommandLineTool
id: ../../../bipartition.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault\
    \ is to use RNA parameters."
  type: boolean
  inputBinding:
    prefix: --DNA
- id: in_temperature
  doc: "Specify the temperature at which calculation takes place in Kelvin.\nDefault\
    \ is 310.15 K, which is 37 degrees C.\n"
  type: boolean
  inputBinding:
    prefix: --temperature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bipartition
