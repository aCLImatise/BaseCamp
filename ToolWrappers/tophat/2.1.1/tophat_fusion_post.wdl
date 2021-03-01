version 1.0

task Tophatfusionpost {
  input {
    Boolean? num_fusion_reads
    Boolean? num_fusion_pairs
    Boolean? num_fusion_both
    Boolean? max_num_fusions
    Boolean? fusion_read_mismatches
    Boolean? fusion_multi_reads
    Boolean? num_threads
    Boolean? no_filter_by_annotation
  }
  command <<<
    tophat_fusion_post \
      ~{if (num_fusion_reads) then "--num-fusion-reads" else ""} \
      ~{if (num_fusion_pairs) then "--num-fusion-pairs" else ""} \
      ~{if (num_fusion_both) then "--num-fusion-both" else ""} \
      ~{if (max_num_fusions) then "--max-num-fusions" else ""} \
      ~{if (fusion_read_mismatches) then "--fusion-read-mismatches" else ""} \
      ~{if (fusion_multi_reads) then "--fusion-multireads" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (no_filter_by_annotation) then "--no-filter-by-annotation" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_fusion_reads: "<int>       [ default: 3                  ]"
    num_fusion_pairs: "<int>       [ default: 2                  ]"
    num_fusion_both: "<int>       [ default: 5                  ]"
    max_num_fusions: "<int>       [ default: 500                ]"
    fusion_read_mismatches: "<int>       [ default: 2                  ]"
    fusion_multi_reads: "<int>       [ default: 2                  ]"
    num_threads: "<int>       [ default: 1                  ]"
    no_filter_by_annotation: "<int>       [ default: 250                ]\\nfor detailed help see http://tophat-fusion.sourceforge.net/manual.html\\n"
  }
  output {
    File out_stdout = stdout()
  }
}