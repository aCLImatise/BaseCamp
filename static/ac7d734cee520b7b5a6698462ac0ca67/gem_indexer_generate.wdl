version 1.0

task GemindexerGenerate {
  input {
    String? mandatory
    Int? sampling_rate
    Boolean? index_type
    File? bwt_file
    String? mm_tmp_prefix
    Boolean? check_index
    Boolean? verbose
    Boolean? show_license
    String gem_indexer_generate
  }
  command <<<
    gem_indexer_generate \
      ~{gem_indexer_generate} \
      ~{if defined(mandatory) then ("-o " +  '"' + mandatory + '"') else ""} \
      ~{if defined(sampling_rate) then ("--sampling-rate " +  '"' + sampling_rate + '"') else ""} \
      ~{if (index_type) then "--index-type" else ""} \
      ~{if defined(bwt_file) then ("--bwt-file " +  '"' + bwt_file + '"') else ""} \
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
    sampling_rate: "(default=32,\\n16/32/64/128 ok)"
    index_type: "'fmi-dna'|'fmi-dna-compact'|'fmi-general'\\n(default='fmi-dna')"
    bwt_file: "(default: BWT computed in RAM)"
    mm_tmp_prefix: "(default=\\\"/tmp/mm_new-\\\")"
    check_index: "(default=false)"
    verbose: "(default=false)"
    show_license: "(print license and exit)"
    gem_indexer_generate: "-i <input_file>                 (mandatory)"
  }
  output {
    File out_stdout = stdout()
  }
}