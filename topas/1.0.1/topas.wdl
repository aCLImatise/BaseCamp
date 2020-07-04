version 1.0

task Topas {
  input {
    String analyse_vcf
    String gen_cons
    String join_expr_tables
    String norm_expr_table
    String phy_cc
  }
  command <<<
    topas \
      ~{analyse_vcf} \
      ~{gen_cons} \
      ~{join_expr_tables} \
      ~{norm_expr_table} \
      ~{phy_cc}
  >>>
  parameter_meta {
    analyse_vcf: "analyse a given vcf file by given windows"
    gen_cons: "generate a consensus sequence from a GATK Unified Genotyper generated VCF file"
    join_expr_tables: "join expression tables together (based on gene names)"
    norm_expr_table: "normalize expression table"
    phy_cc: "crawl through a given SNP table in tsv format and calculate simple statistics "
  }
}