version 1.0

task Seal.sh {
  input {
    String discarded_dot
  }
  command <<<
    seal.sh \
      ~{discarded_dot}
  >>>
  parameter_meta {
    discarded_dot: "Pairs will be discarded only if both are shorter."
  }
}