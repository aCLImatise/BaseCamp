version 1.0

task GimmeMotifs {
  input {
    String backgroundBackground
    String gG
    Boolean deDeNovo
    Boolean knownKnown
    Boolean noNoReport
    Boolean rawRawScore
    Boolean noNoGc
    Int nNThreads
    String pP
    String toolsTools
    String analysisAnalysis
    Boolean keepKeepIntermediate
    Boolean singleSingleStrand
    String fractionFraction
    String sizeSize
    String? inputInput
    String? outdirOutdir
  }
  command <<<
    gimme motifs \
      ~{inputInput} \
      ~{if defined(backgroundBackground) then ("--background " +  '"' + backgroundBackground + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="--denovo" false="" deDeNovo} \
      ~{true="--known" false="" knownKnown} \
      ~{true="--noreport" false="" noNoReport} \
      ~{true="--rawscore" false="" rawRawScore} \
      ~{true="--nogc" false="" noNoGc} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(toolsTools) then ("--tools " +  '"' + toolsTools + '"') else ""} \
      ~{if defined(analysisAnalysis) then ("--analysis " +  '"' + analysisAnalysis + '"') else ""} \
      ~{true="--keepintermediate" false="" keepKeepIntermediate} \
      ~{true="--singlestrand" false="" singleSingleStrand} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{outdirOutdir}
  >>>
}