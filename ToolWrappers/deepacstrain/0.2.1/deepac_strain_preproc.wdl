version 1.0

task DeepacstrainPreproc {
  input {
    String config
  }
  command <<<
    deepac_strain preproc \
      ~{config}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    config: "Preprocessing config file."
  }
  output {
    File out_stdout = stdout()
  }
}