class: CommandLineTool
id: leaff.cwl
inputs:
- id: in_use_sequence_f
  doc: ":     use sequence in 'file' (-F is also allowed for historical reasons)"
  type: File
  inputBinding:
    prefix: -f
- id: in__read_actions
  doc: ":     read actions from 'file'"
  type: File
  inputBinding:
    prefix: -A
- id: in_print_number_sequences
  doc: ':          print the number of sequences in the fasta'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_print_index_labelling
  doc: ":     print an index, labelling the source 'name'"
  type: string
  inputBinding:
    prefix: -i
- id: in_insert_newline_lettersif
  doc: "<#>:      insert a newline every 60 letters\n(if the next arg is a number,\
    \ newlines are inserted every\nn letters, e.g., -6 80.  Disable line breaks with\
    \ -6 0,\nor just don't use -6!)"
  type: boolean
  inputBinding:
    prefix: '-6'
- id: in_end_print_bases
  doc: "end:  Print only the bases from position 'beg' to position 'end'\n(space based,\
    \ relative to the FORWARD sequence!)  If\nbeg == end, then the entire sequence\
    \ is printed.  It is an\nerror to specify beg > end, or beg > len, or end > len."
  type: string
  inputBinding:
    prefix: -e
- id: in_ends
  doc: "Print n bases from each end of the sequence.  One input\nsequence generates\
    \ two output sequences, with '_5' or '_3'\nappended to the ID.  If 2n >= length\
    \ of the sequence, the\nsequence itself is printed, no ends are extracted (they\n\
    overlap)."
  type: long
  inputBinding:
    prefix: -ends
- id: in__complement_sequences
  doc: ':          complement the sequences'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_dont_print_defline
  doc: ":          DON'T print the defline"
  type: boolean
  inputBinding:
    prefix: -H
- id: in__reverse_sequences
  doc: ':          reverse the sequences'
  type: boolean
  inputBinding:
    prefix: -R
- id: in__uppercase_bases
  doc: ':          uppercase all bases'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_s_l_print
  doc: 's l:    print n randomly generated sequences, 0 < s <= length <= l'
  type: long
  inputBinding:
    prefix: -G
- id: in_l_print_sequences_s
  doc: 'l:      print all sequences such that s <= length < l'
  type: long
  inputBinding:
    prefix: -L
- id: in_h_print_sequences
  doc: "h:      print all sequences such that l <= % N composition < h\n(NOTE 0.0\
    \ <= l < h < 100.0)\n(NOTE that you cannot print sequences with 100% N\nThis is\
    \ a useful bug)."
  type: double
  inputBinding:
    prefix: -N
- id: in_print_sequences_seqid
  doc: ":     print sequences from the seqid list in 'file'"
  type: File
  inputBinding:
    prefix: -q
- id: in_print_picked_sequences
  doc: ":      print 'num' randomly picked sequences"
  type: long
  inputBinding:
    prefix: -r
- id: in_print_single_sequence
  doc: ":    print the single sequence 'seqid'"
  type: string
  inputBinding:
    prefix: -s
- id: in_l_print_sequences_id
  doc: "l:      print all the sequences from ID 'f' to 'l' (inclusive)"
  type: string
  inputBinding:
    prefix: -S
- id: in_print_sequences_whole
  doc: ':          print all sequences (do the whole file)'
  type: boolean
  inputBinding:
    prefix: -W
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- leaff
