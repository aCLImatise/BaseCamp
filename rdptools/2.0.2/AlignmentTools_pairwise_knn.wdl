version 1.0

task AlignmentToolsPairwiseKnn {
  input {
    String kK
    String modeMode
    String outOut
    String prefilterPrefilter
    String wordWordSize
  }
  command <<<
    AlignmentTools pairwise-knn \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(prefilterPrefilter) then ("--prefilter " +  '"' + prefilterPrefilter + '"') else ""} \
      ~{if defined(wordWordSize) then ("--word-size " +  '"' + wordWordSize + '"') else ""}
  >>>
}