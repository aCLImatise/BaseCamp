version 1.0

task SwarmBreaker.py {
  input {
    String binaryBinary
    String differencesDifferences
    File fastFastAFile
    File swarmSwarmFile
    String threadsThreads
    Boolean verboseVerbose
    Boolean uUSearchAbundance
  }
  command <<<
    swarm_breaker.py \
      ~{if defined(binaryBinary) then ("--binary " +  '"' + binaryBinary + '"') else ""} \
      ~{if defined(differencesDifferences) then ("--differences " +  '"' + differencesDifferences + '"') else ""} \
      ~{if defined(fastFastAFile) then ("--fasta_file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(swarmSwarmFile) then ("--swarm_file " +  '"' + swarmSwarmFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--usearch_abundance" false="" uUSearchAbundance}
  >>>
}