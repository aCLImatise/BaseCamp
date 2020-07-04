version 1.0

task Shrinkaccession.sh {
  input {
    String in
  }
  command <<<
    shrinkaccession.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}