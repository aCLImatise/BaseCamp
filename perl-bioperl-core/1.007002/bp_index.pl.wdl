version 1.0

task BpIndexpl {
  input {
    Boolean? fmt
    Boolean? dir
    String? type
    Boolean? report_index_addition
    String bioperl_lat_bioperl_dot_org
  }
  command <<<
    bp_index_pl \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{if (fmt) then "-fmt" else ""} \
      ~{if (dir) then "-dir" else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (report_index_addition) then "-v" else ""}
  >>>
  parameter_meta {
    fmt: "<format>   - Fasta (default), swiss or EMBL"
    dir: "<dir>      - directory where the index files are found\\n(overrides BIOPERL_INDEX environment variable)"
    type: "- DBM_file type.\\n(overrides BIOPERL_INDEX_TYPE environment variable)"
    report_index_addition: "- report every index addition (debugging)"
    bioperl_lat_bioperl_dot_org: "- General discussion"
  }
  output {
    File out_stdout = stdout()
  }
}