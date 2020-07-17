version 1.0

task BpParseHmmsearch.pl {
  input {
    Boolean? hmmsearch_file_parse
    Boolean? index_file_contains
    Boolean? po
    Boolean? ps
  }
  command <<<
    bp_parse_hmmsearch.pl \
      ~{true="-s" false="" hmmsearch_file_parse} \
      ~{true="-m" false="" index_file_contains} \
      ~{true="--po" false="" po} \
      ~{true="--ps" false="" ps}
  >>>
  parameter_meta {
    hmmsearch_file_parse: "HMMSEARCH file to parse."
    index_file_contains: "INDEX file that contains a list of HMMSEARCH files for multiple parsing."
    po: "Print only the hits that have positive scores."
    ps: "Print the total of positive scores found."
  }
}