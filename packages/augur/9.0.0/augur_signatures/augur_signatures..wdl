version 1.0

task AugurSignatures {
  input {
    String augur
  }
  command <<<
    augur signatures_ \
      ~{augur}
  >>>
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}