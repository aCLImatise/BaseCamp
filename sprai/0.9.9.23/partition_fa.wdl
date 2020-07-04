version 1.0

task PartitionFa.pl {
  input {
    String this
    String in_dot_fa
  }
  command <<<
    partition_fa.pl \
      ~{this} \
      ~{in_dot_fa}
  >>>
  parameter_meta {
    this: ""
    in_dot_fa: ""
  }
}