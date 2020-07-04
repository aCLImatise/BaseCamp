version 1.0

task BpIndex.pl {
  input {
    Boolean? fmt
    Boolean? dir
    String? type
    Boolean? report_index_addition
  }
  command <<<
    bp_index.pl \
      ~{true="-fmt" false="" fmt} \
      ~{true="-dir" false="" dir} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{true="-v" false="" report_index_addition}
  >>>
  parameter_meta {
    fmt: "<format>   - Fasta (default), swiss or EMBL"
    dir: "<dir>      - directory where the index files are found (overrides BIOPERL_INDEX environment variable)"
    type: "- DBM_file type.  (overrides BIOPERL_INDEX_TYPE environment variable)"
    report_index_addition: "- report every index addition (debugging)"
  }
}