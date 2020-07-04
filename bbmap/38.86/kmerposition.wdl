version 1.0

task Kmerposition.sh {
  input {
    String in
  }
  command <<<
    kmerposition.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}