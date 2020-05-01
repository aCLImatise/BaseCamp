#!/usr/bin/env cwl-runner

baseCommand:
- run_metasv_bed2vcf.py
class: CommandLineTool
cwlVersion: v1.0
id: run_metasv_bed2vcf.py
inputs:
- doc: 'Sample name (default: None)'
  id: sample
  inputBinding:
    prefix: --sample
  type: string
- doc: 'MetaSV final BED (default: None)'
  id: bed
  inputBinding:
    prefix: --bed
  type: string
- doc: 'Final VCF to output (default: None)'
  id: vcf
  inputBinding:
    prefix: --vcf
  type: string
- doc: 'Reference FASTA (default: None)'
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: 'Work directory (default: work)'
  id: work
  inputBinding:
    prefix: --work
  type: string
- doc: 'Output only PASS calls (default: False)'
  id: pass_only
  inputBinding:
    prefix: --pass_only
  type: boolean
