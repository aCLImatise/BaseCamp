#!/usr/bin/env cwl-runner

baseCommand:
- hp_call_variants
class: CommandLineTool
cwlVersion: v1.0
id: hp_call_variants
inputs:
- doc: Alignment file.
  id: aln_bam
  inputBinding:
    prefix: --aln_bam
  type: string
- doc: Reference fasta file.
  id: ref_fa
  inputBinding:
    prefix: --ref_fa
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Output calls for all sites. (default: False)'
  id: emit_all
  inputBinding:
    prefix: --emit_all
  type: boolean
- doc: 'Minimum base quality required to consider a base for calling. (default: 15)'
  id: min_base_qual
  inputBinding:
    prefix: --min_base_qual
  type: long
- doc: Number of CPU to use
  id: n_cpu
  inputBinding:
    prefix: --ncpu
  type: string
- doc: 'Maximum heap size for Java VM, in GB. (default: 32)'
  id: x_mx
  inputBinding:
    prefix: --xmx
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
