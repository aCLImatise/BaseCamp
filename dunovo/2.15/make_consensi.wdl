version 1.0

task MakeConsensi.py {
  input {
    String sscs1Sscs1
    String sscs2Sscs2
    String qualQualFormat
    String fastFastQOut
    Int minMinReads
    String qualQual
    String consConsThRes
    Int minMinConsReads
    Boolean phonePhoneHome
    Boolean galaxyGalaxy
    Boolean testTest
    String processesProcesses
    String queueQueueSize
  }
  command <<<
    make-consensi.py \
      ~{if defined(sscs1Sscs1) then ("--sscs1 " +  '"' + sscs1Sscs1 + '"') else ""} \
      ~{if defined(sscs2Sscs2) then ("--sscs2 " +  '"' + sscs2Sscs2 + '"') else ""} \
      ~{if defined(qualQualFormat) then ("--qual-format " +  '"' + qualQualFormat + '"') else ""} \
      ~{if defined(fastFastQOut) then ("--fastq-out " +  '"' + fastFastQOut + '"') else ""} \
      ~{if defined(minMinReads) then ("--min-reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(qualQual) then ("--qual " +  '"' + qualQual + '"') else ""} \
      ~{if defined(consConsThRes) then ("--cons-thres " +  '"' + consConsThRes + '"') else ""} \
      ~{if defined(minMinConsReads) then ("--min-cons-reads " +  '"' + minMinConsReads + '"') else ""} \
      ~{true="--phone-home" false="" phonePhoneHome} \
      ~{true="--galaxy" false="" galaxyGalaxy} \
      ~{true="--test" false="" testTest} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(queueQueueSize) then ("--queue-size " +  '"' + queueQueueSize + '"') else ""}
  >>>
}