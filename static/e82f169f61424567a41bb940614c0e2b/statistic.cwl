class: CommandLineTool
id: statistic.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: statistic_library
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: destination
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: n_gram
  doc: Assumes that n-grams in SOURCE file have N tokens each. N = 2 by default.
  type: string
  inputBinding:
    prefix: --ngram
- id: set_freq_combo
  doc: Uses the frequency combinations in FILE to decode the "meaning" of the frequency
    values in SOURCE. By default, the default frequency combinations output by count.pl
    for ngrams of size N are assumed.
  type: File
  inputBinding:
    prefix: --set_freq_combo
- id: get_freq_combo
  doc: Prints out the frequency combinations being used to FILE. If frequency combinations
    have been provided through --set_freq_combo switch above these are output; otherwise
    the default combinations being used are output.
  type: File
  inputBinding:
    prefix: --get_freq_combo
- id: frequency
  doc: Ignores all n-grams with frequency < N.
  type: string
  inputBinding:
    prefix: --frequency
- id: rank
  doc: Shows only n-grams with rank <= N.
  type: string
  inputBinding:
    prefix: --rank
- id: precision
  doc: Displays values upto N places of decimal.
  type: string
  inputBinding:
    prefix: --precision
- id: score
  doc: Shows only n-grams which have score >= N.
  type: string
  inputBinding:
    prefix: --score
- id: extended
  doc: Outputs chosen parameters in "extended" format, and retains any extended data
    in SOURCE. By default, suppresses any extended information in SOURCE, and outputs
    no new parameters.
  type: boolean
  inputBinding:
    prefix: --extended
- id: format
  doc: Creates formatted output.
  type: boolean
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- statistic.pl
