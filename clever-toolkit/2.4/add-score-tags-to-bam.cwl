#!/usr/bin/env cwl-runner

baseCommand:
- add-score-tags-to-bam
class: CommandLineTool
cwlVersion: v1.0
id: add-score-tags-to-bam
inputs:
- doc: ''
  id: reference_fast_a
  inputBinding:
    position: 0
  type: string
- doc: '[ --phred_offset ] arg (=33)       Value to substract from ASCII code to  get
    the PHRED quality.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --bad_alignment_threshold ] arg (=1000) Issue a warning when AS tag is above  this
    value.'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --skip_unknown ]                 Do not output reads for which no AS tag
    could be computed, e.g. because the  reference sequence was unknown.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly
    single-threaded).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
