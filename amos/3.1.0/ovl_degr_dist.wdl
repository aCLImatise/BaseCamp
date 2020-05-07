version 1.0

task OvlDegrDist {
  input {
    Boolean mM
    String oO
  }
  command <<<
    ovl-degr-dist \
      ~{true="-m" false="" mM} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}