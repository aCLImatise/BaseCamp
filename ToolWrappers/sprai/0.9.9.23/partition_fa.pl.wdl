version 1.0

task PartitionFapl {
  input {
    String this
    String in_dot_fa
  }
  command <<<
    partition_fa_pl \
      ~{this} \
      ~{in_dot_fa}
  >>>
  parameter_meta {
    this: ""
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}