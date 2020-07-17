version 1.0

task CatUncomment {
  input {
    File file
  }
  command <<<
    catUncomment \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}