version 1.0

task JeDemultiplex {
  input {
    String data_dot
  }
  command <<<
    je demultiplex \
      ~{data_dot}
  >>>
  parameter_meta {
    data_dot: "Required. "
  }
}