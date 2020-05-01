#!/usr/bin/env cwl-runner

baseCommand:
- pslPairs
class: CommandLineTool
cwlVersion: v1.0
id: pslpairs
inputs:
- doc: '- maximum length of clone sequence (default=47000)'
  id: max
  inputBinding:
    prefix: -max
  type: string
- doc: '- minimum length of clone sequence (default=32000)'
  id: min
  inputBinding:
    prefix: -min
  type: string
- doc: '- deviation from max/min clone lengths allowed for slop report - (default=5000)'
  id: slop_val
  inputBinding:
    prefix: -slopval
  type: string
- doc: '- maximium deviation from best match allowed (default=0.001)'
  id: near_top
  inputBinding:
    prefix: -nearTop
  type: string
- doc: '- minimum pct ID of at least one end (default=0.96)'
  id: mini_d
  inputBinding:
    prefix: -minId
  type: string
- doc: ID for orphan alignment (default=0.96)
  id: min_orphan_id
  inputBinding:
    prefix: -minOrphanId
  type: string
- doc: '- maximum insert bases allowed in sequence alignment - (default=500)'
  id: t_insert
  inputBinding:
    prefix: -tInsert
  type: string
- doc: '- absolute maximum clone length for long report (default=75000)'
  id: hard_max
  inputBinding:
    prefix: -hardMax
  type: string
- doc: '- display all informational messages'
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: '- do not include bin column in output file'
  id: no_bin
  inputBinding:
    prefix: -noBin
  type: boolean
- doc: '- do not include placements on random portions - {length(chr name) < 7}'
  id: no_random
  inputBinding:
    prefix: -noRandom
  type: boolean
- doc: '- create <outFilePrefix>.slop file of pairs that fall within - slop length'
  id: slop
  inputBinding:
    prefix: -slop
  type: boolean
- doc: '- create <outFilePrefix>.short file of pairs shorter than - min size'
  id: short
  inputBinding:
    prefix: -short
  type: boolean
- doc: '- create <outFilePrefix>.long file of pairs longer than - max size, but less
    than hardMax size'
  id: long
  inputBinding:
    prefix: -long
  type: boolean
- doc: '- create <outFilePrefix>.mismatch file of pairs with - bad orientation of
    ends'
  id: mismatch
  inputBinding:
    prefix: -mismatch
  type: boolean
- doc: '- create <outFilePrefix>.orphan file of unmatched end sequences'
  id: orphan
  inputBinding:
    prefix: -orphan
  type: boolean
