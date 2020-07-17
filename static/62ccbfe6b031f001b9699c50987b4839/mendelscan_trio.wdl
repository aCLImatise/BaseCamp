version 1.0

task MendelscanTrio {
  input {
    Boolean? vep_file
    Boolean? ped_file
    Boolean? gene_file
    Boolean? output_file
    Boolean? output_recessive
    String? output_de_novo
    String? jar
    String java
    String trio
    String? vcf
  }
  command <<<
    mendelscan trio \
      ~{java} \
      ~{trio} \
      ~{vcf} \
      ~{true="--vep-file" false="" vep_file} \
      ~{true="--ped-file" false="" ped_file} \
      ~{true="--gene-file" false="" gene_file} \
      ~{true="--output-file" false="" output_file} \
      ~{true="--output-recessive" false="" output_recessive} \
      ~{if defined(output_de_novo) then ("--output-denovo " +  '"' + output_de_novo + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    vep_file: "Variant annotation in VEP format"
    ped_file: "Pedigree file in 6-column tab-delimited format"
    gene_file: "A list of gene expression values for tissue of interest"
    output_file: "Output file to contain summary report"
    output_recessive: "Output file to contain scored variants in VCF format"
    output_de_novo: "file for possible de novo variants"
    jar: ""
    java: ""
    trio: ""
    vcf: ""
  }
}