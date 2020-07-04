class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/leaff.cwl
inputs:
- id: use_sequence_f
  doc: ":     use sequence in 'file' (-F is also allowed for historical reasons)"
  type: File
  inputBinding:
    prefix: -f
- id: _read_actions
  doc: ":     read actions from 'file'"
  type: File
  inputBinding:
    prefix: -A
- id: print_number_sequences
  doc: ':          print the number of sequences in the fasta'
  type: boolean
  inputBinding:
    prefix: -d
- id: print_index_labelling
  doc: ":     print an index, labelling the source 'name'"
  type: string
  inputBinding:
    prefix: -i
- id: insert_newline_letters
  doc: "<#>:      insert a newline every 60 letters (if the next arg is a number,\
    \ newlines are inserted every n letters, e.g., -6 80.  Disable line breaks with\
    \ -6 0, or just don't use -6!)"
  type: boolean
  inputBinding:
    prefix: '-6'
- id: end_print_bases
  doc: "end:  Print only the bases from position 'beg' to position 'end' (space based,\
    \ relative to the FORWARD sequence!)  If beg == end, then the entire sequence\
    \ is printed.  It is an error to specify beg > end, or beg > len, or end > len."
  type: string
  inputBinding:
    prefix: -e
- id: ends
  doc: Print n bases from each end of the sequence.  One input sequence generates
    two output sequences, with '_5' or '_3' appended to the ID.  If 2n >= length of
    the sequence, the sequence itself is printed, no ends are extracted (they overlap).
  type: string
  inputBinding:
    prefix: -ends
- id: _complement_sequences
  doc: ':          complement the sequences'
  type: boolean
  inputBinding:
    prefix: -C
- id: dont_print_defline
  doc: ":          DON'T print the defline"
  type: boolean
  inputBinding:
    prefix: -H
- id: _reverse_sequences
  doc: ':          reverse the sequences'
  type: boolean
  inputBinding:
    prefix: -R
- id: _uppercase_bases
  doc: ':          uppercase all bases'
  type: boolean
  inputBinding:
    prefix: -u
- id: s_l_print
  doc: 's l:    print n randomly generated sequences, 0 < s <= length <= l'
  type: string
  inputBinding:
    prefix: -G
- id: l_print_sequences
  doc: 'l:      print all sequences such that s <= length < l'
  type: string
  inputBinding:
    prefix: -L
- id: print_sequences_note
  doc: 'h:      print all sequences such that l <= % N composition < h (NOTE 0.0 <=
    l < h < 100.0) (NOTE that you cannot print sequences with 100% N This is a useful
    bug).'
  type: string
  inputBinding:
    prefix: -N
- id: print_sequences_seqid
  doc: ":     print sequences from the seqid list in 'file'"
  type: File
  inputBinding:
    prefix: -q
- id: print_picked_sequences
  doc: ":      print 'num' randomly picked sequences"
  type: string
  inputBinding:
    prefix: -r
- id: print_single_sequence
  doc: ":    print the single sequence 'seqid'"
  type: string
  inputBinding:
    prefix: -s
- id: l_print_inclusive
  doc: "l:      print all the sequences from ID 'f' to 'l' (inclusive)"
  type: string
  inputBinding:
    prefix: -S
- id: print_sequences_whole
  doc: ':          print all sequences (do the whole file)'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- leaff
