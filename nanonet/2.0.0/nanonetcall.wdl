version 1.0

task Nanonetcall {
  input {
    String watchWatch
    String sectionSection
    Boolean noNoEventDetect
    String outputOutput
    Boolean noNoFastQ
    Boolean noNoWriteEvents
    String strandStrandList
    String limitLimit
    Int minMinLen
    Int maxMaxLen
    String modelModel
    String jobsJobs
    String transTrans
    Boolean noNoFastDecode
    Boolean noNoExcOpenCl
    Boolean noNoListPlatforms
    Array[String]+ platformsPlatforms
    String? inputInput
  }
  command <<<
    nanonetcall \
      ~{inputInput} \
      ~{if defined(watchWatch) then ("--watch " +  '"' + watchWatch + '"') else ""} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{true="--no-event_detect" false="" noNoEventDetect} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-fastq" false="" noNoFastQ} \
      ~{true="--no-write_events" false="" noNoWriteEvents} \
      ~{if defined(strandStrandList) then ("--strand_list " +  '"' + strandStrandList + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max_len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{if defined(transTrans) then ("--trans " +  '"' + transTrans + '"') else ""} \
      ~{true="--no-fast_decode" false="" noNoFastDecode} \
      ~{true="--no-exc_opencl" false="" noNoExcOpenCl} \
      ~{true="--no-list_platforms" false="" noNoListPlatforms} \
      ~{if defined(platformsPlatforms) then ("--platforms " +  '"' + platformsPlatforms + '"') else ""}
  >>>
}