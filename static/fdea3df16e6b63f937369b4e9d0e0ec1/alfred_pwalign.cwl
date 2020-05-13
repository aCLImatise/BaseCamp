class: CommandLineTool
id: alfred_pwalign.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq1fasta
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq2fasta
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: g
  doc: '[ --gapopen ] arg (=-10)           gap open'
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: '[ --gapext ] arg (=-1)             gap extension'
  type: boolean
  inputBinding:
    prefix: -e
- id: m
  doc: '[ --match ] arg (=5)               match'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --mismatch ] arg (=-4)           mismatch'
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: '[ --endsfree1 ]                    leading/trailing gaps free for seq1'
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: '[ --endsfree2 ]                    leading/trailing gaps free for seq2'
  type: boolean
  inputBinding:
    prefix: -q
- id: l
  doc: '[ --local ]                        local alignment'
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: '[ --format ] arg (=h)              output format [v|h]'
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: '[ --alignment ] arg (="al.fa.gz")  vertical/horizontal alignment'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- pwalign
