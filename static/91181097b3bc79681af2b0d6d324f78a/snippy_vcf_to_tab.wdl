version 1.0

task SnippyVcfToTab {
  input {
    Boolean? debug
    Boolean? auto
    String? vcf
    String? ref
    String? gff
  }
  command <<<
    snippy-vcf_to_tab \
      ~{true="--debug" false="" debug} \
      ~{true="--auto" false="" auto} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    debug: "!        Output verbose debug info (default '0')."
    auto: "!         Autoset --vcf/ref/gff to default Snippy names (default '0')."
    vcf: "VCF input file (default '')."
    ref: "FASTA reference sequence (default '')."
    gff: "GFF reference features (default '')."
  }
}