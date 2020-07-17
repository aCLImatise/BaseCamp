version 1.0

task BpFetch.pl {
  input {
    Boolean? fmt
    Boolean? acc
    Boolean? dir
    String? type
    String net
    String ace
  }
  command <<<
    bp_fetch.pl \
      ~{net} \
      ~{ace} \
      ~{true="-fmt" false="" fmt} \
      ~{true="-acc" false="" acc} \
      ~{true="-dir" false="" dir} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    fmt: "<format> - Output format Fasta (default), EMBL, Raw, swiss or GCG"
    acc: "- string is an accession number, not an id."
    dir: "<dir>    - directory to find the index files (overrides BIOPERL_INDEX environment variable)"
    type: "- type of DBM file to open (overrides BIOPERL_INDEX_TYPE environment variable)"
    net: "- networked http: based database"
    ace: "- ACeDB database"
  }
}