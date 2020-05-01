#!/usr/bin/env cwl-runner

baseCommand:
- vcf-phased-join
class: CommandLineTool
cwlVersion: v1.0
id: vcf-phased-join
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: a_vcf
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: b_vcf
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: cv_cf
  inputBinding:
    position: 3
  type: string
- doc: Quality threshold for gluing the pre-phased blocks together [10]
  id: min_join_quality
  inputBinding:
    prefix: --min-join-quality
  type: string
- doc: List of VCFs to join.
  id: list
  inputBinding:
    prefix: --list
  type: File
- doc: Output file name. When "-" is supplied, STDOUT and STDERR will be used
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Break pre-phased segments if PQ value is lower in input VCFs [0.6]
  id: min_pq
  inputBinding:
    prefix: --min-PQ
  type: string
