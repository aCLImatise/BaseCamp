version 1.0

task GetKmers.py {
  input {
    String kmKmEr
    String jobJobId
    String varVarId
    String? chromChromSizePath
    String? outOutDir
    String? chrChrDir
    String? idxIdxPath
  }
  command <<<
    get_kmers.py \
      ~{chromChromSizePath} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(jobJobId) then ("--job_id " +  '"' + jobJobId + '"') else ""} \
      ~{if defined(varVarId) then ("--var_id " +  '"' + varVarId + '"') else ""} \
      ~{outOutDir} \
      ~{chrChrDir} \
      ~{idxIdxPath}
  >>>
}