class: CommandLineTool
id: ../../../fasta_ushuffle.cwl
inputs:
- id: print_original_unshuffled
  doc: Print original (unshuffled) in output file.
  type: boolean
  inputBinding:
    prefix: -o
- id: specifies_let_size
  doc: specifies the let size
  type: string
  inputBinding:
    prefix: -k
- id: specifies_seed_random
  doc: specifies the seed for random number generator.
  type: string
  inputBinding:
    prefix: -s
- id: input_sequence_print
  doc: For each input sequence, print N permutations (default is 1). Use this only
    for debugging.
  type: string
  inputBinding:
    prefix: -n
- id: retry_n_times
  doc: Retry N times to find a new shuffle (Default is 10). After N retries, a warning
    is printed, and a non-shuffled sequence will be written.
  type: string
  inputBinding:
    prefix: -r
- id: input_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_ushuffle
