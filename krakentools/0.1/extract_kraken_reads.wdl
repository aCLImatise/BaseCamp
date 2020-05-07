version 1.0

task ExtractKrakenReads.py {
  input {
    String s2S2
    Array[String]+ taxidTaxid
    String outputOutput
    String outputOutput2
    Boolean appendAppend
    Boolean noNoAppend
    Int maxMax
    String reportReport
    Boolean includeIncludeParents
    Boolean includeIncludeChildren
    Boolean excludeExclude
    Boolean fastFastQOutput
  }
  command <<<
    extract_kraken_reads.py \
      ~{if defined(s2S2) then ("-s2 " +  '"' + s2S2 + '"') else ""} \
      ~{if defined(taxidTaxid) then ("--taxid " +  '"' + taxidTaxid + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutput2) then ("--output2 " +  '"' + outputOutput2 + '"') else ""} \
      ~{true="--append" false="" appendAppend} \
      ~{true="--noappend" false="" noNoAppend} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{true="--include-parents" false="" includeIncludeParents} \
      ~{true="--include-children" false="" includeIncludeChildren} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{true="--fastq-output" false="" fastFastQOutput}
  >>>
}