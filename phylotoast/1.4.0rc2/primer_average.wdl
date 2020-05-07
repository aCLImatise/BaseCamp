version 1.0

task PrimerAverage.py {
  input {
    String p1P1
    String p2P2
    String oO
    Boolean vV
  }
  command <<<
    primer_average.py \
      ~{if defined(p1P1) then ("--p1 " +  '"' + p1P1 + '"') else ""} \
      ~{if defined(p2P2) then ("--p2 " +  '"' + p2P2 + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}