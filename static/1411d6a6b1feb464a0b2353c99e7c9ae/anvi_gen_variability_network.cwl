class: CommandLineTool
id: anvi_gen_variability_network.cwl
inputs:
- id: input_file
  doc: The anvi'o variability profile. Please see `anvi-gen- variability-profile`
    to generate one.
  type: string
  inputBinding:
    prefix: --input-file
- id: max_num_unique_positions
  doc: Maximum number of unique positions to be used in the network. This may be one
    way to avoid extremely large network descriptions that would defeat the purpose
    of a quick visualization. If there are more unique positions in the variability
    profile, the program will randomly select a subset of them to match the `max-
    num-unique-positions`. The default is 0, which means all positions should be reported.
    Remember that the number of nodes in the network will also depend on the number
    of samples described in the variability profile.
  type: string
  inputBinding:
    prefix: --max-num-unique-positions
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-variability-network
