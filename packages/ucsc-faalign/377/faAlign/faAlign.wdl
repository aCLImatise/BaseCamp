version 1.0

task FaAlign {
  input {
    Boolean? dna
    String target_dot_fa
    String query_dot_fa
  }
  command <<<
    faAlign \
      ~{target_dot_fa} \
      ~{query_dot_fa} \
      ~{if (dna) then "-dna" else ""}
  >>>
  parameter_meta {
    dna: "- use DNA scoring scheme"
    target_dot_fa: ""
    query_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}