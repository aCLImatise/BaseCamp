version 1.0

task Hsblastn {
  input {
    String or
  }
  command <<<
    hs_blastn \
      ~{or}
  >>>
  parameter_meta {
    or: "hs-blastn align -help"
  }
  output {
    File out_stdout = stdout()
  }
}