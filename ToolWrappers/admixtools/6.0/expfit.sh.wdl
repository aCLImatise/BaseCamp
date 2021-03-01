version 1.0

task Expfitsh {
  input {
    String par_file
  }
  command <<<
    expfit_sh \
      ~{par_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    par_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}