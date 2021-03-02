version 1.0

task BpParseHmmsearchpl {
  input {
    Boolean? hmmsearch_file_parse
    Boolean? index_file_contains
    Boolean? po
    Boolean? ps
    String parsing_dot
    String bioperl_lat_bioperl_dot_org
  }
  command <<<
    bp_parse_hmmsearch_pl \
      ~{parsing_dot} \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{if (hmmsearch_file_parse) then "-s" else ""} \
      ~{if (index_file_contains) then "-m" else ""} \
      ~{if (po) then "--po" else ""} \
      ~{if (ps) then "--ps" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hmmsearch_file_parse: "HMMSEARCH file to parse."
    index_file_contains: "INDEX file that contains a list of HMMSEARCH files for multiple"
    po: "Print only the hits that have positive scores."
    ps: "Print the total of positive scores found."
    parsing_dot: "Special Options:"
    bioperl_lat_bioperl_dot_org: "- General discussion"
  }
  output {
    File out_stdout = stdout()
  }
}