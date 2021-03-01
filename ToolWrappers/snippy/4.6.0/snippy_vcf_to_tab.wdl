version 1.0

task SnippyvcfToTab {
  input {
    Boolean? debug
    Boolean? auto
    File? vcf
    String? ref
    String? gff
  }
  command <<<
    snippy_vcf_to_tab \
      ~{if (debug) then "--debug" else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "!        Output verbose debug info (default '0')."
    auto: "!         Autoset --vcf/ref/gff to default Snippy names (default '0')."
    vcf: "VCF input file (default '')."
    ref: "FASTA reference sequence (default '')."
    gff: "GFF reference features (default '')."
  }
  output {
    File out_stdout = stdout()
  }
}