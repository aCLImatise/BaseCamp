#!/usr/bin/env cwl-runner

baseCommand:
- esl-seqstat
class: CommandLineTool
cwlVersion: v1.0
id: esl-seqstat
inputs:
- doc: ': report per-sequence info line, not just a summary'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': count and report residue composition'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': specify that <seqfile> contains RNA sequence'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': specify that <seqfile> contains DNA sequence'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': specify that <seqfile> contains protein sequence'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': alternative output: a table of residue compositions per seq'
  id: comp_tbl
  inputBinding:
    prefix: --comptbl
  type: boolean
