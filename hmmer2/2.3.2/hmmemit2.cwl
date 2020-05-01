#!/usr/bin/env cwl-runner

baseCommand:
- hmmemit2
class: CommandLineTool
cwlVersion: v1.0
id: hmmemit2
inputs:
- doc: ''
  id: hmm_emit
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: hmm_file
  inputBinding:
    position: 1
  type: string
- doc: ': write generated sequences as an alignment, not FASTA'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': generate a single "consensus" sequence'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': emit <n> sequences (default 10)'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': save sequences in file <f>'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': quiet - suppress verbose banner'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ': set random number seed to <n>'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
