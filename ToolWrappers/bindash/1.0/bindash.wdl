version 1.0

task Bindash {
  input {
    String com_mm_and
  }
  command <<<
    bindash \
      ~{com_mm_and}
  >>>
  parameter_meta {
    com_mm_and: ""
  }
  output {
    File out_stdout = stdout()
  }
}