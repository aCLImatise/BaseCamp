class: CommandLineTool
id: anvi_gen_variability_network.cwl
inputs:
- id: in_input_file
  doc: "The anvi'o variability profile. Please see `anvi-gen-\nvariability-profile`\
    \ to generate one."
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_max_num_unique_positions
  doc: "Maximum number of unique positions to be used in the\nnetwork. This may be\
    \ one way to avoid extremely large\nnetwork descriptions that would defeat the\
    \ purpose of\na quick visualization. If there are more unique\npositions in the\
    \ variability profile, the program will\nrandomly select a subset of them to match\
    \ the `max-\nnum-unique-positions`. The default is 0, which means\nall positions\
    \ should be reported. Remember that the\nnumber of nodes in the network will also\
    \ depend on the\nnumber of samples described in the variability\nprofile."
  type: long?
  inputBinding:
    prefix: --max-num-unique-positions
- id: in_output_file
  doc: "File path to store results.\n"
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "File path to store results.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-variability-network
