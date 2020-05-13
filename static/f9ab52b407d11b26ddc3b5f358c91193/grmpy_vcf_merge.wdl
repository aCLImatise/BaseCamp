version 1.0

task GrmpyVcfMerge.py {
  input {
    String inputInput
    String grGrMpy
    String outputOutput
    String logLogFile
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean debugDebug
  }
  command <<<
    grmpy-vcf-merge.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(grGrMpy) then ("--grmpy " +  '"' + grGrMpy + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--debug" false="" debugDebug}
  >>>
}