version 1.0

task GdtoolsMASK {
  input {
    Boolean smallSmall
    String outputOutput
    Boolean verboseVerbose
  }
  command <<<
    gdtools MASK \
      ~{true="--small" false="" smallSmall} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}