class: CommandLineTool
id: homer.cwl
inputs:
- id: prot
  doc: ': Sequence type (-dna)'
  type: boolean
  inputBinding:
    prefix: -prot
- id: s
  doc: ': Sequence File'
  type: File
  inputBinding:
    prefix: -s
- id: g
  doc: ': Group/Stat File'
  type: File
  inputBinding:
    prefix: -g
- id: mer
  doc: ': Mer File'
  type: File
  inputBinding:
    prefix: -mer
- id: m
  doc: ': PSSM Motif File'
  type: File
  inputBinding:
    prefix: -m
- id: o
  doc: ': output file prefix'
  type: File
  inputBinding:
    prefix: -o
- id: seed
  doc: ': seed file'
  type: File
  inputBinding:
    prefix: -seed
- id: offset
  doc: '<#> : offset of sequence from TSS (-2000)'
  type: boolean
  inputBinding:
    prefix: -offset
- id: n
  doc: ": filtering cutoff for ratio of N's in sequence (0.9)"
  type: double
  inputBinding:
    prefix: -N
- id: seq_less
  doc: '<#> : filter sequences shorter than #'
  type: boolean
  inputBinding:
    prefix: -seqless
- id: seq_more
  doc: '<#> : filter sequences longer than #'
  type: boolean
  inputBinding:
    prefix: -seqmore
outputs: []
cwlVersion: v1.1
baseCommand:
- homer
