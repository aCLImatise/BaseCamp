version 1.0

task ClanIndex {
  input {
    Boolean? d
    Boolean? f
    String? reference_file
    String? index_prefix
  }
  command <<<
    clan_index \
      ~{reference_file} \
      ~{index_prefix} \
      ~{if (d) then "-d" else ""} \
      ~{if (f) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d: ""
    f: ""
    reference_file: ""
    index_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}