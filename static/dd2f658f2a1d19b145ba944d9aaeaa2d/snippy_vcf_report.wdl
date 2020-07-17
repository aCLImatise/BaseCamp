version 1.0

task SnippyVcfReport {
  input {
    Boolean? debug
    Boolean? auto
    String? cpus
    String? vcf
    String? bam
    String? ref
    Boolean? html
  }
  command <<<
    snippy-vcf_report \
      ~{true="--debug" false="" debug} \
      ~{true="--auto" false="" auto} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{true="--html" false="" html}
  >>>
  parameter_meta {
    debug: "!        Output verbose debug info (default '0')."
    auto: "!         Autoset --vcf/bam/ref to snippy names (default '0')."
    cpus: "Number of parallel threads to use (default '1')."
    vcf: "VCF input file (raw) (default '')."
    bam: "BAM alignments (indexed) (default '')."
    ref: "FASTA reference (indexed) (default '')."
    html: "!         Write a HTML report instead of TXT (default '0')."
  }
}