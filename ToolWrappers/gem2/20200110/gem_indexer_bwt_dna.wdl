version 1.0

task GemindexerBwtdna {
  input {
    File? mandatory
    Int? threads
    Boolean? keep_temporaries
    Boolean? verbose
    Boolean? show_license
    String gem_indexer_bwt_dna
  }
  command <<<
    gem_indexer_bwt_dna \
      ~{gem_indexer_bwt_dna} \
      ~{if defined(mandatory) then ("-o " +  '"' + mandatory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (keep_temporaries) then "--keep-temporaries" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (show_license) then "--show-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    mandatory: "(mandatory)"
    threads: "(default=1)"
    keep_temporaries: "(default: deleted in the end)"
    verbose: "(default=false)"
    show_license: "(print license and exit)"
    gem_indexer_bwt_dna: "-i <input_file>                 (mandatory)"
  }
  output {
    File out_stdout = stdout()
  }
}