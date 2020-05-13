version 1.0

task Metabat {
  input {
    Boolean iI
    Boolean oO
    Boolean aA
    Boolean mM
    String maxpMaxp
    String minsMins
    String maxMaxEdges
    String pPTnf
    Boolean noNoAdd
    Boolean cvCvExt
    Boolean xX
    String minMinCvsUm
    Boolean sS
    Boolean tT
    Boolean lL
    Boolean saveSaveCls
    Boolean unbinnedUnbinned
    Boolean noNoBinOut
    String seedSeed
    Boolean dD
    Boolean vV
  }
  command <<<
    metabat \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-m" false="" mM} \
      ~{if defined(maxpMaxp) then ("--maxP " +  '"' + maxpMaxp + '"') else ""} \
      ~{if defined(minsMins) then ("--minS " +  '"' + minsMins + '"') else ""} \
      ~{if defined(maxMaxEdges) then ("--maxEdges " +  '"' + maxMaxEdges + '"') else ""} \
      ~{if defined(pPTnf) then ("--pTNF " +  '"' + pPTnf + '"') else ""} \
      ~{true="--noAdd" false="" noNoAdd} \
      ~{true="--cvExt" false="" cvCvExt} \
      ~{true="-x" false="" xX} \
      ~{if defined(minMinCvsUm) then ("--minCVSum " +  '"' + minMinCvsUm + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-l" false="" lL} \
      ~{true="--saveCls" false="" saveSaveCls} \
      ~{true="--unbinned" false="" unbinnedUnbinned} \
      ~{true="--noBinOut" false="" noNoBinOut} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-v" false="" vV}
  >>>
}