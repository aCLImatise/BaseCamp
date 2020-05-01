#!/usr/bin/env cwl-runner

baseCommand:
- anvi-analyze-synteny
class: CommandLineTool
cwlVersion: v1.0
id: anvi-analyze-synteny
inputs:
- doc: 'The range of window sizes of Ngrams to analyze for synteny patterns.Please
    format the window-range as x:y (e.g. Window sizes 2 to 4 would be denoted as:
    2:4)'
  id: n_gram_window_range
  inputBinding:
    prefix: --ngram-window-range
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Provide this flag if you want anvi-analyze-synteny to take into account Ngrams
    that contain gene calls that have no annotation.
  id: analyze_unknown_functions
  inputBinding:
    prefix: --analyze-unknown-functions
  type: boolean
