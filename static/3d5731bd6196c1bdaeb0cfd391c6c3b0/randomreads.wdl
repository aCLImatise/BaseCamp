version 1.0

task Randomreads.sh {
  input {
    String ref
  }
  command <<<
    randomreads.sh \
      ~{ref}
  >>>
  parameter_meta {
    ref: ""
  }
}