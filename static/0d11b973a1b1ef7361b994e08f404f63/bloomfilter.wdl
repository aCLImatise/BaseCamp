version 1.0

task Bloomfilter.sh {
  input {
    String in
  }
  command <<<
    bloomfilter.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}