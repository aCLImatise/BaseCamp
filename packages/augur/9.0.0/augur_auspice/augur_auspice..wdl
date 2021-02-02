version 1.0

task AugurAuspice {
  input {
    String augur
  }
  command <<<
    augur auspice_ \
      ~{augur}
  >>>
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}