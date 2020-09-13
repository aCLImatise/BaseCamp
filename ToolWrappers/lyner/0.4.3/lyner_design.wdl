version 1.0

task LynerDesign {
  input {
    String design
  }
  command <<<
    lyner design \
      ~{design}
  >>>
  parameter_meta {
    design: ""
  }
  output {
    File out_stdout = stdout()
  }
}