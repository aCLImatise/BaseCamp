class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alfred_replication.cwl
inputs:
- id: arg_min_quality
  doc: '[ --qual ] arg (=1)          min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_sliding_size
  doc: '[ --window ] arg (=50000)    sliding window size'
  type: boolean
  inputBinding:
    prefix: -w
- id: arg_window_size
  doc: '[ --step ] arg (=1000)       window offset (step size)'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_reference_fasta
  doc: '[ --reference ] arg          reference fasta file (required)'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_pref_output
  doc: '[ --outprefix ] arg (=pref)  output file prefix'
  type: boolean
  inputBinding:
    prefix: -o
- id: gone_b_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: s_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: s_two_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: s_three_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: s_four_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: g_two_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- replication
