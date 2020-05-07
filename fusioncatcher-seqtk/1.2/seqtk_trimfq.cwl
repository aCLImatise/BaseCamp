class: CommandLineTool
id: seqtk_trimfq.cwl
inputs:
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: q
  doc: error rate threshold (disabled by -b/-e/-B/-E) [0.05]
  type: double
  inputBinding:
    prefix: -q
- id: l
  doc: maximally trim down to INT bp (disabled by -b/-e/-B/-E) [30]
  type: long
  inputBinding:
    prefix: -l
- id: s
  doc: trimming by -b/-e/-B/-E shall not produce reads shorter then INT bp [1]
  type: long
  inputBinding:
    prefix: -s
- id: b
  doc: trim INT bp from left (non-zero to disable -q) [0]
  type: long
  inputBinding:
    prefix: -b
- id: e
  doc: trim INT bp from right (non-zero to disable -q) [0]
  type: long
  inputBinding:
    prefix: -e
- id: b
  doc: keep first INT bp from left (non-zero to disable -q/-e/-E) [0]
  type: long
  inputBinding:
    prefix: -B
- id: e
  doc: keep last INT bp from right (non-zero to disable -q/-b/-B) [0]
  type: long
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- trimfq
