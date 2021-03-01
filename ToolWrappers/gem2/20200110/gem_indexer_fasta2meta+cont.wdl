version 1.0

task GemindexerFasta2metacont {
  input {
    File? i
    String? o
    Boolean? content_type
    Boolean? force_fmi_general_index
    Boolean? filter_function
    Boolean? color_space
    Boolean? strip_unknown_bases_threshold
    Int? complement_size_threshold
    Boolean? complement
    Boolean? verbose
    Boolean? show_license
    Int gem_indexer_fast_a_two_meta
  }
  command <<<
    gem_indexer_fasta2meta_cont \
      ~{gem_indexer_fast_a_two_meta} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (content_type) then "--content-type" else ""} \
      ~{if (force_fmi_general_index) then "--force-fmi-general-index" else ""} \
      ~{if (filter_function) then "--filter-function" else ""} \
      ~{if (color_space) then "--colorspace" else ""} \
      ~{if (strip_unknown_bases_threshold) then "--strip-unknown-bases-threshold" else ""} \
      ~{if defined(complement_size_threshold) then ("--complement-size-threshold " +  '"' + complement_size_threshold + '"') else ""} \
      ~{if (complement) then "--complement" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (show_license) then "--show-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    i: "(mandatory)"
    o: "(mandatory)"
    content_type: "'dna'|'protein'\\n(default='dna')"
    force_fmi_general_index: "(default: deduced from content)"
    filter_function: "'iupac-dna'|'iupac-colorspace-dna'|'none'\\n(default='iupac-dna')"
    color_space: "(same as\\n'--filter-function iupac-colorspace-dna')"
    strip_unknown_bases_threshold: "'disable'|<integer>\\n(default=50 for DNA,\\n'disable' for protein)"
    complement_size_threshold: "(default=2GB)"
    complement: "'yes'|'emulate'|'no'\\n(default='yes' for DNA below threshold,\\n'emulate' for DNA above threshold,\\n'no' for protein)"
    verbose: "(default=false)"
    show_license: "(print license and exit)"
    gem_indexer_fast_a_two_meta: ""
  }
  output {
    File out_stdout = stdout()
  }
}