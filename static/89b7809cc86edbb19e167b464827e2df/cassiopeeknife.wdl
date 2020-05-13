version 1.0

task Cassiopeeknife {
  input {
    Boolean sS
    Boolean oO
    Boolean vV
  }
  command <<<
    cassiopeeknife \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV}
  >>>
}