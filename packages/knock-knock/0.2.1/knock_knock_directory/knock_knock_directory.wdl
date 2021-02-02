version 1.0

task KnockknockDirectory {
  input {
    String knock_knock
  }
  command <<<
    knock_knock directory \
      ~{knock_knock}
  >>>
  parameter_meta {
    knock_knock: ""
  }
  output {
    File out_stdout = stdout()
  }
}