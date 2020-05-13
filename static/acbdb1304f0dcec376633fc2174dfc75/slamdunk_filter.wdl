version 1.0

task SlamdunkFilter {
  input {
    String outputOutputDir
    String bedBed
    String minMinMq
    String minMinIdentity
    String maxMaxNm
    String threadsThreads
    String? bamBam
  }
  command <<<
    slamdunk filter \
      ~{bamBam} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(minMinMq) then ("--min-mq " +  '"' + minMinMq + '"') else ""} \
      ~{if defined(minMinIdentity) then ("--min-identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{if defined(maxMaxNm) then ("--max-nm " +  '"' + maxMaxNm + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}