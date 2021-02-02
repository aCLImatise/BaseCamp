version 1.0

task ClanSearch {
  input {
    Boolean? d
    Boolean? f
    Boolean? o
    Boolean? r
    String? read_file
    String? output_file
    String? reference_file
    String? index_prefix
  }
  command <<<
    clan_search \
      ~{read_file} \
      ~{output_file} \
      ~{reference_file} \
      ~{index_prefix} \
      ~{if (d) then "-d" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (r) then "-r" else ""}
  >>>
  parameter_meta {
    d: ""
    f: ""
    o: ""
    r: ""
    read_file: ""
    output_file: ""
    reference_file: ""
    index_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}