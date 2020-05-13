class: CommandLineTool
id: chimera.cwl
inputs:
- id: e
  doc: allow 'erate' percent error (default is AS_OVL_ERROR_RATE environment variable)
  type: string
  inputBinding:
    prefix: -e
- id: e
  doc: allow 'elimit' errors
  type: string
  inputBinding:
    prefix: -E
- id: min_in_nie_pair
  doc: trim if at least n pairs of innie frags detect chimer
  type: string
  inputBinding:
    prefix: -mininniepair
- id: min_overhanging
  doc: trim if at least n frags detect chimer
  type: string
  inputBinding:
    prefix: -minoverhanging
- id: use_mates
  doc: trim if the read is not spanned by overlaps, and not spanned by mates
  type: boolean
  inputBinding:
    prefix: -usemates
- id: o
  doc: write a logging and a summary of fixes to files with prefix P
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: compute and log, but don't update the store
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: limit processing to only reads from bgn to end (inclusive)
  type: string
  inputBinding:
    prefix: -t
- id: sub_read_log
  doc: write (large) subread logging file
  type: boolean
  inputBinding:
    prefix: -subreadlog
outputs: []
cwlVersion: v1.1
baseCommand:
- chimera
