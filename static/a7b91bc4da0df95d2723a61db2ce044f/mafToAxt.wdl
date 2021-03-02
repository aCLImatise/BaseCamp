version 1.0

task MafToAxt {
  input {
    Boolean? strip_db
    String in_dot_maf
    String t_name
    String qname
  }
  command <<<
    mafToAxt \
      ~{in_dot_maf} \
      ~{t_name} \
      ~{qname} \
      ~{if (strip_db) then "-stripDb" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strip_db: "- Strip names from start to first period."
    in_dot_maf: ""
    t_name: ""
    qname: ""
  }
  output {
    File out_stdout = stdout()
  }
}