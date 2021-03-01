version 1.0

task BpFetchpl {
  input {
    Boolean? fmt
    Boolean? acc
    Boolean? dir
    File? type
    String net
    String ace
    String information
    String id_dot
    String sdbm_file
    String author
    String bioperl_lat_bioperl_dot_org
  }
  command <<<
    bp_fetch_pl \
      ~{net} \
      ~{ace} \
      ~{information} \
      ~{id_dot} \
      ~{sdbm_file} \
      ~{author} \
      ~{bioperl_lat_bioperl_dot_org} \
      ~{if (fmt) then "-fmt" else ""} \
      ~{if (acc) then "-acc" else ""} \
      ~{if (dir) then "-dir" else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fmt: "<format> - Output format\\nFasta (default), EMBL, Raw, swiss or GCG"
    acc: "- string is an accession number, not an"
    dir: "<dir>    - directory to find the index files\\n(overrides BIOPERL_INDEX environment variable)"
    type: "- type of DBM file to open\\n(overrides BIOPERL_INDEX_TYPE environment variable)"
    net: "- networked http: based database"
    ace: "- ACeDB database"
    information: "OPTIONS"
    id_dot: "options only for expert use"
    sdbm_file: "USING IT YOURSELF"
    author: "Code"
    bioperl_lat_bioperl_dot_org: "- General discussion"
  }
  output {
    File out_stdout = stdout()
  }
}