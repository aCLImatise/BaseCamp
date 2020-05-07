version 1.0

task BinsanityLc {
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
    String checkCheckMThreads
    String kKMeanThreads
    String kmKmEr
    Boolean refineRefinePreference
    String cC
    String prefixPrefix
  }
  command <<<
    Binsanity-lc \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(checkCheckMThreads) then ("--checkm_threads " +  '"' + checkCheckMThreads + '"') else ""} \
      ~{if defined(kKMeanThreads) then ("--kmean_threads " +  '"' + kKMeanThreads + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{true="--refine-preference" false="" refineRefinePreference} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--Prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}