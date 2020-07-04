version 1.0

task Pyrosim {
  input {
    String fast_a
  }
  command <<<
    pyrosim \
      ~{fast_a}
  >>>
  parameter_meta {
    fast_a: ""
  }
}