#!/usr/bin/env cwl-runner

baseCommand:
- leaff
class: CommandLineTool
cwlVersion: v1.0
id: leaff
inputs:
- doc: ":     use sequence in 'file' (-F is also allowed for historical reasons)"
  id: f
  inputBinding:
    prefix: -f
  type: File
- doc: ":     read actions from 'file'"
  id: a
  inputBinding:
    prefix: -A
  type: File
- doc: ':          print the number of sequences in the fasta'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ":     print an index, labelling the source 'name'"
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: "end:  Print only the bases from position 'beg' to position 'end' (space based,\
    \ relative to the FORWARD sequence!)  If beg == end, then the entire sequence\
    \ is printed.  It is an error to specify beg > end, or beg > len, or end > len."
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: Print n bases from each end of the sequence.  One input sequence generates
    two output sequences, with '_5' or '_3' appended to the ID.  If 2n >= length of
    the sequence, the sequence itself is printed, no ends are extracted (they overlap).
  id: ends
  inputBinding:
    prefix: -ends
  type: string
- doc: ':          complement the sequences'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: ":          DON'T print the defline"
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: ':          reverse the sequences'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: ':          uppercase all bases'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: 's l:    print n randomly generated sequences, 0 < s <= length <= l'
  id: g
  inputBinding:
    prefix: -G
  type: string
- doc: 'l:      print all sequences such that s <= length < l'
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: 'h:      print all sequences such that l <= % N composition < h (NOTE 0.0 <=
    l < h < 100.0) (NOTE that you cannot print sequences with 100% N This is a useful
    bug).'
  id: n
  inputBinding:
    prefix: -N
  type: string
- doc: ":     print sequences from the seqid list in 'file'"
  id: q
  inputBinding:
    prefix: -q
  type: File
- doc: ":      print 'num' randomly picked sequences"
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: ":    print the single sequence 'seqid'"
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: "l:      print all the sequences from ID 'f' to 'l' (inclusive)"
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: ':          print all sequences (do the whole file)'
  id: w
  inputBinding:
    prefix: -W
  type: boolean
