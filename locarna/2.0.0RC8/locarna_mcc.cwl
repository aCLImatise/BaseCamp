#!/usr/bin/env cwl-runner

baseCommand:
- locarna_mcc
class: CommandLineTool
cwlVersion: v1.0
id: locarna_mcc
inputs:
- doc: Structure annotation file. Mandatory argument.
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: Parameter file for RNAalifold
  id: p
  inputBinding:
    prefix: -P
  type: string
- doc: 'Alifold arguments (default: same as mlocarna)'
  id: ali_fold_args
  inputBinding:
    prefix: --alifold-args
  type: boolean
- doc: Assume that input is in fasta format (instead of clustalw aln)
  id: assume_fast_a
  inputBinding:
    prefix: --assume-fasta
  type: boolean
- doc: Full documentation
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: Verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Quiet
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
