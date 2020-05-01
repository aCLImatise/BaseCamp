#!/usr/bin/env cwl-runner

baseCommand:
- ssu-merge
class: CommandLineTool
cwlVersion: v1.0
id: ssu-merge
inputs:
- doc: ''
  id: output_dir_created_by_ssu_prep
  inputBinding:
    position: 0
  type: string
- doc: ': force; allow file clobbering'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': when merging alignments, only keep consensus (non-gap RF) columns'
  id: rf_only
  inputBinding:
    prefix: --rfonly
  type: boolean
- doc: ": don't remove original files after they have been merged"
  id: keep
  inputBinding:
    prefix: --keep
  type: boolean
- doc: ': input alignments are interleaved Stockholm format (not 1 line/seq)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ': output alignments as DNA, default is RNA (even if input is DNA)'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
