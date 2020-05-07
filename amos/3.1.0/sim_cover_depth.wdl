version 1.0

task SimCoverDepth {
  input {
    Boolean mM
    String oO
  }
  command <<<
    sim-cover-depth \
      ~{true="-m" false="" mM} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}