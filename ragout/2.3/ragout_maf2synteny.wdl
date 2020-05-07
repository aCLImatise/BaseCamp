version 1.0

task RagoutMaf2synteny {
  input {
    String oO
    String sS
    String bB
    String? mafMafFile
  }
  command <<<
    ragout-maf2synteny \
      ~{mafMafFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}