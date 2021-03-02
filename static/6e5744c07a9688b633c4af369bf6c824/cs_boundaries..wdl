version 1.0

task CsBoundaries {
  input {
    String cs
  }
  command <<<
    cs boundaries_ \
      ~{cs}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cs: ""
  }
  output {
    File out_stdout = stdout()
  }
}