version 1.0

task Hmmpgmd {
  input {
    Boolean masterMaster
    String workerWorker
    String cCPort
    String wWPort
    String ccCcNcts
    String wcncWcncTs
    String pidPid
    String seqSeqDb
    String hmmHmmDb
    String cpuCpu
  }
  command <<<
    hmmpgmd \
      ~{true="--master" false="" masterMaster} \
      ~{if defined(workerWorker) then ("--worker " +  '"' + workerWorker + '"') else ""} \
      ~{if defined(cCPort) then ("--cport " +  '"' + cCPort + '"') else ""} \
      ~{if defined(wWPort) then ("--wport " +  '"' + wWPort + '"') else ""} \
      ~{if defined(ccCcNcts) then ("--ccncts " +  '"' + ccCcNcts + '"') else ""} \
      ~{if defined(wcncWcncTs) then ("--wcncts " +  '"' + wcncWcncTs + '"') else ""} \
      ~{if defined(pidPid) then ("--pid " +  '"' + pidPid + '"') else ""} \
      ~{if defined(seqSeqDb) then ("--seqdb " +  '"' + seqSeqDb + '"') else ""} \
      ~{if defined(hmmHmmDb) then ("--hmmdb " +  '"' + hmmHmmDb + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}