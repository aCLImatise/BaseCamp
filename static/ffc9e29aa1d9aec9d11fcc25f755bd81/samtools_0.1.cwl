class: CommandLineTool
id: samtools_0.1.18_phase.cwl
inputs:
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: phase
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: k
  doc: block length [13]
  type: long
  inputBinding:
    prefix: -k
- id: b
  doc: prefix of BAMs to output [null]
  type: string
  inputBinding:
    prefix: -b
- id: q
  doc: min het phred-LOD [37]
  type: long
  inputBinding:
    prefix: -q
- id: q
  doc: min base quality in het calling [13]
  type: long
  inputBinding:
    prefix: -Q
- id: d
  doc: max read depth [256]
  type: long
  inputBinding:
    prefix: -D
- id: f
  doc: do not attempt to fix chimeras
  type: boolean
  inputBinding:
    prefix: -F
- id: a
  doc: drop reads with ambiguous phase
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools_0.1.18
- phase
