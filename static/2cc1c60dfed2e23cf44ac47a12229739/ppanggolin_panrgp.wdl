version 1.0

task PpanggolinPanrgp {
  input {
    String fastFastA
    String anAnNo
    String clustersClusters
    String outputOutput
    String basenameBasename
    Boolean rarefactionRarefaction
    String nbNbOfPartitions
    Int interestInterest
    Boolean defragDefrag
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin panrgp \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(anAnNo) then ("--anno " +  '"' + anAnNo + '"') else ""} \
      ~{if defined(clustersClusters) then ("--clusters " +  '"' + clustersClusters + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(basenameBasename) then ("--basename " +  '"' + basenameBasename + '"') else ""} \
      ~{true="--rarefaction" false="" rarefactionRarefaction} \
      ~{if defined(nbNbOfPartitions) then ("--nb_of_partitions " +  '"' + nbNbOfPartitions + '"') else ""} \
      ~{if defined(interestInterest) then ("--interest " +  '"' + interestInterest + '"') else ""} \
      ~{true="--defrag" false="" defragDefrag} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}