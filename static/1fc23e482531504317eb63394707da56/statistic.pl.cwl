class: CommandLineTool
id: statistic.pl.cwl
inputs:
- id: in_n_gram
  doc: "Assumes that n-grams in SOURCE file have N\ntokens each. N = 2 by default."
  type: File
  inputBinding:
    prefix: --ngram
- id: in_set_freq_combo
  doc: "Uses the frequency combinations in FILE to\ndecode the \"meaning\" of the\
    \ frequency\nvalues in SOURCE. By default, the default\nfrequency combinations\
    \ output by count.pl\nfor ngrams of size N are assumed."
  type: File
  inputBinding:
    prefix: --set_freq_combo
- id: in_get_freq_combo
  doc: "Prints out the frequency combinations being\nused to FILE. If frequency combinations\
    \ have\nbeen provided through --set_freq_combo switch\nabove these are output;\
    \ otherwise the default\ncombinations being used are output."
  type: File
  inputBinding:
    prefix: --get_freq_combo
- id: in_frequency
  doc: Ignores all n-grams with frequency < N.
  type: string
  inputBinding:
    prefix: --frequency
- id: in_rank
  doc: Shows only n-grams with rank <= N.
  type: string
  inputBinding:
    prefix: --rank
- id: in_precision
  doc: Displays values upto N places of decimal.
  type: double
  inputBinding:
    prefix: --precision
- id: in_score
  doc: Shows only n-grams which have score >= N.
  type: string
  inputBinding:
    prefix: --score
- id: in_extended
  doc: "Outputs chosen parameters in \"extended\"\nformat, and retains any extended\
    \ data in\nSOURCE. By default, suppresses any extended\ninformation in SOURCE,\
    \ and outputs no new\nparameters."
  type: boolean
  inputBinding:
    prefix: --extended
- id: in_format
  doc: Creates formatted output.
  type: boolean
  inputBinding:
    prefix: --format
- id: in_statistic_library
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_destination
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_get_freq_combo
  doc: "Prints out the frequency combinations being\nused to FILE. If frequency combinations\
    \ have\nbeen provided through --set_freq_combo switch\nabove these are output;\
    \ otherwise the default\ncombinations being used are output."
  type: File
  outputBinding:
    glob: $(inputs.in_get_freq_combo)
cwlVersion: v1.1
baseCommand:
- statistic.pl
