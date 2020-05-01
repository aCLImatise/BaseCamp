#!/usr/bin/env cwl-runner

baseCommand:
- count.pl
class: CommandLineTool
cwlVersion: v1.0
id: count.pl
inputs:
- doc: Creates n-grams of N tokens each. N = 2 by default.
  id: n_gram
  inputBinding:
    prefix: --ngram
  type: string
- doc: Sets window size to N. Defaults to n-gram size above.
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: Uses regular expressions in FILE to create tokens. By default two regular expressions
    are provided (see README).
  id: token
  inputBinding:
    prefix: --token
  type: File
- doc: Removes all characters sequences that match Perl regular expressions specified
    in FILE.
  id: non_token
  inputBinding:
    prefix: --nontoken
  type: File
- doc: Uses the frequency combinations in FILE to decide which combinations of tokens
    to count in a given n-gram. By default, all combinations are counted.
  id: set_freq_combo
  inputBinding:
    prefix: --set_freq_combo
  type: File
- doc: Prints out the frequency combinations used to FILE. If frequency combinations
    have been provided through --set_freq_combo switch above these are output; otherwise
    the default combinations being used are output.
  id: get_freq_combo
  inputBinding:
    prefix: --get_freq_combo
  type: File
- doc: Removes n-grams containing at least one (in OR mode) or all stop words (in
    AND mode). Stop words should be declared as Perl Regular expressions in FILE.
  id: stop
  inputBinding:
    prefix: --stop
  type: File
- doc: Does not display n-grams that occur less than N times.
  id: frequency
  inputBinding:
    prefix: --frequency
  type: string
- doc: Does not display n-grams that occur more than N times. Default value is 100,000,000
  id: u_frequency
  inputBinding:
    prefix: --ufrequency
  type: string
- doc: Ignores n-grams that occur less than N times. Ignored n-grams are not counted
    and so do not affect counts and frequencies.
  id: remove
  inputBinding:
    prefix: --remove
  type: string
- doc: Ignores n-grams that occur more than N times. Ignored n-grams are not counted
    and so do not affect counts and frequencies. Default value is 100,000,000.
  id: u_remove
  inputBinding:
    prefix: --uremove
  type: string
- doc: Prevents n-grams from spanning across the new-line character.
  id: new_line
  inputBinding:
    prefix: --newLine
  type: boolean
- doc: Prints out all n-grams to the output file.
  id: token_list
  inputBinding:
    prefix: --tokenlist
  type: boolean
- doc: Outputs histogram to FILE. Tabulates how many times n-grams of a given frequency
    have occurred.
  id: histogram
  inputBinding:
    prefix: --histogram
  type: File
- doc: If SOURCE is a directory, uses all files in SOURCE as well as all subdirectories
    of SOURCE recursively as input.
  id: recurse
  inputBinding:
    prefix: --recurse
  type: boolean
- doc: Outputs values of the above switches, if default values are not used.
  id: extended
  inputBinding:
    prefix: --extended
  type: boolean
- doc: Outputs to stderr information about current program status.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
