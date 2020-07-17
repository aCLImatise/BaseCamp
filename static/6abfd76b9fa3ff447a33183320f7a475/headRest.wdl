version 1.0

task HeadRest {
  input {
    String count
    File filename
  }
  command <<<
    headRest \
      ~{count} \
      ~{filename}
  >>>
  parameter_meta {
    count: ""
    filename: ""
  }
}