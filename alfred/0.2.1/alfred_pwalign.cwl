class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alfred_pwalign.cwl
inputs:
- id: arg_gap_open
  doc: '[ --gapopen ] arg (=-10)           gap open'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_gap_extension
  doc: '[ --gapext ] arg (=-1)             gap extension'
  type: boolean
  inputBinding:
    prefix: -e
- id: _arg_match
  doc: '[ --match ] arg (=5)               match'
  type: boolean
  inputBinding:
    prefix: -m
- id: _arg_mismatch
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
- id: _local_alignment
  doc: '[ --local ]                        local alignment'
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: '[ --format ] arg (=h)              output format [v|h]'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_verticalhorizontal_alignment
  doc: '[ --alignment ] arg (="al.fa.gz")  vertical/horizontal alignment'
  type: boolean
  inputBinding:
    prefix: -a
- id: seq_one_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_two_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- pwalign
