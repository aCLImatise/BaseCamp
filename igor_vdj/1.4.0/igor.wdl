version 1.0

task Igor {
  input {
    String igor
  }
  command <<<
    igor \
      ~{igor}
  >>>
  parameter_meta {
    igor: "IGOR(1)"
  }
}