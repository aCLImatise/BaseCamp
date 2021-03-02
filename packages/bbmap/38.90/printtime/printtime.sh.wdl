version 1.0

task Printtimesh {
  input {
    File filename
  }
  command <<<
    printtime_sh \
      ~{filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}