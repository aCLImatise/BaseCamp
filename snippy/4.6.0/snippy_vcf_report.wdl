version 1.0

task SnippyvcfReport {
  input {
    Boolean? debug
    Boolean? auto
    Int? cpus
    File? vcf
    String? bam
    String? ref
    Boolean? html
  }
  command <<<
    snippy_vcf_report \
      ~{if (debug) then "--debug" else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (html) then "--html" else ""}
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
  output {
    File out_stdout = stdout()
  }
}