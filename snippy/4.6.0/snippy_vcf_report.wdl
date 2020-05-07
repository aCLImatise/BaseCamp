version 1.0

task SnippyVcfReport {
  input {
    Boolean debugDebug
    Boolean autoAuto
    String cpusCpus
    String vcfVcf
    String bamBam
    String refRef
    Boolean htmlHtml
  }
  command <<<
    snippy-vcf_report \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--auto" false="" autoAuto} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{true="--html" false="" htmlHtml}
  >>>
}