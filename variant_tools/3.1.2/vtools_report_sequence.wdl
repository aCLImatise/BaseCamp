version 1.0

task VtoolsReportSequence {
  input {
    Boolean buildBuild
    Boolean numberedNumbered
    String charCharPerLine
    Boolean transcribeTranscribe
    Boolean tTTou
    Boolean translateTranslate
    Boolean markMark
    Boolean markMarkComplement
    Boolean markMarkReverse
    Boolean firstFirstTranscript
    Boolean showShowTranscript
    Boolean markedMarkedRegion
    Boolean hideHideUnmatched
    Boolean zeroZeroBased
    Boolean vV
    String? regionsRegions
  }
  command <<<
    vtools_report sequence \
      ~{regionsRegions} \
      ~{true="--build" false="" buildBuild} \
      ~{true="--numbered" false="" numberedNumbered} \
      ~{if defined(charCharPerLine) then ("--char_per_line " +  '"' + charCharPerLine + '"') else ""} \
      ~{true="--transcribe" false="" transcribeTranscribe} \
      ~{true="--TtoU" false="" tTTou} \
      ~{true="--translate" false="" translateTranslate} \
      ~{true="--mark" false="" markMark} \
      ~{true="--mark_complement" false="" markMarkComplement} \
      ~{true="--mark_reverse" false="" markMarkReverse} \
      ~{true="--first_transcript" false="" firstFirstTranscript} \
      ~{true="--show_transcript" false="" showShowTranscript} \
      ~{true="--marked_region" false="" markedMarkedRegion} \
      ~{true="--hide_unmatched" false="" hideHideUnmatched} \
      ~{true="--zero_based" false="" zeroZeroBased} \
      ~{true="-v" false="" vV}
  >>>
}