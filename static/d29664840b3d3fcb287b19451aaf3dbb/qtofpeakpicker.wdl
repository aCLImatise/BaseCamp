version 1.0

task Qtofpeakpicker {
  input {
    Boolean hH
    Boolean vV
    Boolean iI
    Boolean oO
    Boolean cC
    String resolutionResolution
    String areaArea
    String thresholdThreshold
    String numberNumberOfPeaks
    Boolean iI
    String smoothSmoothWidth
  }
  command <<<
    qtofpeakpicker \
      ~{true="-H" false="" hH} \
      ~{true="-V" false="" vV} \
      ~{true="-I" false="" iI} \
      ~{true="-O" false="" oO} \
      ~{true="-C" false="" cC} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(areaArea) then ("--area " +  '"' + areaArea + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(numberNumberOfPeaks) then ("--numberofpeaks " +  '"' + numberNumberOfPeaks + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(smoothSmoothWidth) then ("--smoothwidth " +  '"' + smoothSmoothWidth + '"') else ""}
  >>>
}