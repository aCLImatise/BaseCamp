version 1.0

task DeepacvirPreproc {
  input {
    String config
  }
  command <<<
    deepac_vir preproc \
      ~{config}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacvir:0.2.2--py_0"
  }
  parameter_meta {
    config: "Preprocessing config file."
  }
  output {
    File out_stdout = stdout()
  }
}