class: CommandLineTool
id: sqStoreDumpMetaData.cwl
inputs:
- id: s
  doc: dump reads from 'seqStore'
  type: string
  inputBinding:
    prefix: -S
- id: libs
  doc: dump information about libraries
  type: boolean
  inputBinding:
    prefix: -libs
- id: reads
  doc: "dump information about reads There are four pairs of flags, one for raw, raw-trimmed,\
    \ corrected and corrected-trimmed.  Each pair tells if the sequence is valid and\
    \ if it is ignored. 1st letter - valid (uppercase) or invalid (lowercase). 2nd\
    \ letter - used  (uppercase) or ignored (lowercase). 1st pair   - raw sequence.\
    \ 2nd pair   - raw sequence, trimmed. 3rd pair   - corrected sequence. 4th pair\
    \   - corrected sequence, trimmed. Example: RR--c--- - Raw version exists and\
    \ is used.  Corrected version doesn't exist. RR--CCTt - Both raw and corrected\
    \ versions exist and are used. Corrected trimmed version exists, but is ignored."
  type: boolean
  inputBinding:
    prefix: -reads
- id: stats
  doc: dump summary statistics on reads
  type: boolean
  inputBinding:
    prefix: -stats
- id: histogram
  doc: dump a length histogram
  type: boolean
  inputBinding:
    prefix: -histogram
- id: lengths
  doc: dump just the (sorted) read lengths
  type: boolean
  inputBinding:
    prefix: -lengths
- id: r
  doc: '[-end]     output reads/libraies from `bgn` to `end`, inclusive'
  type: string
  inputBinding:
    prefix: -r
- id: raw
  doc: restrict to 'raw' reads
  type: boolean
  inputBinding:
    prefix: -raw
- id: corrected
  doc: restrict to 'corrected' reads
  type: boolean
  inputBinding:
    prefix: -corrected
- id: trimmed
  doc: restrict to 'trimmed' reads
  type: boolean
  inputBinding:
    prefix: -trimmed
- id: compressed
  doc: restrict to 'compressed' reads
  type: boolean
  inputBinding:
    prefix: -compressed
outputs: []
cwlVersion: v1.1
baseCommand:
- sqStoreDumpMetaData
