version 1.0

task MagpurifyKnownContam {
  input {
    String dbDb
    String pidPid
    String evalueEvalue
    String qQCov
    String threadsThreads
    String? fnaFna
    String? outOut
  }
  command <<<
    magpurify known-contam \
      ~{fnaFna} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(pidPid) then ("--pid " +  '"' + pidPid + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(qQCov) then ("--qcov " +  '"' + qQCov + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{outOut}
  >>>
}