version 1.0

task Getreads.sh {
  input {
    String in
  }
  command <<<
    getreads.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}