class: CommandLineTool
id: seqtk_trimfq.cwl
inputs:
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: q
  doc: error rate threshold (disabled by -b/-e) [0.05]
  type: double
  inputBinding:
    prefix: -q
- id: l
  doc: maximally trim down to INT bp (disabled by -b/-e) [30]
  type: long
  inputBinding:
    prefix: -l
- id: b
  doc: trim INT bp from left (non-zero to disable -q/-l) [0]
  type: long
  inputBinding:
    prefix: -b
- id: e
  doc: trim INT bp from right (non-zero to disable -q/-l) [0]
  type: long
  inputBinding:
    prefix: -e
- id: l
  doc: retain at most INT bp from the 5'-end (non-zero to disable -q/-l) [0]
  type: long
  inputBinding:
    prefix: -L
- id: q
  doc: force FASTQ output
  type: boolean
  inputBinding:
    prefix: -Q
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- trimfq
