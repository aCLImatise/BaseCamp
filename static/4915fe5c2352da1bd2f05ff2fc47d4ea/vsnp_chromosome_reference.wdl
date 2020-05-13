version 1.0

task VsnpChromosomeReference.py {
  input {
    String wW
    Boolean vV
    String? progProg
  }
  command <<<
    vsnp_chromosome_reference.py \
      ~{progProg} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}