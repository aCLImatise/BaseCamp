version 1.0

task CsBoundaries {
  input {
    String cs
  }
  command <<<
    cs boundaries_ \
      ~{cs}
  >>>
  parameter_meta {
    cs: ""
  }
  output {
    File out_stdout = stdout()
  }
}