class: CommandLineTool
id: finalTrim.cwl
inputs:
- id: e
  doc: allow 'erate' percent error
  type: string
  inputBinding:
    prefix: -e
- id: e
  doc: allow 'elimit' errors (only used in 'largestCovered')
  type: string
  inputBinding:
    prefix: -E
- id: ol
  doc: for 'largest covered', the minimum evidence overlap length
  type: boolean
  inputBinding:
    prefix: -ol
- id: oc
  doc: for 'largest covered', the minimum evidence overlap coverage
  type: boolean
  inputBinding:
    prefix: -oc
- id: n
  doc: do not modify reads in gkpStore
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: limit processing to only reads from bgn to end (inclusive)
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- finalTrim
