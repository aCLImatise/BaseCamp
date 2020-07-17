version 1.0

task Msa.sh {
  input {
    String in
  }
  command <<<
    msa.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}