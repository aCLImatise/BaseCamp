version 1.0

task Filterqc.sh {
  input {
    String in
  }
  command <<<
    filterqc.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}