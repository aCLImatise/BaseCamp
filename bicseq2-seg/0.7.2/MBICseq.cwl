#!/usr/bin/env cwl-runner

baseCommand:
- MBICseq
class: CommandLineTool
cwlVersion: v1.0
id: mbicseq
inputs:
- doc: ': the input file name; default stdin'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': the penalty lambda of MBIC-seq; default 1.2'
  id: l
  inputBinding:
    prefix: -l
  type: double
- doc: ': remove the candidate CNV regions that are common to all samples; use this
    only if the reference is the expected and both tumor and normal present in the
    binned data, in which case these regions are likely to be false positives or germline
    CNVs'
  id: rm
  inputBinding:
    prefix: --rm
  type: boolean
