class: CommandLineTool
id: nseg.cwl
inputs:
- id: in_input_sequence_represented
  doc: "each input sequence is represented by a single output\nsequence with low-complexity\
    \ regions replaced by\nstrings of 'x' characters"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_number_sequence_charactersline
  doc: number of sequence characters/line (default 60)
  type: long?
  inputBinding:
    prefix: -c
- id: in_minimum_length_highcomplexity
  doc: "minimum length for a high-complexity segment\n(default 0).  Shorter segments\
    \ are merged with adjacent\nlow-complexity segments"
  type: long?
  inputBinding:
    prefix: -m
- id: in_show_only_segments_format
  doc: show only low-complexity segments (fasta format)
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_show_segments_fasta_format
  doc: show all segments (fasta format)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_add_complexity_information
  doc: do not add complexity information to the header line
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_show_segments_default
  doc: show overlapping low-complexity segments (default merge)
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_maximum_trimming_raw
  doc: maximum trimming of raw segment (default 100)
  type: long?
  inputBinding:
    prefix: -t
- id: in_prettyprint_segmented_tree_format
  doc: prettyprint each segmented sequence (tree format)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_prettyprint_segmented_block_format
  doc: prettyprint each segmented sequence (block format)
  type: boolean?
  inputBinding:
    prefix: -q
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
hints: []
cwlVersion: v1.1
baseCommand:
- nseg
