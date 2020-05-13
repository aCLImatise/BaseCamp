class: CommandLineTool
id: count.pl.cwl
inputs:
- id: n_gram
  doc: Creates n-grams of N tokens each. N = 2 by default.
  type: string
  inputBinding:
    prefix: --ngram
- id: window
  doc: Sets window size to N. Defaults to n-gram size above.
  type: string
  inputBinding:
    prefix: --window
- id: token
  doc: Uses regular expressions in FILE to create tokens. By default two regular expressions
    are provided (see README).
  type: File
  inputBinding:
    prefix: --token
- id: non_token
  doc: Removes all characters sequences that match Perl regular expressions specified
    in FILE.
  type: File
  inputBinding:
    prefix: --nontoken
- id: set_freq_combo
  doc: Uses the frequency combinations in FILE to decide which combinations of tokens
    to count in a given n-gram. By default, all combinations are counted.
  type: File
  inputBinding:
    prefix: --set_freq_combo
- id: get_freq_combo
  doc: Prints out the frequency combinations used to FILE. If frequency combinations
    have been provided through --set_freq_combo switch above these are output; otherwise
    the default combinations being used are output.
  type: File
  inputBinding:
    prefix: --get_freq_combo
- id: stop
  doc: Removes n-grams containing at least one (in OR mode) or all stop words (in
    AND mode). Stop words should be declared as Perl Regular expressions in FILE.
  type: File
  inputBinding:
    prefix: --stop
- id: frequency
  doc: Does not display n-grams that occur less than N times.
  type: string
  inputBinding:
    prefix: --frequency
- id: u_frequency
  doc: Does not display n-grams that occur more than N times. Default value is 100,000,000
  type: string
  inputBinding:
    prefix: --ufrequency
- id: remove
  doc: Ignores n-grams that occur less than N times. Ignored n-grams are not counted
    and so do not affect counts and frequencies.
  type: string
  inputBinding:
    prefix: --remove
- id: u_remove
  doc: Ignores n-grams that occur more than N times. Ignored n-grams are not counted
    and so do not affect counts and frequencies. Default value is 100,000,000.
  type: string
  inputBinding:
    prefix: --uremove
- id: new_line
  doc: Prevents n-grams from spanning across the new-line character.
  type: boolean
  inputBinding:
    prefix: --newLine
- id: token_list
  doc: Prints out all n-grams to the output file.
  type: boolean
  inputBinding:
    prefix: --tokenlist
- id: histogram
  doc: Outputs histogram to FILE. Tabulates how many times n-grams of a given frequency
    have occurred.
  type: File
  inputBinding:
    prefix: --histogram
- id: recurse
  doc: If SOURCE is a directory, uses all files in SOURCE as well as all subdirectories
    of SOURCE recursively as input.
  type: boolean
  inputBinding:
    prefix: --recurse
- id: extended
  doc: Outputs values of the above switches, if default values are not used.
  type: boolean
  inputBinding:
    prefix: --extended
- id: verbose
  doc: Outputs to stderr information about current program status.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- count.pl
