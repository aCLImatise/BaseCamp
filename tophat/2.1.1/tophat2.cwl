#!/usr/bin/env cwl-runner

baseCommand:
- tophat2
class: CommandLineTool
cwlVersion: v1.0
id: tophat2
inputs:
- doc: '<dirname>   [ default: <output_dir>/tmp ]'
  id: tmp_dir
  inputBinding:
    prefix: --tmp-dir
  type: boolean
- doc: '/--zpacker                   <program>   [ default: gzip             ]'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: /--unmapped-fifo                         [use mkfifo to compress more temporary
    files for color space reads]
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: '<int>       [ default: 0                ]'
  id: b2_n
  inputBinding:
    prefix: --b2-N
  type: boolean
- doc: '<int>       [ default: 20               ]'
  id: b2_l
  inputBinding:
    prefix: --b2-L
  type: boolean
- doc: '<func>      [ default: S,1,1.25         ]'
  id: b2_i
  inputBinding:
    prefix: --b2-i
  type: boolean
- doc: '<func>      [ default: L,0,0.15         ]'
  id: b2_n_ceil
  inputBinding:
    prefix: --b2-n-ceil
  type: boolean
- doc: '<int>       [ default: 4                ]'
  id: b2_g_bar
  inputBinding:
    prefix: --b2-gbar
  type: boolean
- doc: '<int>,<int> [ default: 6,2              ]'
  id: b2_mp
  inputBinding:
    prefix: --b2-mp
  type: boolean
- doc: '<int>       [ default: 1                ]'
  id: b2_np
  inputBinding:
    prefix: --b2-np
  type: boolean
- doc: '<int>,<int> [ default: 5,3              ]'
  id: b2_rdg
  inputBinding:
    prefix: --b2-rdg
  type: boolean
- doc: '<int>,<int> [ default: 5,3              ]'
  id: b2_rfg
  inputBinding:
    prefix: --b2-rfg
  type: boolean
- doc: '<func>      [ default: L,-0.6,-0.6      ]'
  id: b2_score_min
  inputBinding:
    prefix: --b2-score-min
  type: boolean
- doc: '<int>       [ default: 15               ]'
  id: b2_d
  inputBinding:
    prefix: --b2-D
  type: boolean
- doc: '<int>       [ default: 2                ]'
  id: b2_r
  inputBinding:
    prefix: --b2-R
  type: boolean
- doc: '<int>       [ default: 20               ]'
  id: fusion_anchor_length
  inputBinding:
    prefix: --fusion-anchor-length
  type: boolean
- doc: '<int>       [ default: 10000000         ]'
  id: fusion_min_dist
  inputBinding:
    prefix: --fusion-min-dist
  type: boolean
- doc: '<int>       [ default: 2                ]'
  id: fusion_read_mismatches
  inputBinding:
    prefix: --fusion-read-mismatches
  type: boolean
- doc: '<int>       [ default: 2                ]'
  id: fusion_multi_reads
  inputBinding:
    prefix: --fusion-multireads
  type: boolean
- doc: '<int>       [ default: 2                ]'
  id: fusion_multi_pairs
  inputBinding:
    prefix: --fusion-multipairs
  type: boolean
- doc: <list>      [ e.g, <chrM,chrX>          ]
  id: fusion_ignore_chromosomes
  inputBinding:
    prefix: --fusion-ignore-chromosomes
  type: boolean
- doc: '[this is for test purposes  ]'
  id: fusion_do_not_resolve_conflicts
  inputBinding:
    prefix: --fusion-do-not-resolve-conflicts
  type: boolean
