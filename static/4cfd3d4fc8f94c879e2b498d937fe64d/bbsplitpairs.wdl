version 1.0

task Bbsplitpairs.sh {
  input {
    String in
  }
  command <<<
    bbsplitpairs.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}