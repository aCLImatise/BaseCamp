version 1.0

task CRISPRessoCount {
  input {
    String guideGuideLength
    Boolean keepKeepIntermediate
  }
  command <<<
    CRISPRessoCount \
      ~{if defined(guideGuideLength) then ("--guide_length " +  '"' + guideGuideLength + '"') else ""} \
      ~{true="--keep_intermediate" false="" keepKeepIntermediate}
  >>>
}