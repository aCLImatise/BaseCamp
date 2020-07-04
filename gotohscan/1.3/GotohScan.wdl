version 1.0

task GotohScan {
  input {
    String? arguments
  }
  command <<<
    GotohScan \
      ~{arguments}
  >>>
  parameter_meta {
    arguments: ""
  }
}