version 1.0

task Testfilesystem.sh {
  input {
    String in
    String out
    String log
    Int size
    String ways
    Int interval_in_seconds
  }
  command <<<
    testfilesystem.sh \
      ~{in} \
      ~{out} \
      ~{log} \
      ~{size} \
      ~{ways} \
      ~{interval_in_seconds}
  >>>
  parameter_meta {
    in: ""
    out: ""
    log: ""
    size: ""
    ways: ""
    interval_in_seconds: ""
  }
}