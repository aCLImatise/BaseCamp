version 1.0

task MendelscanTrio {
  input {
    Boolean? vep_file
    Boolean? ped_file
    Boolean? gene_file
    File? output_file
    File? output_recessive
    File? output_de_novo
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
      ~{if (vep_file) then "--vep-file" else ""} \
      ~{if (ped_file) then "--ped-file" else ""} \
      ~{if (gene_file) then "--gene-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (output_recessive) then "--output-recessive" else ""} \
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
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_output_recessive = "${in_output_recessive}"
  }
}