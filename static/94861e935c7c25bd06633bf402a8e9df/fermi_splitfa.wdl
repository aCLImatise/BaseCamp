version 1.0

task FermiSplitfa {
  input {
    String in_dot_fq
    String out_dot_prefix
    Int? eight
  }
  command <<<
    fermi splitfa \
      ~{in_dot_fq} \
      ~{out_dot_prefix} \
      ~{eight}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_fq: ""
    out_dot_prefix: ""
    eight: ""
  }
  output {
    File out_stdout = stdout()
  }
}