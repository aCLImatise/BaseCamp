version 1.0

task Gemindexer {
  input {
    String? mandatory
    Boolean? strip_unknown_bases_threshold
    Int? threads
    Int? sampling_rate
    Boolean? keep_temporaries
    String? mm_tmp_prefix
    Boolean? check_index
    Boolean? verbose
    Boolean? show_license
    String gem_indexer
  }
  command <<<
    gem_indexer \
      ~{gem_indexer} \
      ~{if defined(mandatory) then ("-o " +  '"' + mandatory + '"') else ""} \
      ~{if (strip_unknown_bases_threshold) then "--strip-unknown-bases-threshold" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(sampling_rate) then ("--sampling-rate " +  '"' + sampling_rate + '"') else ""} \
      ~{if (keep_temporaries) then "--keep-temporaries" else ""} \
      ~{if defined(mm_tmp_prefix) then ("--mm-tmp-prefix " +  '"' + mm_tmp_prefix + '"') else ""} \
      ~{if (check_index) then "--check-index" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (show_license) then "--show-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    mandatory: "(mandatory)"
    strip_unknown_bases_threshold: "'disable'|<integer>\\n(default=50)"
    threads: "(for the BWT generator,\\ndefault=1)"
    sampling_rate: "(default=32 -- 16/32/64/128 ok)"
    keep_temporaries: "(default: deleted in the end)"
    mm_tmp_prefix: "(default=\\\"/tmp/mm_new-\\\")"
    check_index: "(default=false)"
    verbose: "(default=false)"
    show_license: "(print license and exit)"
    gem_indexer: "-i <input_file>                 (mandatory)"
  }
  output {
    File out_stdout = stdout()
  }
}