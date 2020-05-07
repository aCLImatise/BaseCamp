version 1.0

task RtgRocplot {
  input {
    Boolean hideHideSidePane
    Boolean interpolateInterpolate
    Int lineLineWidth
    String precisionPrecisionSensitivity
    Boolean scoresScores
    String titleTitle
  }
  command <<<
    rtg rocplot \
      ~{true="--hide-sidepane" false="" hideHideSidePane} \
      ~{true="--interpolate" false="" interpolateInterpolate} \
      ~{if defined(lineLineWidth) then ("--line-width " +  '"' + lineLineWidth + '"') else ""} \
      ~{if defined(precisionPrecisionSensitivity) then ("--precision-sensitivity " +  '"' + precisionPrecisionSensitivity + '"') else ""} \
      ~{true="--scores" false="" scoresScores} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""}
  >>>
}