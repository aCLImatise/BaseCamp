version 1.0

task PositionDB {
  input {
    String? args
  }
  command <<<
    positionDB \
      ~{args}
  >>>
  parameter_meta {
    args: ""
  }
}