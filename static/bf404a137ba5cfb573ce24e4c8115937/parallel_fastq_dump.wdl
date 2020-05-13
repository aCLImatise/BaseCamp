version 1.0

task ParallelFastqDump {
  input {
    String sraSraId
    String threadsThreads
    String outdirOutdir
    String tmpdirTmpdir
    Int minMinSpotId
    Int maxMaxSpotId
  }
  command <<<
    parallel-fastq-dump \
      ~{if defined(sraSraId) then ("--sra-id " +  '"' + sraSraId + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(minMinSpotId) then ("--minSpotId " +  '"' + minMinSpotId + '"') else ""} \
      ~{if defined(maxMaxSpotId) then ("--maxSpotId " +  '"' + maxMaxSpotId + '"') else ""}
  >>>
}