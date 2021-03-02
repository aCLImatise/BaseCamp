version 1.0

task VariantAnnotationpy {
  input {
    File? in_file
    File? outfile
    File? dbsnp
    File? cosmic
    String? snp_sift
    String? snp_eff
    Float? snp_eff_db
  }
  command <<<
    variant_annotation_py \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(dbsnp) then ("--dbsnp " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(cosmic) then ("--cosmic " +  '"' + cosmic + '"') else ""} \
      ~{if defined(snp_sift) then ("--snpsift " +  '"' + snp_sift + '"') else ""} \
      ~{if defined(snp_eff) then ("--snpeff " +  '"' + snp_eff + '"') else ""} \
      ~{if defined(snp_eff_db) then ("--snpeff-db " +  '"' + snp_eff_db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "input vcf file (default: None)"
    outfile: "output vcf file (default: None)"
    dbsnp: "dbsnp vcf file to feed into GATK4 HaplotypeCaller\\n(default: None)"
    cosmic: "cosmic vcf file to feed into GATK4 HaplotypeCaller\\n(default: None)"
    snp_sift: "SnpSift JAR (default: None)"
    snp_eff: "snpEff JAR (default: None)"
    snp_eff_db: "snpEff db (default: GRCh38.86)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}