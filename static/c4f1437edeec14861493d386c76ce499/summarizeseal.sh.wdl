version 1.0

task Summarizesealsh {
  input {
    String in
  }
  command <<<
    summarizeseal_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}