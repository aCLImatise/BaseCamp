version 1.0

task TadbitFilter {
  input {
    Boolean forceForce
    Boolean resumeResume
    File workdirWorkdir
    String cpusCpus
    Boolean noxNox
    File tmpTmpDb
    Array[Int]+ pathPathIds
    Boolean compressCompressInput
    File samSamTools
    String formatFormat
    Boolean validValid
    Boolean cleanClean
    Array[Int]+ applyApply
    String overOverRepresented
    String maxMaxFragSize
    String minMinFragSize
    String reReProximity
  }
  command <<<
    tadbit filter \
      ~{true="--force" false="" forceForce} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--noX" false="" noxNox} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""} \
      ~{if defined(pathPathIds) then ("--pathids " +  '"' + pathPathIds + '"') else ""} \
      ~{true="--compress_input" false="" compressCompressInput} \
      ~{if defined(samSamTools) then ("--samtools " +  '"' + samSamTools + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--valid" false="" validValid} \
      ~{true="--clean" false="" cleanClean} \
      ~{if defined(applyApply) then ("--apply " +  '"' + applyApply + '"') else ""} \
      ~{if defined(overOverRepresented) then ("--over_represented " +  '"' + overOverRepresented + '"') else ""} \
      ~{if defined(maxMaxFragSize) then ("--max_frag_size " +  '"' + maxMaxFragSize + '"') else ""} \
      ~{if defined(minMinFragSize) then ("--min_frag_size " +  '"' + minMinFragSize + '"') else ""} \
      ~{if defined(reReProximity) then ("--re_proximity " +  '"' + reReProximity + '"') else ""}
  >>>
}