version 1.0

task Synthmda.sh {
  input {
    String in
  }
  command <<<
    synthmda.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}