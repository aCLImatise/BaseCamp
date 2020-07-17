version 1.0

task Statswrapper.sh {
  input {
    String in
  }
  command <<<
    statswrapper.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}