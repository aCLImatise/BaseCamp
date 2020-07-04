version 1.0

task VariantAnnotation.py {
  input {
    String? in_file
    String? outfile
    String? dbsnp
    String? cosmic
    String? snp_sift
    String? snp_eff
    String? snp_eff_db
  }
  command <<<
    variant_annotation.py \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(dbsnp) then ("--dbsnp " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(cosmic) then ("--cosmic " +  '"' + cosmic + '"') else ""} \
      ~{if defined(snp_sift) then ("--snpsift " +  '"' + snp_sift + '"') else ""} \
      ~{if defined(snp_eff) then ("--snpeff " +  '"' + snp_eff + '"') else ""} \
      ~{if defined(snp_eff_db) then ("--snpeff-db " +  '"' + snp_eff_db + '"') else ""}
  >>>
  parameter_meta {
    in_file: "input vcf file (default: None)"
    outfile: "output vcf file (default: None)"
    dbsnp: "dbsnp vcf file to feed into GATK4 HaplotypeCaller (default: None)"
    cosmic: "cosmic vcf file to feed into GATK4 HaplotypeCaller (default: None)"
    snp_sift: "SnpSift JAR (default: None)"
    snp_eff: "snpEff JAR (default: None)"
    snp_eff_db: "snpEff db (default: GRCh38.86)"
  }
}