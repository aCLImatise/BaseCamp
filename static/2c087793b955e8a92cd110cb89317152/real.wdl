version 1.0

task Real {
  input {
    File? maximum_number_errors
    Boolean? total_maximum_number
    Boolean? length_seed_default
    Boolean? search_unique_match
    Boolean? fraction_use_default
    Boolean? use_quality_scores
    Boolean? offset_quality_scores
    Boolean? rewrite_pattern_default
    Boolean? number_matching_threads
    Boolean? similarity
    Boolean? trans
    Boolean? gc
    Boolean? gcm_ut_bias
    Boolean? filter_level
  }
  command <<<
    real \
      ~{if defined(maximum_number_errors) then ("-t " +  '"' + maximum_number_errors + '"') else ""} \
      ~{if (total_maximum_number) then "-e" else ""} \
      ~{if (length_seed_default) then "-l" else ""} \
      ~{if (search_unique_match) then "-u" else ""} \
      ~{if (fraction_use_default) then "-f" else ""} \
      ~{if (use_quality_scores) then "-q" else ""} \
      ~{if (offset_quality_scores) then "-Q" else ""} \
      ~{if (rewrite_pattern_default) then "-R" else ""} \
      ~{if (number_matching_threads) then "-T" else ""} \
      ~{if (similarity) then "-similarity" else ""} \
      ~{if (trans) then "-trans" else ""} \
      ~{if (gc) then "-gc" else ""} \
      ~{if (gcm_ut_bias) then "-gcmut_bias" else ""} \
      ~{if (filter_level) then "-filter_level" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    maximum_number_errors: "<maximum number of errors in seed, default=2>"
    total_maximum_number: "<total maximum number of errors, default=5>"
    length_seed_default: "<length of seed, default=32>"
    search_unique_match: "<search for unique match, default=1>"
    fraction_use_default: "<fraction of physical memory to use, default=0.75>"
    use_quality_scores: "<use quality scores, default=1>"
    offset_quality_scores: "<offset for quality scores, default=autodetect>"
    rewrite_pattern_default: "<rewrite pattern file, default=1>"
    number_matching_threads: "<number of matching threads, default=8>"
    similarity: "<sequence similarity, default=0.995>"
    trans: "<transitions fraction of mutations, default=0.71>"
    gc: "<composition bias, default=0.41>"
    gcm_ut_bias: "<mutability bias of G&C, default=2>"
    filter_level: "<filtering level for equal hits 0-4, default=2>"
  }
  output {
    File out_stdout = stdout()
  }
}