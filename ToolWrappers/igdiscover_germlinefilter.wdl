version 1.0

task IgdiscoverGermlinefilter {
  input {
    Int? cluster_size
    Float? cross_mapping_ratio
    Float? clo_no_type_ratio
    Float? exact_ratio
    Int? cdr_three_shared_ratio
    Int? minimum_db_diff
    Int? maximum_n
    Int? unique_cdr_threes
    Int? unique_j
    String? unique_d_ratio
    String? unique_d_threshold
    Boolean? allow_stop
    String? whitelist
    File? fast_a
    File? annotate
    String candidates_dot_tab
  }
  command <<<
    igdiscover germlinefilter \
      ~{candidates_dot_tab} \
      ~{if defined(cluster_size) then ("--cluster-size " +  '"' + cluster_size + '"') else ""} \
      ~{if defined(cross_mapping_ratio) then ("--cross-mapping-ratio " +  '"' + cross_mapping_ratio + '"') else ""} \
      ~{if defined(clo_no_type_ratio) then ("--clonotype-ratio " +  '"' + clo_no_type_ratio + '"') else ""} \
      ~{if defined(exact_ratio) then ("--exact-ratio " +  '"' + exact_ratio + '"') else ""} \
      ~{if defined(cdr_three_shared_ratio) then ("--cdr3-shared-ratio " +  '"' + cdr_three_shared_ratio + '"') else ""} \
      ~{if defined(minimum_db_diff) then ("--minimum-db-diff " +  '"' + minimum_db_diff + '"') else ""} \
      ~{if defined(maximum_n) then ("--maximum-N " +  '"' + maximum_n + '"') else ""} \
      ~{if defined(unique_cdr_threes) then ("--unique-cdr3s " +  '"' + unique_cdr_threes + '"') else ""} \
      ~{if defined(unique_j) then ("--unique-J " +  '"' + unique_j + '"') else ""} \
      ~{if defined(unique_d_ratio) then ("--unique-D-ratio " +  '"' + unique_d_ratio + '"') else ""} \
      ~{if defined(unique_d_threshold) then ("--unique-D-threshold " +  '"' + unique_d_threshold + '"') else ""} \
      ~{if (allow_stop) then "--allow-stop" else ""} \
      ~{if defined(whitelist) then ("--whitelist " +  '"' + whitelist + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""}
  >>>
  parameter_meta {
    cluster_size: "Consensus must represent at least N sequences.\\nDefault: 0"
    cross_mapping_ratio: "Ratio for detection of cross-mapping artifacts.\\nDefault: 0.02"
    clo_no_type_ratio: "Required ratio of \\\"clonotypes\\\" counts between alleles.\\nWorks only for genes named \\\"NAME*ALLELE\\\". Default: 0.1"
    exact_ratio: "Required ratio of \\\"exact\\\" counts between alleles.\\nWorks only for genes named \\\"NAME*ALLELE\\\". Default: 0.1"
    cdr_three_shared_ratio: "Maximum allowed CDR3_shared_ratio. Default: 1.0"
    minimum_db_diff: "Sequences must have at least N differences to the\\ndatabase sequence. Default: 0"
    maximum_n: "Sequences must have at most COUNT \\\"N\\\" bases. Default:\\n0"
    unique_cdr_threes: "Sequences must have at least N unique CDR3s within\\nexact sequence matches. Default: 1"
    unique_j: "Sequences must have at least N unique Js within exact\\nsequence matches. Default: 0"
    unique_d_ratio: "Discard a sequence if another allele of this gene\\nexists such that the ratio between their Ds_exact is\\nless than RATIO"
    unique_d_threshold: "Apply the --unique-D-ratio filter only if the Ds_exact\\nof the other allele is at least THRESHOLD"
    allow_stop: "Allow stop codons in sequences (uses the has_stop\\ncolumn).Default: Do not allow stop codons."
    whitelist: "Sequences that are never discarded or merged with\\nothers, even if criteria for discarding them would\\napply (except cross-mapping artifact removal, which is\\nalways performed)."
    fast_a: "Write new database in FASTA format to FILE"
    annotate: "Write candidates.tab with filter annotations to FILE"
    candidates_dot_tab: "Tables (one or more) created by the \\\"discover\\\" command"
  }
  output {
    File out_stdout = stdout()
  }
}