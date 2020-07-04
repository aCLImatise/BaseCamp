version 1.0

task ByobuCtrlA {
  input {
    String? mode
  }
  command <<<
    byobu-ctrl-a \
      ~{mode}
  >>>
  parameter_meta {
    mode: ""
  }
}