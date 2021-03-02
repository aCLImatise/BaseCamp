class: CommandLineTool
id: fasta_ushuffle.cwl
inputs:
- id: in_print_original_unshuffled
  doc: Print original (unshuffled) in output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_specifies_let_size
  doc: specifies the let size
  type: long?
  inputBinding:
    prefix: -k
- id: in_specifies_seed_random
  doc: specifies the seed for random number generator.
  type: long?
  inputBinding:
    prefix: -s
- id: in_input_sequence_print
  doc: "For each input sequence, print N permutations (default is 1).\nUse this only\
    \ for debugging."
  type: long?
  inputBinding:
    prefix: -n
- id: in_retry_n_times
  doc: Retry N times to find a new shuffle (Default is 10). After N retries, a warning
    is printed, and a non-shuffled sequence will be written.
  type: long?
  inputBinding:
    prefix: -r
- id: in_ag_tag_tag_tag_tag_tagtagtagtagtagtagagtg
  doc: '>dummy2'
  type: string
  inputBinding:
    position: 0
- id: in_ctgagagtcacacatgattttaca_aca_acc_at_gaag
  doc: 'This is not a valid input file:'
  type: string
  inputBinding:
    position: 1
- id: in_agtagtagtagtagtagtagtag_tag
  doc: TAGTAGAGTG
  type: string
  inputBinding:
    position: 0
- id: in_ctgagagtcacacatgattttaca_ac
  doc: AACCATGAAG
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_print_original_unshuffled
  doc: Print original (unshuffled) in output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_print_original_unshuffled)
hints: []
cwlVersion: v1.1
baseCommand:
- fasta_ushuffle
