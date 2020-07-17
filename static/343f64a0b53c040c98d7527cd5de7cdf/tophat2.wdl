version 1.0

task Tophat2 {
  input {
    Boolean? tmp_dir
    Boolean? z_slash_z_packer
    Boolean? x_slash_unmapped_fifo
    Boolean? b_two_n
    Boolean? b_two_l
    Boolean? b_two_i
    Boolean? b_two_n_ceil
    Boolean? b_two_g_bar
    Boolean? b_two_mp
    Boolean? b_two_np
    Boolean? b_two_rdg
    Boolean? b_two_rfg
    Boolean? b_two_score_min
    Boolean? b_two_d
    Boolean? b_two_r
    Boolean? fusion_anchor_length
    Boolean? fusion_min_dist
    Boolean? fusion_read_mismatches
    Boolean? fusion_multi_reads
    Boolean? fusion_multi_pairs
    Boolean? fusion_ignore_chromosomes
    Boolean? fusion_do_not_resolve_conflicts
    String top_hat
    String bowtie_index
  }
  command <<<
    tophat2 \
      ~{top_hat} \
      ~{bowtie_index} \
      ~{true="--tmp-dir" false="" tmp_dir} \
      ~{true="-z/--zpacker" false="" z_slash_z_packer} \
      ~{true="-X/--unmapped-fifo" false="" x_slash_unmapped_fifo} \
      ~{true="--b2-N" false="" b_two_n} \
      ~{true="--b2-L" false="" b_two_l} \
      ~{true="--b2-i" false="" b_two_i} \
      ~{true="--b2-n-ceil" false="" b_two_n_ceil} \
      ~{true="--b2-gbar" false="" b_two_g_bar} \
      ~{true="--b2-mp" false="" b_two_mp} \
      ~{true="--b2-np" false="" b_two_np} \
      ~{true="--b2-rdg" false="" b_two_rdg} \
      ~{true="--b2-rfg" false="" b_two_rfg} \
      ~{true="--b2-score-min" false="" b_two_score_min} \
      ~{true="--b2-D" false="" b_two_d} \
      ~{true="--b2-R" false="" b_two_r} \
      ~{true="--fusion-anchor-length" false="" fusion_anchor_length} \
      ~{true="--fusion-min-dist" false="" fusion_min_dist} \
      ~{true="--fusion-read-mismatches" false="" fusion_read_mismatches} \
      ~{true="--fusion-multireads" false="" fusion_multi_reads} \
      ~{true="--fusion-multipairs" false="" fusion_multi_pairs} \
      ~{true="--fusion-ignore-chromosomes" false="" fusion_ignore_chromosomes} \
      ~{true="--fusion-do-not-resolve-conflicts" false="" fusion_do_not_resolve_conflicts}
  >>>
  parameter_meta {
    tmp_dir: "<dirname>   [ default: <output_dir>/tmp ]"
    z_slash_z_packer: "<program>   [ default: gzip             ]"
    x_slash_unmapped_fifo: "[use mkfifo to compress more temporary files for color space reads]"
    b_two_n: "<int>       [ default: 0                ]"
    b_two_l: "<int>       [ default: 20               ]"
    b_two_i: "<func>      [ default: S,1,1.25         ]"
    b_two_n_ceil: "<func>      [ default: L,0,0.15         ]"
    b_two_g_bar: "<int>       [ default: 4                ]"
    b_two_mp: "<int>,<int> [ default: 6,2              ]"
    b_two_np: "<int>       [ default: 1                ]"
    b_two_rdg: "<int>,<int> [ default: 5,3              ]"
    b_two_rfg: "<int>,<int> [ default: 5,3              ]"
    b_two_score_min: "<func>      [ default: L,-0.6,-0.6      ]"
    b_two_d: "<int>       [ default: 15               ]"
    b_two_r: "<int>       [ default: 2                ]"
    fusion_anchor_length: "<int>       [ default: 20               ]"
    fusion_min_dist: "<int>       [ default: 10000000         ]"
    fusion_read_mismatches: "<int>       [ default: 2                ]"
    fusion_multi_reads: "<int>       [ default: 2                ]"
    fusion_multi_pairs: "<int>       [ default: 2                ]"
    fusion_ignore_chromosomes: "<list>      [ e.g, <chrM,chrX>          ]"
    fusion_do_not_resolve_conflicts: "[this is for test purposes  ]"
    top_hat: ""
    bowtie_index: ""
  }
}