version 1.0

task BowtieAlignS {
  input {
    Boolean phred33Phred33Quals
    Boolean phred64Phred64Quals
    Boolean solexaSolexaQuals
    Boolean solexa1Solexa1
    Boolean integerIntegerQuals
    Boolean nN
    Boolean eE
    Boolean lL
    Boolean noNoMaqRound
    Boolean iI
    Boolean xX
    Boolean frFr
    Boolean noNoFw
    Int maxMaxBts
    Int pairPairTries
    Boolean yY
    Int chunkChunkMbs
    Boolean readsReadsPerBatch
    Int kK
    Boolean aA
    Int mM
    Int mM
    Boolean bestBest
    Boolean strataStrata
    Boolean tT
    Boolean bB
    Boolean quietQuiet
    Boolean refRefIdx
    String alAl
    String unUn
    Boolean noNoUnal
    String maxMax
    String suppressSuppress
    Boolean fullFullRef
    String snpSnpFrac
    Boolean colColCseq
    Boolean colColCQual
    Boolean colColKeepEnds
    Boolean sS
    Int mapqMapq
    Boolean samSamNoHead
    Boolean samSamNoSq
    String samSamRg
    Boolean oO
    Boolean pP
    Boolean mmMm
    Boolean shmemShmem
    Int seedSeed
    Boolean verboseVerbose
  }
  command <<<
    bowtie-align-s \
      ~{true="--phred33-quals" false="" phred33Phred33Quals} \
      ~{true="--phred64-quals" false="" phred64Phred64Quals} \
      ~{true="--solexa-quals" false="" solexaSolexaQuals} \
      ~{true="--solexa1" false="" solexa1Solexa1} \
      ~{true="--integer-quals" false="" integerIntegerQuals} \
      ~{true="-n" false="" nN} \
      ~{true="-e" false="" eE} \
      ~{true="-l" false="" lL} \
      ~{true="--nomaqround" false="" noNoMaqRound} \
      ~{true="-I" false="" iI} \
      ~{true="-X" false="" xX} \
      ~{true="--fr" false="" frFr} \
      ~{true="--nofw" false="" noNoFw} \
      ~{if defined(maxMaxBts) then ("--maxbts " +  '"' + maxMaxBts + '"') else ""} \
      ~{if defined(pairPairTries) then ("--pairtries " +  '"' + pairPairTries + '"') else ""} \
      ~{true="-y" false="" yY} \
      ~{if defined(chunkChunkMbs) then ("--chunkmbs " +  '"' + chunkChunkMbs + '"') else ""} \
      ~{true="--reads-per-batch" false="" readsReadsPerBatch} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="--best" false="" bestBest} \
      ~{true="--strata" false="" strataStrata} \
      ~{true="-t" false="" tT} \
      ~{true="-B" false="" bB} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--refidx" false="" refRefIdx} \
      ~{if defined(alAl) then ("--al " +  '"' + alAl + '"') else ""} \
      ~{if defined(unUn) then ("--un " +  '"' + unUn + '"') else ""} \
      ~{true="--no-unal" false="" noNoUnal} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(suppressSuppress) then ("--suppress " +  '"' + suppressSuppress + '"') else ""} \
      ~{true="--fullref" false="" fullFullRef} \
      ~{if defined(snpSnpFrac) then ("--snpfrac " +  '"' + snpSnpFrac + '"') else ""} \
      ~{true="--col-cseq" false="" colColCseq} \
      ~{true="--col-cqual" false="" colColCQual} \
      ~{true="--col-keepends" false="" colColKeepEnds} \
      ~{true="-S" false="" sS} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{true="--sam-nohead" false="" samSamNoHead} \
      ~{true="--sam-nosq" false="" samSamNoSq} \
      ~{if defined(samSamRg) then ("--sam-RG " +  '"' + samSamRg + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="--mm" false="" mmMm} \
      ~{true="--shmem" false="" shmemShmem} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}