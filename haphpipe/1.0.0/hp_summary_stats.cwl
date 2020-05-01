#!/usr/bin/env cwl-runner

baseCommand:
- hp_summary_stats
class: CommandLineTool
cwlVersion: v1.0
id: hp_summary_stats
inputs:
- doc: List of directories which include the required files, one on each line
  id: dir_list
  inputBinding:
    prefix: --dir_list
  type: string
- doc: List of directories which include haplotype summary files, one on each line
  id: ph_list
  inputBinding:
    prefix: --ph_list
  type: string
- doc: 'Amplicons used in assembly (default: False)'
  id: amplicons
  inputBinding:
    prefix: --amplicons
  type: boolean
- doc: Output directory
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Name for log file (output)
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: 'Print commands but do not run (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
