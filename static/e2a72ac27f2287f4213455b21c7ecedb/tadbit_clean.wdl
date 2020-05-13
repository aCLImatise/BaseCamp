version 1.0

task TadbitClean {
  input {
    File changeChangeWorkdir
    File workdirWorkdir
    Array[Int]+ jobJobIds
    Boolean deleteDelete
    Boolean compressCompress
    Boolean noxNox
    File tmpTmpDb
  }
  command <<<
    tadbit clean \
      ~{if defined(changeChangeWorkdir) then ("--change_workdir " +  '"' + changeChangeWorkdir + '"') else ""} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(jobJobIds) then ("--jobids " +  '"' + jobJobIds + '"') else ""} \
      ~{true="--delete" false="" deleteDelete} \
      ~{true="--compress" false="" compressCompress} \
      ~{true="--noX" false="" noxNox} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""}
  >>>
}