class: CommandLineTool
id: tophat_fusion_post.cwl
inputs:
- id: in_num_fusion_reads
  doc: '<int>       [ default: 3                  ]'
  type: boolean?
  inputBinding:
    prefix: --num-fusion-reads
- id: in_num_fusion_pairs
  doc: '<int>       [ default: 2                  ]'
  type: boolean?
  inputBinding:
    prefix: --num-fusion-pairs
- id: in_num_fusion_both
  doc: '<int>       [ default: 5                  ]'
  type: boolean?
  inputBinding:
    prefix: --num-fusion-both
- id: in_max_num_fusions
  doc: '<int>       [ default: 500                ]'
  type: boolean?
  inputBinding:
    prefix: --max-num-fusions
- id: in_fusion_read_mismatches
  doc: '<int>       [ default: 2                  ]'
  type: boolean?
  inputBinding:
    prefix: --fusion-read-mismatches
- id: in_fusion_multi_reads
  doc: '<int>       [ default: 2                  ]'
  type: boolean?
  inputBinding:
    prefix: --fusion-multireads
- id: in_num_threads
  doc: '<int>       [ default: 1                  ]'
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_no_filter_by_annotation
  doc: "<int>       [ default: 250                ]\nfor detailed help see http://tophat-fusion.sourceforge.net/manual.html\n"
  type: boolean?
  inputBinding:
    prefix: --no-filter-by-annotation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tophat-fusion-post
