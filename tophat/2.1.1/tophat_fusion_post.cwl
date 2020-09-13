class: CommandLineTool
id: ../../../tophat_fusion_post.cwl
inputs:
- id: in_v_slash_version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v/--version
- id: in_oslash_output_dir
  doc: '<string>    [ default: ./tophatfusion_out ]'
  type: boolean
  inputBinding:
    prefix: -o/--output-dir
- id: in_num_fusion_reads
  doc: '<int>       [ default: 3                  ]'
  type: boolean
  inputBinding:
    prefix: --num-fusion-reads
- id: in_num_fusion_pairs
  doc: '<int>       [ default: 2                  ]'
  type: boolean
  inputBinding:
    prefix: --num-fusion-pairs
- id: in_num_fusion_both
  doc: '<int>       [ default: 5                  ]'
  type: boolean
  inputBinding:
    prefix: --num-fusion-both
- id: in_max_num_fusions
  doc: '<int>       [ default: 500                ]'
  type: boolean
  inputBinding:
    prefix: --max-num-fusions
- id: in_fusion_read_mismatches
  doc: '<int>       [ default: 2                  ]'
  type: boolean
  inputBinding:
    prefix: --fusion-read-mismatches
- id: in_fusion_multi_reads
  doc: '<int>       [ default: 2                  ]'
  type: boolean
  inputBinding:
    prefix: --fusion-multireads
- id: in_non_human
  doc: ''
  type: boolean
  inputBinding:
    prefix: --non-human
- id: in_p_slash_num_threads
  doc: '<int>       [ default: 1                  ]'
  type: boolean
  inputBinding:
    prefix: -p/--num-threads
- id: in_no_filter_by_annotation
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-filter-by-annotation
- id: in_skip_fusion_km_er
  doc: ''
  type: boolean
  inputBinding:
    prefix: --skip-fusion-kmer
- id: in_skip_filter_fusion
  doc: ''
  type: boolean
  inputBinding:
    prefix: --skip-filter-fusion
- id: in_skip_blast
  doc: ''
  type: boolean
  inputBinding:
    prefix: --skip-blast
- id: in_skip_read_dist
  doc: ''
  type: boolean
  inputBinding:
    prefix: --skip-read-dist
- id: in_skip_html
  doc: ''
  type: boolean
  inputBinding:
    prefix: --skip-html
- id: in_tex_table
  doc: ''
  type: boolean
  inputBinding:
    prefix: --tex-table
- id: in_fusion_pair_dist
  doc: "<int>       [ default: 250                ]\nfor detailed help see http://tophat-fusion.sourceforge.net/manual.html\n"
  type: boolean
  inputBinding:
    prefix: --fusion-pair-dist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tophat-fusion-post
