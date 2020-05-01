#!/usr/bin/env cwl-runner

baseCommand:
- hp_assemble_scaffold
class: CommandLineTool
cwlVersion: v1.0
id: hp_assemble_scaffold
inputs:
- doc: Fasta file with assembled contigs
  id: contigs_fa
  inputBinding:
    prefix: --contigs_fa
  type: string
- doc: Fasta file with reference genome to scaffold against
  id: ref_fa
  inputBinding:
    prefix: --ref_fa
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Name to append to scaffold sequence. (default: sample01)'
  id: seqname
  inputBinding:
    prefix: --seqname
  type: string
- doc: 'Additional options (default: False)'
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
