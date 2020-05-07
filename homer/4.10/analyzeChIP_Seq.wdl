version 1.0

task AnalyzeChIPSeq.pl {
  input {
    Boolean iI
    Boolean styleStyle
    Boolean pP
    Boolean enhancerEnhancer
    Boolean forceForce
    Boolean maskMask
    Boolean skipSkipFreq
    Boolean cpgCpg
    Boolean tagTagGo
    Boolean lenLen
    String dD
  }
  command <<<
    analyzeChIP-Seq.pl \
      ~{true="-i" false="" iI} \
      ~{true="-style" false="" styleStyle} \
      ~{true="-p" false="" pP} \
      ~{true="-enhancer" false="" enhancerEnhancer} \
      ~{true="-force" false="" forceForce} \
      ~{true="-mask" false="" maskMask} \
      ~{true="-skipFreq" false="" skipSkipFreq} \
      ~{true="-cpg" false="" cpgCpg} \
      ~{true="-tagGO" false="" tagTagGo} \
      ~{true="-len" false="" lenLen} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""}
  >>>
}