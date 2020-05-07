version 1.0

task RunCAOverlapStoreBuild {
  input {
    String dD
    String pP
    String tT
    String gG
    String iI
    String jobsJobs
    String memoryMemory
    Boolean deleteDeleteEarly
    Boolean noNoDelete
    String maxMaxError
    Boolean submitSubmit
    Boolean dD
    String pP
    Boolean iI
    Boolean jobsJobs
  }
  command <<<
    runCA-overlapStoreBuild \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jobsJobs) then ("-jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{if defined(memoryMemory) then ("-memory " +  '"' + memoryMemory + '"') else ""} \
      ~{true="-deleteearly" false="" deleteDeleteEarly} \
      ~{true="-nodelete" false="" noNoDelete} \
      ~{if defined(maxMaxError) then ("-maxerror " +  '"' + maxMaxError + '"') else ""} \
      ~{true="-submit" false="" submitSubmit} \
      ~{true="-d" false="" dD} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-jobs" false="" jobsJobs}
  >>>
}