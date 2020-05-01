#!/usr/bin/env cwl-runner

baseCommand:
- dwgsim_eval
class: CommandLineTool
cwlVersion: v1.0
id: dwgsim_eval
inputs:
- doc: 'INT     split by [0]: 0: by mapping quality 1: by alignment score 2: by suboptimal
    alignment score 3: by alignment score - suboptimal alignment score'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: alignments are from BWA (SOLiD only) [False]
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: color space alignments [False]
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: INT     divide quality/alignment score by this factor [1]
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: gap "wiggle" [5]
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: consecutive alignments with the same name (and end for multi-ends) should be
    treated as multi-mapped reads [False]
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: INT     number of raw input paired-end reads (otherwise, inferred from all
    SAM records present) [0]
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: INT     consider only alignments with this mapping quality or greater [0]
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: input contains only single end reads [False]
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: input is SAM [False]
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: print incorrect alignments [False]
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: INT     consider only alignments with the number of specified SNPs [-1]
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: INT     consider only alignments with the number of specified errors [-1]
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: consider only alignments with indels [False]
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: STRING  a read prefix that was prepended to each read name [not using]
  id: p
  inputBinding:
    prefix: -P
  type: boolean
