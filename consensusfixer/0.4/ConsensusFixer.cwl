#!/usr/bin/env cwl-runner

baseCommand:
- ConsensusFixer
class: CommandLineTool
cwlVersion: v1.0
id: consensusfixer
inputs:
- doc: ': Alignment file in BAM format (required).'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': Reference file in FASTA format (optional).'
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: ': Path to the output directory (default: current directory).'
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: ': Minimal coverage to call consensus.'
  id: mcc
  inputBinding:
    prefix: -mcc
  type: long
- doc: ': Minimal coverage to call insertion.'
  id: mic
  inputBinding:
    prefix: -mic
  type: long
- doc: ': Minimal relative position-wise base occurence to integrate into wobble (default:
    0.05).'
  id: plurality
  inputBinding:
    prefix: -plurality
  type: string
- doc: ': Minimal relative position-wise gap occurence call N (default: 0.5).'
  id: plurality_n
  inputBinding:
    prefix: -pluralityN
  type: string
- doc: ': Majority vote respecting pluralityN first, otherwise allow wobbles.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': Only allow in frame insertions in the consensus.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': Remove gaps if they are >= pluralityN.'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': Only the insertion with the maximum frequency greater than mic is incorporated.'
  id: mi
  inputBinding:
    prefix: -mi
  type: boolean
- doc: ': Progressive insertion mode, respecting mic.'
  id: pi
  inputBinding:
    prefix: -pi
  type: boolean
- doc: ': Window size for progressive insertion mode (default: 300).'
  id: pis
  inputBinding:
    prefix: -pis
  type: long
- doc: ": Use '-' instead of bases from the reference."
  id: dash
  inputBinding:
    prefix: -dash
  type: boolean
- doc: ': Single core mode with low memory footprint.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ':NewRatio=9        : Reduces the memory consumption (RECOMMENDED to use).'
  id: xx
  inputBinding:
    prefix: -XX
  type: boolean
- doc: ': Increase heap space.'
  id: xmx10g
  inputBinding:
    prefix: -Xmx10G
  type: boolean
- doc: ':+UseParallelGC    : Enhances performance on multicore systems.'
  id: xx
  inputBinding:
    prefix: -XX
  type: boolean
- doc: ':+UseNUMA          : Enhances performance on multi-CPU systems.'
  id: xx
  inputBinding:
    prefix: -XX
  type: boolean
