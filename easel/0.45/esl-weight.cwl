#!/usr/bin/env cwl-runner

baseCommand:
- esl-weight
class: CommandLineTool
cwlVersion: v1.0
id: esl-weight
inputs:
- doc: ': Gerstein/Sonnhammer/Chothia tree weights  [default]'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: ': Henikoff position-based weights'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ': Henikoff simple filter weights'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ': filter out seqs by fractional identity'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': send output to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': for -b: set identity cutoff  [0.62]  (0<=x<=1)'
  id: id
  inputBinding:
    prefix: --id
  type: string
- doc: ': for -f: set identity cutoff  [0.80]  (0<=x<=1)'
  id: idf
  inputBinding:
    prefix: --idf
  type: string
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': <msa file> contains protein alignments'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': <msa file> contains DNA alignments'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': <msa file> contains RNA alignments'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
