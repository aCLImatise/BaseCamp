version 1.0

task VariantAnnotateFrequency {
  input {
    File inIn
    File bamBam
    File outOut
    Boolean depthDepth
    Boolean mapq0Mapq0
    String nameName
    File refRef
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VariantAnnotateFrequency \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-depth" false="" depthDepth} \
      ~{true="-mapq0" false="" mapq0Mapq0} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}