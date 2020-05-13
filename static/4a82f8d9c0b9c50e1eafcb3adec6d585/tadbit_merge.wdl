version 1.0

task TadbitMerge {
  input {
    File workdirWorkdir
    File workWorkDir1
    File workWorkDir2
    File bam1Bam1
    Boolean noxNox
    File bam2Bam2
    String cpusCpus
    Int resolutionResolution
    Boolean skipSkipComparison
    Boolean skipSkipMerge
    Array[String]+ saveSave
    Int jobid1Jobid1
    Int jobid2Jobid2
    Boolean forceForce
    Boolean normNorm
    File biases1Biases1
    File biases2Biases2
    Array[Int]+ filterFilter
    File samSamTools
    File tmpTmpDb
  }
  command <<<
    tadbit merge \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(workWorkDir1) then ("--workdir1 " +  '"' + workWorkDir1 + '"') else ""} \
      ~{if defined(workWorkDir2) then ("--workdir2 " +  '"' + workWorkDir2 + '"') else ""} \
      ~{if defined(bam1Bam1) then ("--bam1 " +  '"' + bam1Bam1 + '"') else ""} \
      ~{true="--noX" false="" noxNox} \
      ~{if defined(bam2Bam2) then ("--bam2 " +  '"' + bam2Bam2 + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{true="--skip_comparison" false="" skipSkipComparison} \
      ~{true="--skip_merge" false="" skipSkipMerge} \
      ~{if defined(saveSave) then ("--save " +  '"' + saveSave + '"') else ""} \
      ~{if defined(jobid1Jobid1) then ("--jobid1 " +  '"' + jobid1Jobid1 + '"') else ""} \
      ~{if defined(jobid2Jobid2) then ("--jobid2 " +  '"' + jobid2Jobid2 + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--norm" false="" normNorm} \
      ~{if defined(biases1Biases1) then ("--biases1 " +  '"' + biases1Biases1 + '"') else ""} \
      ~{if defined(biases2Biases2) then ("--biases2 " +  '"' + biases2Biases2 + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(samSamTools) then ("--samtools " +  '"' + samSamTools + '"') else ""} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""}
  >>>
}