version 1.0

task VarscanCopyCaller {
  input {
    Boolean outputOutputFile
    Boolean outputOutputHomDelFile
    Boolean minMinCoverage
    Boolean minMinTumorCoverage
    Boolean maxMaxHomDelCoverage
    String ampAmpThreshold
    String delDelThreshold
    Boolean minMinRegionSize
    Boolean recenterRecenterUp
    String recenterRecenterDown
    String? javaJava
    String? copyCopyCaller
    String? varsVarsCanCopyNumber
    String? optionsOptions
  }
  command <<<
    varscan copyCaller \
      ~{javaJava} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--output-homdel-file" false="" outputOutputHomDelFile} \
      ~{true="--min-coverage" false="" minMinCoverage} \
      ~{true="--min-tumor-coverage" false="" minMinTumorCoverage} \
      ~{true="--max-homdel-coverage" false="" maxMaxHomDelCoverage} \
      ~{if defined(ampAmpThreshold) then ("--amp-threshold " +  '"' + ampAmpThreshold + '"') else ""} \
      ~{if defined(delDelThreshold) then ("--del-threshold " +  '"' + delDelThreshold + '"') else ""} \
      ~{true="--min-region-size" false="" minMinRegionSize} \
      ~{true="--recenter-up" false="" recenterRecenterUp} \
      ~{if defined(recenterRecenterDown) then ("--recenter-down " +  '"' + recenterRecenterDown + '"') else ""} \
      ~{copyCopyCaller} \
      ~{varsVarsCanCopyNumber} \
      ~{optionsOptions}
  >>>
}