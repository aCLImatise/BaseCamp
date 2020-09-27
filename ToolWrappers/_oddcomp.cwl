class: CommandLineTool
id: _oddcomp.cwl
inputs:
- id: in_full_window
  doc: "toggle     [N] Set this option on (Y) if you want the\nwindow size to be set\
    \ to the length of the\ncurrent protein. Otherwise, leave this\noption unset,\
    \ in which case you'll be\nprompted for a window size to use."
  type: boolean
  inputBinding:
    prefix: -fullwindow
- id: in_count_dot
  doc: Thus if you want to count frequencies in a
  type: string
  inputBinding:
    position: 0
- id: in_words_dot
  doc: 'General qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _oddcomp
