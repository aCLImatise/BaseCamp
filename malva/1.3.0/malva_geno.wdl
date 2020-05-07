version 1.0

task MalvaGeno {
  input {
    String kK
    String rR
    Int cC
    String? referenceReferenceFa
    String? variantsVariantsVcf
    String? kmcKmcOutputPrefix
  }
  command <<<
    malva-geno \
      ~{referenceReferenceFa} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{variantsVariantsVcf} \
      ~{kmcKmcOutputPrefix}
  >>>
}