version 1.0

task UmiReformatFastq {
  input {
    String leftLeft
    String rightRight
    String leftLeftOut
    String rightRightOut
    Boolean verboseVerbose
    String umiUmiLocator
    String umiUmiPadding
    String umiUmiPattern
    String qualityQuality
    Boolean debugDebug
  }
  command <<<
    umi_reformat_fastq \
      ~{if defined(leftLeft) then ("--left " +  '"' + leftLeft + '"') else ""} \
      ~{if defined(rightRight) then ("--right " +  '"' + rightRight + '"') else ""} \
      ~{if defined(leftLeftOut) then ("--left-out " +  '"' + leftLeftOut + '"') else ""} \
      ~{if defined(rightRightOut) then ("--right-out " +  '"' + rightRightOut + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(umiUmiLocator) then ("--umi-locator " +  '"' + umiUmiLocator + '"') else ""} \
      ~{if defined(umiUmiPadding) then ("--umi-padding " +  '"' + umiUmiPadding + '"') else ""} \
      ~{if defined(umiUmiPattern) then ("--umi-pattern " +  '"' + umiUmiPattern + '"') else ""} \
      ~{if defined(qualityQuality) then ("--quality " +  '"' + qualityQuality + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}