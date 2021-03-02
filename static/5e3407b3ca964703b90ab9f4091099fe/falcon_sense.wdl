version 1.0

task FalconSense {
  input {
    Int? n_core
    Int? local_match_count_window
    String? local_match_count_threshold
    Int? min_cov
    Int? max_n_read
    Boolean? trim
    Boolean? output_full
    Boolean? output_multi
    String? min_idt
    String? edge_tolerance
    Int? trim_size
  }
  command <<<
    falcon_sense \
      ~{if defined(n_core) then ("--n_core " +  '"' + n_core + '"') else ""} \
      ~{if defined(local_match_count_window) then ("--local_match_count_window " +  '"' + local_match_count_window + '"') else ""} \
      ~{if defined(local_match_count_threshold) then ("--local_match_count_threshold " +  '"' + local_match_count_threshold + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_n_read) then ("--max_n_read " +  '"' + max_n_read + '"') else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (output_full) then "--output_full" else ""} \
      ~{if (output_multi) then "--output_multi" else ""} \
      ~{if defined(min_idt) then ("--min_idt " +  '"' + min_idt + '"') else ""} \
      ~{if defined(edge_tolerance) then ("--edge_tolerance " +  '"' + edge_tolerance + '"') else ""} \
      ~{if defined(trim_size) then ("--trim_size " +  '"' + trim_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_core: "number of processes used for generating consensus"
    local_match_count_window: "local match window size"
    local_match_count_threshold: "local match count threshold"
    min_cov: "minimum coverage to break the consensus"
    max_n_read: "minimum number of reads used in generating the\\nconsensus"
    trim: "trim the input sequence with k-mer spare dynamic\\nprogramming to find the mapped range"
    output_full: "output uncorrected regions too"
    output_multi: "output multi correct regions"
    min_idt: "minimum identity of the alignments used for correction"
    edge_tolerance: "for trimming, the there is unaligned edge leng >\\nedge_tolerance, ignore the read"
    trim_size: "the size for triming both ends from initial sparse\\naligned region\\n"
  }
  output {
    File out_stdout = stdout()
  }
}