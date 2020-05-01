#!/usr/bin/env cwl-runner

baseCommand:
- glistquery
class: CommandLineTool
cwlVersion: v1.0
id: glistquery
inputs:
- doc: ''
  id: input_list
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 1
  type: string
- doc: '- print statistics of the list file and exit'
  id: stat
  inputBinding:
    prefix: -stat
  type: boolean
- doc: '- print min/max/median/average and exit'
  id: median
  inputBinding:
    prefix: -median
  type: boolean
- doc: '- print distribution up to MAX'
  id: distribution
  inputBinding:
    prefix: -distribution
  type: long
- doc: '- print average GC content of all words'
  id: gc
  inputBinding:
    prefix: -gc
  type: boolean
- doc: '- single query word'
  id: query
  inputBinding:
    prefix: --query
  type: boolean
- doc: '- list of query words in a file'
  id: query_file
  inputBinding:
    prefix: --queryfile
  type: boolean
- doc: '- FastA/FastQ file'
  id: seq_file
  inputBinding:
    prefix: --seqfile
  type: boolean
- doc: '- list file made by glistmaker'
  id: list_file
  inputBinding:
    prefix: --listfile
  type: boolean
- doc: '- specify number of mismatches (default 0)'
  id: mismatch
  inputBinding:
    prefix: --mismatch
  type: string
- doc: of 3' perfect matches (default 0)
  id: perfect_match
  inputBinding:
    prefix: --perfectmatch
  type: string
- doc: '- minimum frequency of the printed words (default 0)'
  id: min_freq
  inputBinding:
    prefix: --minfreq
  type: string
- doc: '- maximum frequency of the printed words (default MAX_UINT)'
  id: max_freq
  inputBinding:
    prefix: --maxfreq
  type: string
- doc: '- in case of mismatches prints all found words'
  id: all
  inputBinding:
    prefix: -all
  type: boolean
- doc: '- increase debug level'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
