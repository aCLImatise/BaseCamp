version 1.0

task BinsanityWf {
  input {
    String cC
    String fF
    String pP
    Int mM
    String vV
    String dD
    String lL
    Int xX
    String oO
    String threadsThreads
    String kmKmEr
    String prefixPrefix
    String refineRefinePreference
    String binBinPrefix
  }
  command <<<
    Binsanity-wf \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--Prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(refineRefinePreference) then ("--refine-preference " +  '"' + refineRefinePreference + '"') else ""} \
      ~{if defined(binBinPrefix) then ("--binPrefix " +  '"' + binBinPrefix + '"') else ""}
  >>>
}