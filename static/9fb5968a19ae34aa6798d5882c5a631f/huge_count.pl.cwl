class: CommandLineTool
id: huge_count.pl.cwl
inputs:
- id: in_token_list
  doc: This option is required. Print out all bigrams list.
  type: boolean?
  inputBinding:
    prefix: --tokenlist
- id: in_split
  doc: Number of bigrams for each seperated bigrams file.
  type: long?
  inputBinding:
    prefix: --split
- id: in_token
  doc: "Specify a file containing Perl regular expressions that define the\ntokenization\
    \ scheme for counting."
  type: File?
  inputBinding:
    prefix: --token
- id: in_non_token
  doc: "Specify a file containing Perl regular expressions of non-token\nsequences\
    \ that are removed prior to tokenization."
  type: File?
  inputBinding:
    prefix: --nontoken
- id: in_stop
  doc: "Specify a file containing Perl regular expressions of stop words\nthat are\
    \ to be removed from the output bigrams."
  type: File?
  inputBinding:
    prefix: --stop
- id: in_window
  doc: Specify the window size for counting.
  type: long?
  inputBinding:
    prefix: --window
- id: in_remove
  doc: "Bigrams with counts less than L will be removed from the sample.\nremove must\
    \ be smaller than uremove."
  type: string?
  inputBinding:
    prefix: --remove
- id: in_u_remove
  doc: "Bigrams with counts more than L will be removed from the sample.\nuremove\
    \ must be bigger than remove."
  type: string?
  inputBinding:
    prefix: --uremove
- id: in_frequency
  doc: "Bigrams with counts less than F will not be displayed.\nfrequency must be\
    \ smaller than ufrequency."
  type: string?
  inputBinding:
    prefix: --frequency
- id: in_u_frequency
  doc: "Bigrams with counts more than F will not be displayed.\nufrequency must be\
    \ bigger than frequency."
  type: string?
  inputBinding:
    prefix: --ufrequency
- id: in_new_line
  doc: Prevents bigrams from spanning across the new-line characters.
  type: boolean?
  inputBinding:
    prefix: --newLine
- id: in_destination
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_source
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stop
  doc: "Specify a file containing Perl regular expressions of stop words\nthat are\
    \ to be removed from the output bigrams."
  type: File?
  outputBinding:
    glob: $(inputs.in_stop)
hints: []
cwlVersion: v1.1
baseCommand:
- huge-count.pl
