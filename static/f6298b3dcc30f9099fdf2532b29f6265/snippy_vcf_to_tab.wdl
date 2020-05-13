version 1.0

task SnippyVcfToTab {
  input {
    Boolean debugDebug
    Boolean autoAuto
    String vcfVcf
    String refRef
    String gffGff
  }
  command <<<
    snippy-vcf_to_tab \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--auto" false="" autoAuto} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""}
  >>>
}