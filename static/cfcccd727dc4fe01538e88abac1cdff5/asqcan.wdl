version 1.0

task Asqcan {
  input {
    String fastFastQDir
    String outputOutputDirectory
    String blastBlastDatabase
    String threadsThreads
    String maxMaxMemory
    Boolean forceForce
    Boolean verboseVerbose
  }
  command <<<
    asqcan \
      ~{if defined(fastFastQDir) then ("--fastq-dir " +  '"' + fastFastQDir + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(blastBlastDatabase) then ("--blast_database " +  '"' + blastBlastDatabase + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--max_memory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}