version 1.0

task Obdistgen {
  input {
    File filename
  }
  command <<<
    obdistgen \
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