version 1.0

task Tophatfusionpost {
  input {
    Boolean? v_slash_version
    Boolean? oslash_output_dir
    Boolean? num_fusion_reads
    Boolean? num_fusion_pairs
    Boolean? num_fusion_both
    Boolean? max_num_fusions
    Boolean? fusion_read_mismatches
    Boolean? fusion_multi_reads
    Boolean? non_human
    Boolean? p_slash_num_threads
    Boolean? no_filter_by_annotation
    Boolean? skip_fusion_km_er
    Boolean? skip_filter_fusion
    Boolean? skip_blast
    Boolean? skip_read_dist
    Boolean? skip_html
    Boolean? tex_table
    Boolean? fusion_pair_dist
  }
  command <<<
    tophat_fusion_post \
      ~{if (v_slash_version) then "-v/--version" else ""} \
      ~{if (oslash_output_dir) then "-o/--output-dir" else ""} \
      ~{if (num_fusion_reads) then "--num-fusion-reads" else ""} \
      ~{if (num_fusion_pairs) then "--num-fusion-pairs" else ""} \
      ~{if (num_fusion_both) then "--num-fusion-both" else ""} \
      ~{if (max_num_fusions) then "--max-num-fusions" else ""} \
      ~{if (fusion_read_mismatches) then "--fusion-read-mismatches" else ""} \
      ~{if (fusion_multi_reads) then "--fusion-multireads" else ""} \
      ~{if (non_human) then "--non-human" else ""} \
      ~{if (p_slash_num_threads) then "-p/--num-threads" else ""} \
      ~{if (no_filter_by_annotation) then "--no-filter-by-annotation" else ""} \
      ~{if (skip_fusion_km_er) then "--skip-fusion-kmer" else ""} \
      ~{if (skip_filter_fusion) then "--skip-filter-fusion" else ""} \
      ~{if (skip_blast) then "--skip-blast" else ""} \
      ~{if (skip_read_dist) then "--skip-read-dist" else ""} \
      ~{if (skip_html) then "--skip-html" else ""} \
      ~{if (tex_table) then "--tex-table" else ""} \
      ~{if (fusion_pair_dist) then "--fusion-pair-dist" else ""}
  >>>
  parameter_meta {
    v_slash_version: ""
    oslash_output_dir: "<string>    [ default: ./tophatfusion_out ]"
    num_fusion_reads: "<int>       [ default: 3                  ]"
    num_fusion_pairs: "<int>       [ default: 2                  ]"
    num_fusion_both: "<int>       [ default: 5                  ]"
    max_num_fusions: "<int>       [ default: 500                ]"
    fusion_read_mismatches: "<int>       [ default: 2                  ]"
    fusion_multi_reads: "<int>       [ default: 2                  ]"
    non_human: ""
    p_slash_num_threads: "<int>       [ default: 1                  ]"
    no_filter_by_annotation: ""
    skip_fusion_km_er: ""
    skip_filter_fusion: ""
    skip_blast: ""
    skip_read_dist: ""
    skip_html: ""
    tex_table: ""
    fusion_pair_dist: "<int>       [ default: 250                ]\\nfor detailed help see http://tophat-fusion.sourceforge.net/manual.html\\n"
  }
  output {
    File out_stdout = stdout()
  }
}