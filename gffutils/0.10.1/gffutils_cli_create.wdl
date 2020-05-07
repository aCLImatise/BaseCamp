version 1.0

task GffutilsCliCreate {
  input {
    String outputOutput
    Boolean forceForce
    Boolean quietQuiet
    String mergeMerge
    Boolean disableDisableInferGenes
    Boolean disableDisableInferTranscripts
    File? filenameFilename
  }
  command <<<
    gffutils-cli create \
      ~{filenameFilename} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(mergeMerge) then ("--merge " +  '"' + mergeMerge + '"') else ""} \
      ~{true="--disable-infer-genes" false="" disableDisableInferGenes} \
      ~{true="--disable-infer-transcripts" false="" disableDisableInferTranscripts}
  >>>
}