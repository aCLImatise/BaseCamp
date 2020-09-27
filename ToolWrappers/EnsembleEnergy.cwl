class: CommandLineTool
id: EnsembleEnergy.cwl
inputs:
- id: in_dna
  doc: "This flag only matters if the input file is a sequence file and has been\n\
    specified as such. Specify that the sequence is DNA, and DNA parameters are\n\
    to be used.\nDefault is to use RNA parameters."
  type: boolean
  inputBinding:
    prefix: --DNA
- id: in_silent
  doc: "Suppress all progress messages except the final ensemble energy result.\n\
    Note that this does NOT suppress errors."
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_sequence
  doc: Identify the input file format as a sequence file.
  type: boolean
  inputBinding:
    prefix: --sequence
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- EnsembleEnergy
