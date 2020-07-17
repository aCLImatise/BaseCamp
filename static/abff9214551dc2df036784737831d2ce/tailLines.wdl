version 1.0

task TailLines {
  input {
    File file
    String tail
  }
  command <<<
    tailLines \
      ~{file} \
      ~{tail}
  >>>
  parameter_meta {
    file: ""
    tail: ""
  }
}