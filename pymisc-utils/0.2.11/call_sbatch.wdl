version 1.0

task CallSbatch.py {
  input {
    String numNumCpus
    String memMem
    String timeTime
    String partitionsPartitions
    Boolean noNoOutput
    Boolean noNoError
    String stdoutStdoutFile
    String stderrStderrFile
    Boolean doDoNotCall
    Boolean useUseSlurM
    Boolean mailMailType
    String mailMailUser
    String? cmdCmd
  }
  command <<<
    call_sbatch.py \
      ~{cmdCmd} \
      ~{if defined(numNumCpus) then ("--num-cpus " +  '"' + numNumCpus + '"') else ""} \
      ~{if defined(memMem) then ("--mem " +  '"' + memMem + '"') else ""} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""} \
      ~{if defined(partitionsPartitions) then ("--partitions " +  '"' + partitionsPartitions + '"') else ""} \
      ~{true="--no-output" false="" noNoOutput} \
      ~{true="--no-error" false="" noNoError} \
      ~{if defined(stdoutStdoutFile) then ("--stdout-file " +  '"' + stdoutStdoutFile + '"') else ""} \
      ~{if defined(stderrStderrFile) then ("--stderr-file " +  '"' + stderrStderrFile + '"') else ""} \
      ~{true="--do-not-call" false="" doDoNotCall} \
      ~{true="--use-slurm" false="" useUseSlurM} \
      ~{true="--mail-type" false="" mailMailType} \
      ~{if defined(mailMailUser) then ("--mail-user " +  '"' + mailMailUser + '"') else ""}
  >>>
}