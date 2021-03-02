version 1.0

task ClanAnnotate {
  input {
    Boolean? r
    Boolean? f
    Boolean? o
    Boolean? i
    String? clan_file
    String? output_file
    String? reference_file
    String? read_file
  }
  command <<<
    clan_annotate \
      ~{clan_file} \
      ~{output_file} \
      ~{reference_file} \
      ~{read_file} \
      ~{if (r) then "-r" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (o) then "-o" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: ""
    f: ""
    o: ""
    i: ""
    clan_file: ""
    output_file: ""
    reference_file: ""
    read_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}