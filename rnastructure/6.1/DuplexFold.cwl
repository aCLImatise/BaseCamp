class: CommandLineTool
id: ../../../DuplexFold.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault\
    \ is to use RNA parameters."
  type: boolean
  inputBinding:
    prefix: --DNA
- id: in_loop
  doc: "Specify a maximum internal/bulge loop size.\nDefault is 6 unpaired numcleotides."
  type: boolean
  inputBinding:
    prefix: --loop
- id: in_maximum
  doc: "Specify a maximum number of structures.\nDefault is 10 structures."
  type: boolean
  inputBinding:
    prefix: --maximum
- id: in_percent
  doc: "Specify a maximum percent energy difference.\nDefault is 40 percent (specified\
    \ as 40, not 0.4)."
  type: boolean
  inputBinding:
    prefix: --percent
- id: in_temperature
  doc: "Specify the temperature at which calculation takes place in Kelvin.\nDefault\
    \ is 310.15 K, which is 37 degrees C."
  type: boolean
  inputBinding:
    prefix: --temperature
- id: in_window
  doc: "Specify a window size.\nDefault is 0 nucleotides.\n"
  type: boolean
  inputBinding:
    prefix: --window
- id: in_seq_file_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_seq_file_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DuplexFold
