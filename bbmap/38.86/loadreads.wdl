version 1.0

task Loadreads.sh {
  input {
    String in
  }
  command <<<
    loadreads.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}