version 1.0

task Andi {
  input {
    Int bootstrapBootstrap
    File fileFileOfFilenames
    Boolean joinJoin
    Boolean lowLowMemory
    String modelModel
    Float pP
    String progressProgress
    Int threadsThreads
    String truncateTruncateNames
    Boolean verboseVerbose
  }
  command <<<
    andi \
      ~{if defined(bootstrapBootstrap) then ("--bootstrap " +  '"' + bootstrapBootstrap + '"') else ""} \
      ~{if defined(fileFileOfFilenames) then ("--file-of-filenames " +  '"' + fileFileOfFilenames + '"') else ""} \
      ~{true="--join" false="" joinJoin} \
      ~{true="--low-memory" false="" lowLowMemory} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(truncateTruncateNames) then ("--truncate-names " +  '"' + truncateTruncateNames + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}