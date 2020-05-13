class: CommandLineTool
id: anvi_analyze_synteny.cwl
inputs:
- id: n_gram_window_range
  doc: 'The range of window sizes of Ngrams to analyze for synteny patterns.Please
    format the window-range as x:y (e.g. Window sizes 2 to 4 would be denoted as:
    2:4)'
  type: string
  inputBinding:
    prefix: --ngram-window-range
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: analyze_unknown_functions
  doc: Provide this flag if you want anvi-analyze-synteny to take into account Ngrams
    that contain gene calls that have no annotation.
  type: boolean
  inputBinding:
    prefix: --analyze-unknown-functions
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-analyze-synteny
