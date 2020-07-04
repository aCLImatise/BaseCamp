version 1.0

task Printtime.sh {
  input {
    File filename
  }
  command <<<
    printtime.sh \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}