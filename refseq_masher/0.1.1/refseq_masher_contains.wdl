version 1.0

task RefseqMasherContains {
  input {
    String mashMashBin
    File outputOutput
    Boolean outputOutputType
    Int topTopNResults
    Float minMinIdentity
    Float maxMaxPValue
    Int parallelismParallelism
  }
  command <<<
    refseq_masher contains \
      ~{if defined(mashMashBin) then ("--mash-bin " +  '"' + mashMashBin + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(topTopNResults) then ("--top-n-results " +  '"' + topTopNResults + '"') else ""} \
      ~{if defined(minMinIdentity) then ("--min-identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{if defined(maxMaxPValue) then ("--max-pvalue " +  '"' + maxMaxPValue + '"') else ""} \
      ~{if defined(parallelismParallelism) then ("--parallelism " +  '"' + parallelismParallelism + '"') else ""}
  >>>
}