version 1.0

task FastutilsSubsample {
  input {
    String inIn
    String outOut
    Int depthDepth
    String genomeGenomeSize
    Boolean randomRandom
    Boolean longestLongest
    Int seedSeed
    Boolean fastFastQ
    Boolean commentComment
    Boolean numNum
    Boolean keepKeep
    Boolean fofFofN
  }
  command <<<
    fastutils subsample \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genomeSize " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{true="--random" false="" randomRandom} \
      ~{true="--longest" false="" longestLongest} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{true="--comment" false="" commentComment} \
      ~{true="--num" false="" numNum} \
      ~{true="--keep" false="" keepKeep} \
      ~{true="--fofn" false="" fofFofN}
  >>>
}