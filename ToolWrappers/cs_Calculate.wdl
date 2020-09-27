version 1.0

task CsCalculate {
  input {
    String cs
  }
  command <<<
    cs Calculate \
      ~{cs}
  >>>
  parameter_meta {
    cs: ""
  }
  output {
    File out_stdout = stdout()
  }
}