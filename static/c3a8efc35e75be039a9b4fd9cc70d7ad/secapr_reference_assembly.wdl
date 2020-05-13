version 1.0

task SecaprReferenceAssembly {
  input {
    String readsReads
    String referenceReferenceType
    String referenceReference
    String outputOutput
    Boolean keepKeepDuplicates
    Int minMinCoverage
    String coresCores
    String kK
    String wW
    String dD
    String rR
    String cC
    String aA
    String bB
    String oO
    String eE
    String lL
    String uU
  }
  command <<<
    secapr reference_assembly \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(referenceReferenceType) then ("--reference_type " +  '"' + referenceReferenceType + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--keep_duplicates" false="" keepKeepDuplicates} \
      ~{if defined(minMinCoverage) then ("--min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(wW) then ("--w " +  '"' + wW + '"') else ""} \
      ~{if defined(dD) then ("--d " +  '"' + dD + '"') else ""} \
      ~{if defined(rR) then ("--r " +  '"' + rR + '"') else ""} \
      ~{if defined(cC) then ("--c " +  '"' + cC + '"') else ""} \
      ~{if defined(aA) then ("--a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("--b " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("--o " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("--e " +  '"' + eE + '"') else ""} \
      ~{if defined(lL) then ("--l " +  '"' + lL + '"') else ""} \
      ~{if defined(uU) then ("--u " +  '"' + uU + '"') else ""}
  >>>
}