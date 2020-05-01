version 1.0

task Install {
  input {
    Boolean stripStrip
    String stripStripProgram
    String suffixSuffix
    Directory targetTargetDirectory
    Boolean noNoTargetDirectory
    Boolean verboseVerbose
    Boolean preservePreserveContext
    Boolean zZ
    Boolean contextContext
  }
  command <<<
    install \
      ~{true="--strip" false="" stripStrip} \
      ~{if defined(stripStripProgram) then ("--strip-program " +  '"' + stripStripProgram + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(targetTargetDirectory) then ("--target-directory " +  '"' + targetTargetDirectory + '"') else ""} \
      ~{true="--no-target-directory" false="" noNoTargetDirectory} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--preserve-context" false="" preservePreserveContext} \
      ~{true="-Z" false="" zZ} \
      ~{true="--context" false="" contextContext}
  >>>
}