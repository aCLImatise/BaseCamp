class: CommandLineTool
id: pslPairs.cwl
inputs:
- id: max
  doc: '- maximum length of clone sequence (default=47000)'
  type: string
  inputBinding:
    prefix: -max
- id: min
  doc: '- minimum length of clone sequence (default=32000)'
  type: string
  inputBinding:
    prefix: -min
- id: slop_val
  doc: '- deviation from max/min clone lengths allowed for slop report - (default=5000)'
  type: string
  inputBinding:
    prefix: -slopval
- id: near_top
  doc: '- maximium deviation from best match allowed (default=0.001)'
  type: string
  inputBinding:
    prefix: -nearTop
- id: mini_d
  doc: '- minimum pct ID of at least one end (default=0.96)'
  type: string
  inputBinding:
    prefix: -minId
- id: min_orphan_id
  doc: ID for orphan alignment (default=0.96)
  type: string
  inputBinding:
    prefix: -minOrphanId
- id: t_insert
  doc: '- maximum insert bases allowed in sequence alignment - (default=500)'
  type: string
  inputBinding:
    prefix: -tInsert
- id: hard_max
  doc: '- absolute maximum clone length for long report (default=75000)'
  type: string
  inputBinding:
    prefix: -hardMax
- id: verbose
  doc: '- display all informational messages'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: no_bin
  doc: '- do not include bin column in output file'
  type: boolean
  inputBinding:
    prefix: -noBin
- id: no_random
  doc: '- do not include placements on random portions - {length(chr name) < 7}'
  type: boolean
  inputBinding:
    prefix: -noRandom
- id: slop
  doc: '- create <outFilePrefix>.slop file of pairs that fall within - slop length'
  type: boolean
  inputBinding:
    prefix: -slop
- id: short
  doc: '- create <outFilePrefix>.short file of pairs shorter than - min size'
  type: boolean
  inputBinding:
    prefix: -short
- id: long
  doc: '- create <outFilePrefix>.long file of pairs longer than - max size, but less
    than hardMax size'
  type: boolean
  inputBinding:
    prefix: -long
- id: mismatch
  doc: '- create <outFilePrefix>.mismatch file of pairs with - bad orientation of
    ends'
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: orphan
  doc: '- create <outFilePrefix>.orphan file of unmatched end sequences'
  type: boolean
  inputBinding:
    prefix: -orphan
outputs: []
cwlVersion: v1.1
baseCommand:
- pslPairs
