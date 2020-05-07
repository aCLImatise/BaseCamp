version 1.0

task Bifrost {
  input {
    Boolean colorsColors
    Boolean keepKeepMercy
    Boolean clipClipTips
    Boolean delDelIsolated
    Boolean fastFastA
    Boolean verboseVerbose
    Boolean clipClipTips
    Boolean delDelIsolated
    Boolean verboseVerbose
    Boolean inInExact
    Boolean verboseVerbose
    String? buildBuild
    String? updateUpdate
    String? queryQuery
  }
  command <<<
    Bifrost \
      ~{buildBuild} \
      ~{true="--colors" false="" colorsColors} \
      ~{true="--keep-mercy" false="" keepKeepMercy} \
      ~{true="--clip-tips" false="" clipClipTips} \
      ~{true="--del-isolated" false="" delDelIsolated} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--clip-tips" false="" clipClipTips} \
      ~{true="--del-isolated" false="" delDelIsolated} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--inexact" false="" inInExact} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{updateUpdate} \
      ~{queryQuery}
  >>>
}