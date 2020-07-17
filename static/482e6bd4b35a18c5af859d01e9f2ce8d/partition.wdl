version 1.0

task Partition.sh {
  input {
    String in
  }
  command <<<
    partition.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}