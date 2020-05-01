#!/usr/bin/env cwl-runner

baseCommand:
- hp_ph_parser
class: CommandLineTool
cwlVersion: v1.0
id: hp_ph_parser
inputs:
- doc: Haplotype file created by PredictHaplo.
  id: haplotypes_fa
  inputBinding:
    prefix: --haplotypes_fa
  type: string
- doc: 'Output directory. (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: Prefix to add to sequence names
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: 'Do not remove gaps from alignment (default: False)'
  id: keep_gaps
  inputBinding:
    prefix: --keep_gaps
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
