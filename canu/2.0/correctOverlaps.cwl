class: CommandLineTool
id: correctOverlaps.cwl
inputs:
- id: s
  doc: seqStore           path to a sequence store
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: ovlStore           path to an overlap store
  type: boolean
  inputBinding:
    prefix: -O
- id: r
  doc: bgn end            only compute for reads bgn-end
  type: boolean
  inputBinding:
    prefix: -R
- id: c
  doc: input-name         read corrections from 'input-name'
  type: boolean
  inputBinding:
    prefix: -c
- id: o
  doc: output-name        write updated error rates to 'output-name'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: num-threads        not used; only one thread used
  type: boolean
  inputBinding:
    prefix: -t
- id: l
  doc: min-len            ignore overlaps shorter than this
  type: boolean
  inputBinding:
    prefix: -l
- id: e
  doc: max-erate s        ignore overlaps higher than this error
  type: boolean
  inputBinding:
    prefix: -e
- id: s
  doc: check trival dna   ignore alignment errors in simple sequence
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- correctOverlaps
