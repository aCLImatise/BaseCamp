version 1.0

task CombineUmaps.py {
  input {
    String outOutDir
    String jobJobId
    String varVarId
    String kmKmErDir2
    String? kmKmErDir
    String? chrChrSizePath
  }
  command <<<
    combine_umaps.py \
      ~{kmKmErDir} \
      ~{if defined(outOutDir) then ("-out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(jobJobId) then ("-job_id " +  '"' + jobJobId + '"') else ""} \
      ~{if defined(varVarId) then ("-var_id " +  '"' + varVarId + '"') else ""} \
      ~{if defined(kmKmErDir2) then ("-kmer_dir_2 " +  '"' + kmKmErDir2 + '"') else ""} \
      ~{chrChrSizePath}
  >>>
}