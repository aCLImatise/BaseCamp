version 1.0

task EndsInLf {
  input {
    File file
  }
  command <<<
    endsInLf \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}