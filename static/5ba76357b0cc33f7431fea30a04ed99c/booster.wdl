version 1.0

task Booster {
  input {
    Boolean inputInput
    Boolean bootBoot
    Boolean outOut
    Boolean outOutRaw
    Boolean numNumThreads
    Boolean statStatFile
    Boolean countCountPerBranch
    Boolean distDistCutOff
    Boolean algoAlgo
    Boolean quietQuiet
  }
  command <<<
    booster \
      ~{true="--input" false="" inputInput} \
      ~{true="--boot" false="" bootBoot} \
      ~{true="--out" false="" outOut} \
      ~{true="--out-raw" false="" outOutRaw} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--stat-file" false="" statStatFile} \
      ~{true="--count-per-branch" false="" countCountPerBranch} \
      ~{true="--dist-cutoff" false="" distDistCutOff} \
      ~{true="--algo" false="" algoAlgo} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}