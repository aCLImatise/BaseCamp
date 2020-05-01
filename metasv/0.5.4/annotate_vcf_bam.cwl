#!/usr/bin/env cwl-runner

baseCommand:
- annotate_vcf_bam.py
class: CommandLineTool
cwlVersion: v1.0
id: annotate_vcf_bam.py
inputs:
- doc: 'BAM file (default: None)'
  id: bam
  inputBinding:
    prefix: --bam
  type: string
- doc: 'Chromosomes (default: [])'
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: 'Input VCF files (default: None)'
  id: v_cfs
  inputBinding:
    prefix: --vcfs
  type:
    items: string
    type: array
