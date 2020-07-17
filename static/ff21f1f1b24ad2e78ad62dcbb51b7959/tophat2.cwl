class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tophat2.cwl
inputs:
- id: tmp_dir
  doc: '<dirname>   [ default: <output_dir>/tmp ]'
  type: boolean
  inputBinding:
    prefix: --tmp-dir
- id: z_slash_z_packer
  doc: '<program>   [ default: gzip             ]'
  type: boolean
  inputBinding:
    prefix: -z/--zpacker
- id: x_slash_unmapped_fifo
  doc: '[use mkfifo to compress more temporary files for color space reads]'
  type: boolean
  inputBinding:
    prefix: -X/--unmapped-fifo
- id: b_two_n
  doc: '<int>       [ default: 0                ]'
  type: boolean
  inputBinding:
    prefix: --b2-N
- id: b_two_l
  doc: '<int>       [ default: 20               ]'
  type: boolean
  inputBinding:
    prefix: --b2-L
- id: b_two_i
  doc: '<func>      [ default: S,1,1.25         ]'
  type: boolean
  inputBinding:
    prefix: --b2-i
- id: b_two_n_ceil
  doc: '<func>      [ default: L,0,0.15         ]'
  type: boolean
  inputBinding:
    prefix: --b2-n-ceil
- id: b_two_g_bar
  doc: '<int>       [ default: 4                ]'
  type: boolean
  inputBinding:
    prefix: --b2-gbar
- id: b_two_mp
  doc: '<int>,<int> [ default: 6,2              ]'
  type: boolean
  inputBinding:
    prefix: --b2-mp
- id: b_two_np
  doc: '<int>       [ default: 1                ]'
  type: boolean
  inputBinding:
    prefix: --b2-np
- id: b_two_rdg
  doc: '<int>,<int> [ default: 5,3              ]'
  type: boolean
  inputBinding:
    prefix: --b2-rdg
- id: b_two_rfg
  doc: '<int>,<int> [ default: 5,3              ]'
  type: boolean
  inputBinding:
    prefix: --b2-rfg
- id: b_two_score_min
  doc: '<func>      [ default: L,-0.6,-0.6      ]'
  type: boolean
  inputBinding:
    prefix: --b2-score-min
- id: b_two_d
  doc: '<int>       [ default: 15               ]'
  type: boolean
  inputBinding:
    prefix: --b2-D
- id: b_two_r
  doc: '<int>       [ default: 2                ]'
  type: boolean
  inputBinding:
    prefix: --b2-R
- id: fusion_anchor_length
  doc: '<int>       [ default: 20               ]'
  type: boolean
  inputBinding:
    prefix: --fusion-anchor-length
- id: fusion_min_dist
  doc: '<int>       [ default: 10000000         ]'
  type: boolean
  inputBinding:
    prefix: --fusion-min-dist
- id: fusion_read_mismatches
  doc: '<int>       [ default: 2                ]'
  type: boolean
  inputBinding:
    prefix: --fusion-read-mismatches
- id: fusion_multi_reads
  doc: '<int>       [ default: 2                ]'
  type: boolean
  inputBinding:
    prefix: --fusion-multireads
- id: fusion_multi_pairs
  doc: '<int>       [ default: 2                ]'
  type: boolean
  inputBinding:
    prefix: --fusion-multipairs
- id: fusion_ignore_chromosomes
  doc: <list>      [ e.g, <chrM,chrX>          ]
  type: boolean
  inputBinding:
    prefix: --fusion-ignore-chromosomes
- id: fusion_do_not_resolve_conflicts
  doc: '[this is for test purposes  ]'
  type: boolean
  inputBinding:
    prefix: --fusion-do-not-resolve-conflicts
- id: top_hat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bowtie_index
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tophat2
