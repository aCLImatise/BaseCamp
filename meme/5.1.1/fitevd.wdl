version 1.0

task Fitevd {
  input {
    String q
  }
  command <<<
    fitevd \
      ~{q}
  >>>
  parameter_meta {
    q: ""
  }
  output {
    File out_stdout = stdout()
  }
}