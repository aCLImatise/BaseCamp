#!/usr/bin/env cwl-runner

baseCommand:
- dwgsim
class: CommandLineTool
cwlVersion: v1.0
id: dwgsim
inputs:
- doc: ''
  id: in_reff_a
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_prefix
  inputBinding:
    position: 1
  type: string
- doc: rate of mutations [0.0010]
  id: r
  inputBinding:
    prefix: -r
  type: double
- doc: 'frequency of given mutation to simulate low fequency somatic mutations [0.5000]
    NB: freqeuncy F refers to the first strand of mutation, therefore mutations  on
    the second strand occour with a frequency of 1-F '
  id: f
  inputBinding:
    prefix: -F
  type: double
- doc: fraction of mutations that are indels [0.10]
  id: r
  inputBinding:
    prefix: -R
  type: double
- doc: probability an indel is extended [0.30]
  id: x
  inputBinding:
    prefix: -X
  type: double
- doc: the minimum length indel [1]
  id: i
  inputBinding:
    prefix: -I
  type: long
- doc: probability of a random DNA read [0.05]
  id: y
  inputBinding:
    prefix: -y
  type: double
- doc: maximum number of Ns allowed in a given read [0]
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: 'generate reads for [0]: 0: Illumina 1: SOLiD 2: Ion Torrent'
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: 'generate reads [0]: 0: default (opposite strand for Illumina, same strand
    for SOLiD/Ion Torrent) 1: same strand (mate pair) 2: opposite strand (paired end)'
  id: s
  inputBinding:
    prefix: -S
  type: long
- doc: the flow order for Ion Torrent data [(null)]
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: use a per-base error rate for Ion Torrent data [False]
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: haploid mode [False]
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: random seed (-1 uses the current time) [-1]
  id: z
  inputBinding:
    prefix: -z
  type: long
- doc: generate a mutations file only [False]
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: the mutations txt file to re-create [not using]
  id: m
  inputBinding:
    prefix: -m
  type: File
- doc: the bed-like file set of candidate mutations [(null)]
  id: b
  inputBinding:
    prefix: -b
  type: File
- doc: the vcf file set of candidate mutations (use pl tag for strand) [(null)]
  id: v
  inputBinding:
    prefix: -v
  type: File
- doc: the bed of regions to cover [not using]
  id: x
  inputBinding:
    prefix: -x
  type: File
- doc: a read prefix to prepend to each read name [not using]
  id: p
  inputBinding:
    prefix: -P
  type: string
- doc: a fixed base quality to apply (single character) [not using]
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: standard deviation of the base quality scores [2.00]
  id: q
  inputBinding:
    prefix: -Q
  type: double
- doc: standard deviation of the distance for pairs [50.000]
  id: s
  inputBinding:
    prefix: -s
  type: long
