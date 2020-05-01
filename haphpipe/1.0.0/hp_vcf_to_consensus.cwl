#!/usr/bin/env cwl-runner

baseCommand:
- hp_vcf_to_consensus
class: CommandLineTool
cwlVersion: v1.0
id: hp_vcf_to_consensus
inputs:
- doc: VCF file (created with all sites).
  id: vcf
  inputBinding:
    prefix: --vcf
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Index for sample if multi-sample VCF (default: 0)'
  id: samp_idx
  inputBinding:
    prefix: --sampidx
  type: string
- doc: 'Minimum depth to call site (default: 5)'
  id: min_dp
  inputBinding:
    prefix: --min_dp
  type: long
- doc: 'Allele fraction to make unambiguous call (default: 0.5)'
  id: major
  inputBinding:
    prefix: --major
  type: string
- doc: 'Allele fraction to make ambiguous call (default: 0.2)'
  id: minor
  inputBinding:
    prefix: --minor
  type: long
- doc: 'Do not delete temporary directory (default: False)'
  id: keep_tmp
  inputBinding:
    prefix: --keep_tmp
  type: boolean
- doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Append console output to this file
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
