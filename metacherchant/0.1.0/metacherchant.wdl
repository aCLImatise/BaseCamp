version 1.0

task Metacherchant.sh {
  input {
    String kK
    String seqSeq
    String outputOutput
    String memoryMemory
    String workWorkDir
    Boolean continueContinue
    Boolean forceForce
    String? metaMetaCherChant
    String? launchLaunchOptions
    String? inputInputParameters
  }
  command <<<
    metacherchant.sh \
      ~{metaMetaCherChant} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(workWorkDir) then ("--work-dir " +  '"' + workWorkDir + '"') else ""} \
      ~{true="--continue" false="" continueContinue} \
      ~{true="--force" false="" forceForce} \
      ~{launchLaunchOptions} \
      ~{inputInputParameters}
  >>>
}