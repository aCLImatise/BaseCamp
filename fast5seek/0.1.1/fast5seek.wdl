version 1.0

task Fast5seek {
  input {
    Array[String]+ fast5Fast5Dir
    Array[String]+ referenceReference
    String outputOutput
    Boolean mappedMapped
    Boolean logLogLevel
    Boolean noNoProgressBar
  }
  command <<<
    fast5seek \
      ~{if defined(fast5Fast5Dir) then ("--fast5_dir " +  '"' + fast5Fast5Dir + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--mapped" false="" mappedMapped} \
      ~{true="--log_level" false="" logLogLevel} \
      ~{true="--no_progress_bar" false="" noNoProgressBar}
  >>>
}