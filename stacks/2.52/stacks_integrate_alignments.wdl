version 1.0

task StacksIntegrateAlignments {
  input {
    String pP
    String bB
    String oO
  }
  command <<<
    stacks-integrate-alignments \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""}
  >>>
}