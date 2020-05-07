class: CommandLineTool
id: leaff.cwl
inputs:
- id: f
  doc: ":     use sequence in 'file' (-F is also allowed for historical reasons)"
  type: File
  inputBinding:
    prefix: -f
- id: a
  doc: ":     read actions from 'file'"
  type: File
  inputBinding:
    prefix: -A
- id: d
  doc: ':          print the number of sequences in the fasta'
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: ":     print an index, labelling the source 'name'"
  type: string
  inputBinding:
    prefix: -i
- id: e
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
- id: c
  doc: ':          complement the sequences'
  type: boolean
  inputBinding:
    prefix: -C
- id: h
  doc: ":          DON'T print the defline"
  type: boolean
  inputBinding:
    prefix: -H
- id: r
  doc: ':          reverse the sequences'
  type: boolean
  inputBinding:
    prefix: -R
- id: u
  doc: ':          uppercase all bases'
  type: boolean
  inputBinding:
    prefix: -u
- id: g
  doc: 's l:    print n randomly generated sequences, 0 < s <= length <= l'
  type: string
  inputBinding:
    prefix: -G
- id: l
  doc: 'l:      print all sequences such that s <= length < l'
  type: string
  inputBinding:
    prefix: -L
- id: n
  doc: 'h:      print all sequences such that l <= % N composition < h (NOTE 0.0 <=
    l < h < 100.0) (NOTE that you cannot print sequences with 100% N This is a useful
    bug).'
  type: string
  inputBinding:
    prefix: -N
- id: q
  doc: ":     print sequences from the seqid list in 'file'"
  type: File
  inputBinding:
    prefix: -q
- id: r
  doc: ":      print 'num' randomly picked sequences"
  type: string
  inputBinding:
    prefix: -r
- id: s
  doc: ":    print the single sequence 'seqid'"
  type: string
  inputBinding:
    prefix: -s
- id: s
  doc: "l:      print all the sequences from ID 'f' to 'l' (inclusive)"
  type: string
  inputBinding:
    prefix: -S
- id: w
  doc: ':          print all sequences (do the whole file)'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- leaff
