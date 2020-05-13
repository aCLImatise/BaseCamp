version 1.0

task SvtoolsCopynumber {
  input {
    String inputInputVcf
    String coordinatesCoordinates
    String rootRoot
    String windowWindow
    String sampleSample
    String cnvCnvNator
    String outputOutputVcf
    Boolean debugDebug
  }
  command <<<
    svtools copynumber \
      ~{if defined(inputInputVcf) then ("--input_vcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{if defined(coordinatesCoordinates) then ("--coordinates " +  '"' + coordinatesCoordinates + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(cnvCnvNator) then ("--cnvnator " +  '"' + cnvCnvNator + '"') else ""} \
      ~{if defined(outputOutputVcf) then ("--output_vcf " +  '"' + outputOutputVcf + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}