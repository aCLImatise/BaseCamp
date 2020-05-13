version 1.0

task IsONcorrect {
  input {
    String fastFastQ
    String kK
    String wW
    String xminXmin
    String xmaxXmax
    String tT
    Boolean exactExact
    Boolean disableDisableNumpy
    Int maxMaxSeqsToSpoA
    Int maxMaxSeqs
    String exactExactInstanceLimit
    Boolean setSetWDynamically
    Boolean verboseVerbose
    Boolean compressionCompression
    String outOutFolder
  }
  command <<<
    isONcorrect \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(wW) then ("--w " +  '"' + wW + '"') else ""} \
      ~{if defined(xminXmin) then ("--xmin " +  '"' + xminXmin + '"') else ""} \
      ~{if defined(xmaxXmax) then ("--xmax " +  '"' + xmaxXmax + '"') else ""} \
      ~{if defined(tT) then ("--T " +  '"' + tT + '"') else ""} \
      ~{true="--exact" false="" exactExact} \
      ~{true="--disable_numpy" false="" disableDisableNumpy} \
      ~{if defined(maxMaxSeqsToSpoA) then ("--max_seqs_to_spoa " +  '"' + maxMaxSeqsToSpoA + '"') else ""} \
      ~{if defined(maxMaxSeqs) then ("--max_seqs " +  '"' + maxMaxSeqs + '"') else ""} \
      ~{if defined(exactExactInstanceLimit) then ("--exact_instance_limit " +  '"' + exactExactInstanceLimit + '"') else ""} \
      ~{true="--set_w_dynamically" false="" setSetWDynamically} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--compression" false="" compressionCompression} \
      ~{if defined(outOutFolder) then ("--outfolder " +  '"' + outOutFolder + '"') else ""}
  >>>
}