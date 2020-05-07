version 1.0

task OverlapStoreBucketizer {
  input {
    String cC
    String gG
    File iI
    String jobJob
    String fF
    String plcPlc
    Boolean obtObt
    Boolean dupDup
    String eE
    Boolean rawRaw
  }
  command <<<
    overlapStoreBucketizer \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jobJob) then ("-job " +  '"' + jobJob + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(plcPlc) then ("-plc " +  '"' + plcPlc + '"') else ""} \
      ~{true="-obt" false="" obtObt} \
      ~{true="-dup" false="" dupDup} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-raw" false="" rawRaw}
  >>>
}