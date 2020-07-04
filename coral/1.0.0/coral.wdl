version 1.0

task Coral {
  input {
    Boolean? preview
    Boolean? library_type
    String? min_bridging_score
    Int? dp_solution_size
    Int? dp_stack_size
    Int? max_clu_string_flank
    Int? flank_tiny_length
    Int? flank_tiny_ratio
    Int? min_splice_bund_ary_hits
    Int? max_num_cigar
    String? i
    String? o
    String? r
  }
  command <<<
    coral \
      ~{true="--preview" false="" preview} \
      ~{true="--library_type" false="" library_type} \
      ~{if defined(min_bridging_score) then ("--min_bridging_score " +  '"' + min_bridging_score + '"') else ""} \
      ~{if defined(dp_solution_size) then ("--dp_solution_size " +  '"' + dp_solution_size + '"') else ""} \
      ~{if defined(dp_stack_size) then ("--dp_stack_size " +  '"' + dp_stack_size + '"') else ""} \
      ~{if defined(max_clu_string_flank) then ("--max_clustring_flank " +  '"' + max_clu_string_flank + '"') else ""} \
      ~{if defined(flank_tiny_length) then ("--flank_tiny_length " +  '"' + flank_tiny_length + '"') else ""} \
      ~{if defined(flank_tiny_ratio) then ("--flank_tiny_ratio " +  '"' + flank_tiny_ratio + '"') else ""} \
      ~{if defined(min_splice_bund_ary_hits) then ("--min_splice_bundary_hits " +  '"' + min_splice_bund_ary_hits + '"') else ""} \
      ~{if defined(max_num_cigar) then ("--max_num_cigar " +  '"' + max_num_cigar + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    preview: "determine fragment-length-range and library-type and exit"
    library_type: "<first, second, unstranded>  library type of the sample, default: unstranded"
    min_bridging_score: "the minimized bottleneck weight in bridging path, default: 0.5"
    dp_solution_size: "candidate number of bridgign paths, default: 10"
    dp_stack_size: "number of weights maintained for each bridging path, default: 5"
    max_clu_string_flank: "maximized basepair difference for being in an equivalent class, default: 30"
    flank_tiny_length: "maximized length for reconsidering error correction, default:  10"
    flank_tiny_ratio: "maximized ratio for reconsidering error correction, default:  0.4"
    min_splice_bund_ary_hits: "minimum number of spliced reads required for a junction, default: 1"
    max_num_cigar: "ignore reads with CIGAR size larger than this value, default: 1000"
    i: ""
    o: ""
    r: ""
  }
}