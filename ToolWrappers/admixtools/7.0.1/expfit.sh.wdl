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
    docker: "quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0"
  }
  parameter_meta {
    par_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}