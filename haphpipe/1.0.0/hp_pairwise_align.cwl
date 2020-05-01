#!/usr/bin/env cwl-runner

baseCommand:
- hp_pairwise_align
class: CommandLineTool
cwlVersion: v1.0
id: hp_pairwise_align
inputs:
- doc: Assembled amplicons (fasta)
  id: amplicons_fa
  inputBinding:
    prefix: --amplicons_fa
  type: string
- doc: Reference fasta file
  id: ref_fa
  inputBinding:
    prefix: --ref_fa
  type: string
- doc: GTF format file containing amplicon regions. Primary and alternate coding regions
    should be provided in the attribute field (for amino acid alignment).
  id: ref_gtf
  inputBinding:
    prefix: --ref_gtf
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
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
- doc: 'Print commands but do not run (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
