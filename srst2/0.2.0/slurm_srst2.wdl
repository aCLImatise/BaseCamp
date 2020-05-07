version 1.0

task SlurmSrst2.py {
  input {
    String wallWallTime
    String memoryMemory
    String runRunDir
    String threadsThreads
    String scriptScript
    String outputOutput
    Array[String]+ inputInputSe
    Array[String]+ inputInputPe
    String forwardForward
    String reverseReverse
    String otherOtherArgs
  }
  command <<<
    slurm_srst2.py \
      ~{if defined(wallWallTime) then ("--walltime " +  '"' + wallWallTime + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(runRunDir) then ("--rundir " +  '"' + runRunDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(scriptScript) then ("--script " +  '"' + scriptScript + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputSe) then ("--input_se " +  '"' + inputInputSe + '"') else ""} \
      ~{if defined(inputInputPe) then ("--input_pe " +  '"' + inputInputPe + '"') else ""} \
      ~{if defined(forwardForward) then ("--forward " +  '"' + forwardForward + '"') else ""} \
      ~{if defined(reverseReverse) then ("--reverse " +  '"' + reverseReverse + '"') else ""} \
      ~{if defined(otherOtherArgs) then ("--other_args " +  '"' + otherOtherArgs + '"') else ""}
  >>>
}