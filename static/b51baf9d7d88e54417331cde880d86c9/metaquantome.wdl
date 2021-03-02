version 1.0

task Metaquantome {
  input {
    Boolean? v
  }
  command <<<
    metaquantome \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaquantome:2.0.1--py_0"
  }
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}