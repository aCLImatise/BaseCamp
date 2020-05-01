#!/usr/bin/env cwl-runner

baseCommand:
- hmmalign
class: CommandLineTool
cwlVersion: v1.0
id: hmmalign
inputs:
- doc: ': output alignment to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': include alignment in file <f> (same ali that HMM came from)'
  id: map_ali
  inputBinding:
    prefix: --mapali
  type: string
- doc: ': trim terminal tails of nonaligned residues from alignment'
  id: trim
  inputBinding:
    prefix: --trim
  type: boolean
- doc: ': assert <seqfile>, <hmmfile> both protein: no autodetection'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
- doc: ': assert <seqfile>, <hmmfile> both DNA: no autodetection'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': assert <seqfile>, <hmmfile> both RNA: no autodetection'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': assert <seqfile> is in format <s>: no autodetection'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': output alignment in format <s>  [Stockholm]'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
