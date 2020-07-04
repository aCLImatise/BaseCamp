version 1.0

task MafToAxt {
  input {
    Boolean? strip_db
    String in_dot_maf
    String t_name
    String qname
    String var_output
  }
  command <<<
    mafToAxt \
      ~{in_dot_maf} \
      ~{t_name} \
      ~{qname} \
      ~{var_output} \
      ~{true="-stripDb" false="" strip_db}
  >>>
  parameter_meta {
    strip_db: "- Strip names from start to first period."
    in_dot_maf: ""
    t_name: ""
    qname: ""
    var_output: ""
  }
}