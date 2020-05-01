#!/usr/bin/env cwl-runner

baseCommand:
- anvi-gen-variability-network
class: CommandLineTool
cwlVersion: v1.0
id: anvi-gen-variability-network
inputs:
- doc: The anvi'o variability profile. Please see `anvi-gen- variability-profile`
    to generate one.
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: Maximum number of unique positions to be used in the network. This may be one
    way to avoid extremely large network descriptions that would defeat the purpose
    of a quick visualization. If there are more unique positions in the variability
    profile, the program will randomly select a subset of them to match the `max-
    num-unique-positions`. The default is 0, which means all positions should be reported.
    Remember that the number of nodes in the network will also depend on the number
    of samples described in the variability profile.
  id: max_num_unique_positions
  inputBinding:
    prefix: --max-num-unique-positions
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
