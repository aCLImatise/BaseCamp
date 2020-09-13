version 1.0

task IteroCheckItero {
  input {
    String check
  }
  command <<<
    itero check itero \
      ~{check}
  >>>
  parameter_meta {
    check: ""
  }
  output {
    File out_stdout = stdout()
  }
}