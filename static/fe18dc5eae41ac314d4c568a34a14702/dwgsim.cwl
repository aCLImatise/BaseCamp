class: CommandLineTool
id: dwgsim.cwl
inputs:
- id: in_reff_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: r
  doc: rate of mutations [0.0010]
  type: double
  inputBinding:
    prefix: -r
- id: f
  doc: 'frequency of given mutation to simulate low fequency somatic mutations [0.5000]
    NB: freqeuncy F refers to the first strand of mutation, therefore mutations  on
    the second strand occour with a frequency of 1-F '
  type: double
  inputBinding:
    prefix: -F
- id: r
  doc: fraction of mutations that are indels [0.10]
  type: double
  inputBinding:
    prefix: -R
- id: x
  doc: probability an indel is extended [0.30]
  type: double
  inputBinding:
    prefix: -X
- id: i
  doc: the minimum length indel [1]
  type: long
  inputBinding:
    prefix: -I
- id: y
  doc: probability of a random DNA read [0.05]
  type: double
  inputBinding:
    prefix: -y
- id: n
  doc: maximum number of Ns allowed in a given read [0]
  type: long
  inputBinding:
    prefix: -n
- id: c
  doc: 'generate reads for [0]: 0: Illumina 1: SOLiD 2: Ion Torrent'
  type: long
  inputBinding:
    prefix: -c
- id: s
  doc: 'generate reads [0]: 0: default (opposite strand for Illumina, same strand
    for SOLiD/Ion Torrent) 1: same strand (mate pair) 2: opposite strand (paired end)'
  type: long
  inputBinding:
    prefix: -S
- id: f
  doc: the flow order for Ion Torrent data [(null)]
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: use a per-base error rate for Ion Torrent data [False]
  type: boolean
  inputBinding:
    prefix: -B
- id: h
  doc: haploid mode [False]
  type: boolean
  inputBinding:
    prefix: -H
- id: z
  doc: random seed (-1 uses the current time) [-1]
  type: long
  inputBinding:
    prefix: -z
- id: m
  doc: generate a mutations file only [False]
  type: boolean
  inputBinding:
    prefix: -M
- id: m
  doc: the mutations txt file to re-create [not using]
  type: File
  inputBinding:
    prefix: -m
- id: b
  doc: the bed-like file set of candidate mutations [(null)]
  type: File
  inputBinding:
    prefix: -b
- id: v
  doc: the vcf file set of candidate mutations (use pl tag for strand) [(null)]
  type: File
  inputBinding:
    prefix: -v
- id: x
  doc: the bed of regions to cover [not using]
  type: File
  inputBinding:
    prefix: -x
- id: p
  doc: a read prefix to prepend to each read name [not using]
  type: string
  inputBinding:
    prefix: -P
- id: q
  doc: a fixed base quality to apply (single character) [not using]
  type: string
  inputBinding:
    prefix: -q
- id: q
  doc: standard deviation of the base quality scores [2.00]
  type: double
  inputBinding:
    prefix: -Q
- id: s
  doc: standard deviation of the distance for pairs [50.000]
  type: long
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- dwgsim
