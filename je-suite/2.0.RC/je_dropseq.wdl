version 1.0

task JeDropseq {
  input {
    File path_dot
  }
  command <<<
    je dropseq \
      ~{path_dot}
  >>>
  parameter_meta {
    path_dot: "Required. "
  }
}