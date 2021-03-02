version 1.0

task TurboFold {
  input {
    String sequence_dot
    String to_dot
  }
  command <<<
    TurboFold \
      ~{sequence_dot} \
      ~{to_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence_dot: "Default is no limit."
    to_dot: "SHAPEintercept"
  }
  output {
    File out_stdout = stdout()
  }
}