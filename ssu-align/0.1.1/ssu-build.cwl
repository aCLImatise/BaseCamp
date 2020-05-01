#!/usr/bin/env cwl-runner

baseCommand:
- ssu-build
class: CommandLineTool
cwlVersion: v1.0
id: ssu-build
inputs:
- doc: ''
  id: stockholm_alignment_file_to_build_cm_from
  inputBinding:
    position: 0
  type: string
- doc: ': command-line argument is a default ssu-align-0.1 seed alignment'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': force; allow overwriting of CM file'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': name the CM *file* <s>'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': name the CM <s>'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': append this model to CM file <s>'
  id: append
  inputBinding:
    prefix: --append
  type: string
- doc: ': add <s> to all output file names, before the suffix'
  id: key_out
  inputBinding:
    prefix: --key-out
  type: string
- doc: ': only include consensus columns from <x> to <y> (where <s> ="<x>-<y>")'
  id: trunc
  inputBinding:
    prefix: --trunc
  type: string
- doc: ': output alignment with consensus columns numbered'
  id: num
  inputBinding:
    prefix: --num
  type: boolean
- doc: ': output alignment in interleaved Stockholm (not 1 line/seq)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ': use consensus column (#=GC RF) annotation in alignment'
  id: rf
  inputBinding:
    prefix: --rf
  type: boolean
- doc: ': define consensus columns as those with gap frequency <= <x> [df: 0.8]'
  id: gap_thresh
  inputBinding:
    prefix: --gapthresh
  type: string
- doc: ': command for converting ps to pdf is <s> (not "ps2pdf")'
  id: ps2pdf
  inputBinding:
    prefix: --ps2pdf
  type: string
- doc: ': only save postscript secondary structure diagram, no pdf'
  id: ps_only
  inputBinding:
    prefix: --ps-only
  type: boolean
- doc: ": use 'entropy weighting' method to achieve target relative entropy"
  id: e_ent
  inputBinding:
    prefix: --eent
  type: boolean
- doc: ': with --eent, set target relative entropy as <x>'
  id: ere
  inputBinding:
    prefix: --ere
  type: string
