version 1.0

task Nanonet2d {
  input {
    Boolean noNoFastQ
    String watchWatch
    String sectionSection
    Boolean noNoEventDetect
    Boolean noNoWriteEvents
    String strandStrandList
    String limitLimit
    Int minMinLen
    Int maxMaxLen
    String templateTemplateModel
    String complementComplementModel
    String jobsJobs
    Boolean noNoOpenCl2d
    String transTrans
    Boolean noNoFastDecode
    String? inputInput
    String? outputOutputPrefix
  }
  command <<<
    nanonet2d \
      ~{inputInput} \
      ~{true="--no-fastq" false="" noNoFastQ} \
      ~{if defined(watchWatch) then ("--watch " +  '"' + watchWatch + '"') else ""} \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{true="--no-event_detect" false="" noNoEventDetect} \
      ~{true="--no-write_events" false="" noNoWriteEvents} \
      ~{if defined(strandStrandList) then ("--strand_list " +  '"' + strandStrandList + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max_len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(templateTemplateModel) then ("--template_model " +  '"' + templateTemplateModel + '"') else ""} \
      ~{if defined(complementComplementModel) then ("--complement_model " +  '"' + complementComplementModel + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="--no-opencl_2d" false="" noNoOpenCl2d} \
      ~{if defined(transTrans) then ("--trans " +  '"' + transTrans + '"') else ""} \
      ~{true="--no-fast_decode" false="" noNoFastDecode} \
      ~{outputOutputPrefix}
  >>>
}