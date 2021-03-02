version 1.0

task Obprop {
  input {
    File filename
  }
  command <<<
    obprop \
      ~{filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}