version 1.0

task Filtervcf.sh {
  input {
    String in
  }
  command <<<
    filtervcf.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}