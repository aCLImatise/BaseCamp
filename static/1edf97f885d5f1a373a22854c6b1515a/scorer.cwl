class: CommandLineTool
id: scorer.cwl
inputs:
- id: in_exact
  doc: "Specify exact comparison when structure comparison is scored.\nDefault is\
    \ to allow flexible pairings."
  type: boolean?
  inputBinding:
    prefix: --exact
- id: in_print
  doc: "Prints the output file to standard output. This won't override the default\n\
    behavior of writing to a file."
  type: File?
  inputBinding:
    prefix: --print
- id: in_number
  doc: "Specify the index of a particular structure in the predicted CT to be\ncompared\
    \ with the accepted CT, one-indexed.\nDefault is -1, which signifies all structures\
    \ output to one file.\n"
  type: File?
  inputBinding:
    prefix: --number
- id: in_predicted_ct
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_accepted_ct
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_print
  doc: "Prints the output file to standard output. This won't override the default\n\
    behavior of writing to a file."
  type: File?
  outputBinding:
    glob: $(inputs.in_print)
- id: out_number
  doc: "Specify the index of a particular structure in the predicted CT to be\ncompared\
    \ with the accepted CT, one-indexed.\nDefault is -1, which signifies all structures\
    \ output to one file.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_number)
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- scorer
