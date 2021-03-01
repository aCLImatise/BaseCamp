class: CommandLineTool
id: count.pl.cwl
inputs:
- id: in_n_gram
  doc: Creates n-grams of N tokens each. N = 2 by
  type: long?
  inputBinding:
    prefix: --ngram
- id: in_token
  doc: "Uses regular expressions in FILE to create\ntokens. By default two regular\
    \ expressions\nare provided (see README)."
  type: File?
  inputBinding:
    prefix: --token
- id: in_non_token
  doc: "Removes all characters sequences that match\nPerl regular expressions specified\
    \ in FILE."
  type: File?
  inputBinding:
    prefix: --nontoken
- id: in_set_freq_combo
  doc: "Uses the frequency combinations in FILE to\ndecide which combinations of tokens\
    \ to\ncount in a given n-gram. By default, all\ncombinations are counted."
  type: File?
  inputBinding:
    prefix: --set_freq_combo
- id: in_get_freq_combo
  doc: "Prints out the frequency combinations used\nto FILE. If frequency combinations\
    \ have been\nprovided through --set_freq_combo switch above\nthese are output;\
    \ otherwise the default\ncombinations being used are output."
  type: File?
  inputBinding:
    prefix: --get_freq_combo
- id: in_stop
  doc: "Removes n-grams containing at least one (in\nOR mode) or all stop words (in\
    \ AND mode).\nStop words should be declared as Perl Regular\nexpressions in FILE."
  type: File?
  inputBinding:
    prefix: --stop
- id: in_frequency
  doc: "Does not display n-grams that occur less\nthan N times."
  type: string?
  inputBinding:
    prefix: --frequency
- id: in_u_frequency
  doc: "Does not display n-grams that occur more\nthan N times. Default value is 100,000,000"
  type: long?
  inputBinding:
    prefix: --ufrequency
- id: in_remove
  doc: "Ignores n-grams that occur less than N\ntimes. Ignored n-grams are not counted\
    \ and\nso do not affect counts and frequencies."
  type: string?
  inputBinding:
    prefix: --remove
- id: in_u_remove
  doc: "Ignores n-grams that occur more than N\ntimes. Ignored n-grams are not counted\
    \ and\nso do not affect counts and frequencies.\nDefault value is 100,000,000."
  type: long?
  inputBinding:
    prefix: --uremove
- id: in_new_line
  doc: "Prevents n-grams from spanning across the\nnew-line character."
  type: boolean?
  inputBinding:
    prefix: --newLine
- id: in_token_list
  doc: Prints out all n-grams to the output file.
  type: File?
  inputBinding:
    prefix: --tokenlist
- id: in_histogram
  doc: "Outputs histogram to FILE. Tabulates how\nmany times n-grams of a given frequency\n\
    have occurred."
  type: File?
  inputBinding:
    prefix: --histogram
- id: in_recurse
  doc: "If SOURCE is a directory, uses all files\nin SOURCE as well as all subdirectories\
    \ of\nSOURCE recursively as input."
  type: boolean?
  inputBinding:
    prefix: --recurse
- id: in_extended
  doc: "Outputs values of the above switches, if\ndefault values are not used."
  type: boolean?
  inputBinding:
    prefix: --extended
- id: in_verbose
  doc: "Outputs to stderr information about\ncurrent program status."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_default_dot
  doc: --window N         Sets window size to N. Defaults to n-gram
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_get_freq_combo
  doc: "Prints out the frequency combinations used\nto FILE. If frequency combinations\
    \ have been\nprovided through --set_freq_combo switch above\nthese are output;\
    \ otherwise the default\ncombinations being used are output."
  type: File?
  outputBinding:
    glob: $(inputs.in_get_freq_combo)
- id: out_token_list
  doc: Prints out all n-grams to the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_token_list)
hints: []
cwlVersion: v1.1
baseCommand:
- count.pl
