version 1.0

task Fmt {
  input {
    String crownCrownMargin
    String prefixPrefix
    String splitSplitOnly
    Boolean taggedTaggedParagraph
    Boolean uniformUniformSpacing
    String widthWidth
    String goalGoal
  }
  command <<<
    fmt \
      ~{if defined(crownCrownMargin) then ("--crown-margin " +  '"' + crownCrownMargin + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(splitSplitOnly) then ("--split-only " +  '"' + splitSplitOnly + '"') else ""} \
      ~{true="--tagged-paragraph" false="" taggedTaggedParagraph} \
      ~{true="--uniform-spacing" false="" uniformUniformSpacing} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(goalGoal) then ("--goal " +  '"' + goalGoal + '"') else ""}
  >>>
}