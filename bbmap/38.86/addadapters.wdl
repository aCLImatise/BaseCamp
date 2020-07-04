version 1.0

task Addadapters.sh {
  input {
    String in
  }
  command <<<
    addadapters.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}