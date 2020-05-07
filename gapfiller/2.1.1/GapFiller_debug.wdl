version 1.0

task GapFillerDebug {
  input {
    String kK
    String blockBlockLength
    String outputOutputPrefix
    Boolean gzGz
    Boolean bz2Bz2
    String seed1Seed1
    String seed2Seed2
    String seedSeedSam
    String queryQuery
    String queryQuerySam
    String seedSeedIns
    String seedSeedVar
    Boolean storeStoreLayout
    String overlapOverlap
    String mismatchMismatchRate
    String extExtThreshold
    String limitLimit
    Boolean noNoReadCycle
    Boolean mateMatePairs
    Boolean verboseVerbose
  }
  command <<<
    GapFiller_debug \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(blockBlockLength) then ("--block-length " +  '"' + blockBlockLength + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--gz" false="" gzGz} \
      ~{true="--bz2" false="" bz2Bz2} \
      ~{if defined(seed1Seed1) then ("--seed1 " +  '"' + seed1Seed1 + '"') else ""} \
      ~{if defined(seed2Seed2) then ("--seed2 " +  '"' + seed2Seed2 + '"') else ""} \
      ~{if defined(seedSeedSam) then ("--seed-sam " +  '"' + seedSeedSam + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(queryQuerySam) then ("--query-sam " +  '"' + queryQuerySam + '"') else ""} \
      ~{if defined(seedSeedIns) then ("--seed-ins " +  '"' + seedSeedIns + '"') else ""} \
      ~{if defined(seedSeedVar) then ("--seed-var " +  '"' + seedSeedVar + '"') else ""} \
      ~{true="--store-layout" false="" storeStoreLayout} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(mismatchMismatchRate) then ("--mismatch-rate " +  '"' + mismatchMismatchRate + '"') else ""} \
      ~{if defined(extExtThreshold) then ("--extThreshold " +  '"' + extExtThreshold + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--no-read-cycle" false="" noNoReadCycle} \
      ~{true="--mate-pairs" false="" mateMatePairs} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}