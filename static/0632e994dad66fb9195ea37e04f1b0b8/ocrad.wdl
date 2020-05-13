version 1.0

task Ocrad {
  input {
    Boolean appendAppend
    String charsetCharset
    String filterFilter
    Boolean forceForce
    String formatFormat
    Boolean invertInvert
    Boolean layoutLayout
    File outputOutput
    Boolean quietQuiet
    Boolean scaleScale
    String transformTransform
    Boolean thresholdThreshold
    Boolean cutCut
    Boolean verboseVerbose
    File exportExport
    File? filesFiles
  }
  command <<<
    ocrad \
      ~{filesFiles} \
      ~{true="--append" false="" appendAppend} \
      ~{if defined(charsetCharset) then ("--charset " +  '"' + charsetCharset + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--invert" false="" invertInvert} \
      ~{true="--layout" false="" layoutLayout} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--scale" false="" scaleScale} \
      ~{if defined(transformTransform) then ("--transform " +  '"' + transformTransform + '"') else ""} \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--cut" false="" cutCut} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(exportExport) then ("--export " +  '"' + exportExport + '"') else ""}
  >>>
}