version 1.0

task Getmesh {
  input {
    Boolean oO
  }
  command <<<
    getmesh \
      ~{true="-o" false="" oO}
  >>>
}