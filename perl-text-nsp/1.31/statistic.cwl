#!/usr/bin/env cwl-runner

baseCommand:
- statistic.pl
class: CommandLineTool
cwlVersion: v1.0
id: statistic.pl
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: statistic_library
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: destination
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: source
  inputBinding:
    position: 3
  type: string
- doc: Assumes that n-grams in SOURCE file have N tokens each. N = 2 by default.
  id: n_gram
  inputBinding:
    prefix: --ngram
  type: string
- doc: Uses the frequency combinations in FILE to decode the "meaning" of the frequency
    values in SOURCE. By default, the default frequency combinations output by count.pl
    for ngrams of size N are assumed.
  id: set_freq_combo
  inputBinding:
    prefix: --set_freq_combo
  type: File
- doc: Prints out the frequency combinations being used to FILE. If frequency combinations
    have been provided through --set_freq_combo switch above these are output; otherwise
    the default combinations being used are output.
  id: get_freq_combo
  inputBinding:
    prefix: --get_freq_combo
  type: File
- doc: Ignores all n-grams with frequency < N.
  id: frequency
  inputBinding:
    prefix: --frequency
  type: string
- doc: Shows only n-grams with rank <= N.
  id: rank
  inputBinding:
    prefix: --rank
  type: string
- doc: Displays values upto N places of decimal.
  id: precision
  inputBinding:
    prefix: --precision
  type: string
- doc: Shows only n-grams which have score >= N.
  id: score
  inputBinding:
    prefix: --score
  type: string
- doc: Outputs chosen parameters in "extended" format, and retains any extended data
    in SOURCE. By default, suppresses any extended information in SOURCE, and outputs
    no new parameters.
  id: extended
  inputBinding:
    prefix: --extended
  type: boolean
- doc: Creates formatted output.
  id: format
  inputBinding:
    prefix: --format
  type: boolean
