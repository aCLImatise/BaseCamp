version 1.0

task SequenzaUtilsGcWiggle {
  input {
    String fastFastA
    String oO
    String wW
  }
  command <<<
    sequenza-utils gc_wiggle \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}