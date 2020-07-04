version 1.0

task JeDemultiplexIllu {
  input {
    String data_dot
  }
  command <<<
    je demultiplex-illu \
      ~{data_dot}
  >>>
  parameter_meta {
    data_dot: "Required. "
  }
}