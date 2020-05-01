#!/usr/bin/env cwl-runner

baseCommand:
- transIndel_call.py
class: CommandLineTool
cwlVersion: v1.0
id: transindel_call.py
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: trans_in_del_call_py
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: opts
  inputBinding:
    position: 2
  type: string
- doc: :reference genome used for VCF REF column (required for valid VCF)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: :minimal observation count for Indel (default 4)
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: :minimal depth to call Indel (default 10)
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: :minimal variant allele frequency (default 0.1)
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: :minimal indel length to report (default 10)
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: :minimal mapq of read from BAM file to call indel (default 15)
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: :Limit analysis to targets listed in the BED-format FILE or a samtools region
    string
  id: t
  inputBinding:
    prefix: -t
  type: boolean
