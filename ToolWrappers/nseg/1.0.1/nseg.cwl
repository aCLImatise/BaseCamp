class: CommandLineTool
id: nseg.cwl
inputs:
- id: in_input_sequence_represented
  doc: "each input sequence is represented by a single output\nsequence with low-complexity\
    \ regions replaced by\nstrings of 'x' characters"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_number_sequence_charactersline
  doc: "number of sequence characters/line (default 60)\n-m <size> minimum length\
    \ for a high-complexity segment\n(default 0).  Shorter segments are merged with\
    \ adjacent\nlow-complexity segments\n-l  show only low-complexity segments (fasta\
    \ format)\n-h  show only high-complexity segments (fasta format)\n-a  show all\
    \ segments (fasta format)\n-n  do not add complexity information to the header\
    \ line\n-o  show overlapping low-complexity segments (default merge)\n-t <maxtrim>\
    \ maximum trimming of raw segment (default 100)\n-p  prettyprint each segmented\
    \ sequence (tree format)\n-q  prettyprint each segmented sequence (block format)\n\
    -z <period>\n"
  type: long
  inputBinding:
    prefix: -c
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_window
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_lo_cut
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_hi_cut
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nseg
