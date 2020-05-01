version 1.0

task SampleStatsExtra {
  input {
    Boolean oO
    Boolean pP
    Boolean mM
    Boolean cC
    Boolean aA
    Boolean lL
    Boolean ldLdUseCm
    Boolean ldLdUseBp
    String ldLdSeps
    Boolean dD
    Boolean tT
    Boolean perPerPopStats
    Boolean sS
    String globalGlobalAfs
    String globalGlobalLdR2
    String globalGlobalLdDPrime
    String globalGlobalLdDistsSnpCount
    String maxMaxSims
    Boolean qQ
    String regionRegionLenBp
    String ldLdHistMaxSepBp
    String ldLdHistNumBins
    String ldLdHistMinMaf
    Boolean gG
  }
  command <<<
    sample_stats_extra \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-c" false="" cC} \
      ~{true="-a" false="" aA} \
      ~{true="-l" false="" lL} \
      ~{true="--ld-use-cM" false="" ldLdUseCm} \
      ~{true="--ld-use-bp" false="" ldLdUseBp} \
      ~{if defined(ldLdSeps) then ("--ld-seps " +  '"' + ldLdSeps + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="--per-pop-stats" false="" perPerPopStats} \
      ~{true="-s" false="" sS} \
      ~{if defined(globalGlobalAfs) then ("--global-afs " +  '"' + globalGlobalAfs + '"') else ""} \
      ~{if defined(globalGlobalLdR2) then ("--global-ld-r2 " +  '"' + globalGlobalLdR2 + '"') else ""} \
      ~{if defined(globalGlobalLdDPrime) then ("--global-ld-Dprime " +  '"' + globalGlobalLdDPrime + '"') else ""} \
      ~{if defined(globalGlobalLdDistsSnpCount) then ("--global-ld-dists-snp-count " +  '"' + globalGlobalLdDistsSnpCount + '"') else ""} \
      ~{if defined(maxMaxSims) then ("--max-sims " +  '"' + maxMaxSims + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(regionRegionLenBp) then ("--region-len-bp " +  '"' + regionRegionLenBp + '"') else ""} \
      ~{if defined(ldLdHistMaxSepBp) then ("--ld-hist-max-sep-bp " +  '"' + ldLdHistMaxSepBp + '"') else ""} \
      ~{if defined(ldLdHistNumBins) then ("--ld-hist-num-bins " +  '"' + ldLdHistNumBins + '"') else ""} \
      ~{if defined(ldLdHistMinMaf) then ("--ld-hist-min-maf " +  '"' + ldLdHistMinMaf + '"') else ""} \
      ~{true="-g" false="" gG}
  >>>
}