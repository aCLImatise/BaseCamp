version 1.0

task UmiSimulator {
  input {
    String pcrPcrCycle
    String umiUmiLength
    String poolPoolSize
    String outputOutputSize
    String amplificationAmplificationRate
    String pcrPcrError
    String sequencingSequencingError
    String taskTask
    String taskTaskRep
    String cpuCpu
    String seedSeed
  }
  command <<<
    umi_simulator \
      ~{if defined(pcrPcrCycle) then ("--pcr-cycle " +  '"' + pcrPcrCycle + '"') else ""} \
      ~{if defined(umiUmiLength) then ("--umi-length " +  '"' + umiUmiLength + '"') else ""} \
      ~{if defined(poolPoolSize) then ("--pool-size " +  '"' + poolPoolSize + '"') else ""} \
      ~{if defined(outputOutputSize) then ("--output-size " +  '"' + outputOutputSize + '"') else ""} \
      ~{if defined(amplificationAmplificationRate) then ("--amplification-rate " +  '"' + amplificationAmplificationRate + '"') else ""} \
      ~{if defined(pcrPcrError) then ("--pcr-error " +  '"' + pcrPcrError + '"') else ""} \
      ~{if defined(sequencingSequencingError) then ("--sequencing-error " +  '"' + sequencingSequencingError + '"') else ""} \
      ~{if defined(taskTask) then ("--task " +  '"' + taskTask + '"') else ""} \
      ~{if defined(taskTaskRep) then ("--task-rep " +  '"' + taskTaskRep + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}