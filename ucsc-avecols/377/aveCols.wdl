version 1.0

task AveCols {
  input {
    File file
  }
  command <<<
    aveCols \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}