version 1.0

task Multilignsmp {
  input {
    File configuration_file
  }
  command <<<
    multilign_smp \
      ~{configuration_file}
  >>>
  parameter_meta {
    configuration_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}