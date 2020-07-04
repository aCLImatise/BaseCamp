version 1.0

task MotifRaptorSnpindex {
  input {
    String? vcf_filename
    String? indexed_genome_db
    String? mk_sary
    String? threads
  }
  command <<<
    MotifRaptor snpindex \
      ~{if defined(vcf_filename) then ("--vcf_filename " +  '"' + vcf_filename + '"') else ""} \
      ~{if defined(indexed_genome_db) then ("--indexed_genome_db " +  '"' + indexed_genome_db + '"') else ""} \
      ~{if defined(mk_sary) then ("--mksary " +  '"' + mk_sary + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    vcf_filename: "input - VCF file for SNPs, first five columns need to be CHR,POS,ID,REF,ALT"
    indexed_genome_db: "output - indexed genome_database_folder"
    mk_sary: "Mksary program path"
    threads: "number of threads"
  }
}