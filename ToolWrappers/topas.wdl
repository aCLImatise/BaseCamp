version 1.0

task Topas {
  input {
    String validate_fast_a
    String correct_fast_a
    String index_fast_a
    String tabulate_fast_a
    String extract_fast_a
    String primary_base_fast_a
    Int validate_gff_three
    Int filter_gff_three
    Int sort_gff_three
    String format_fast_q
    String validate_fast_q
    String index_vcf
    String filter_vcf
    String annotate_vcf
    String analyse_vcf
    String gen_cons
    String join_expr_tables
    String norm_expr_table
    String phy_cc
  }
  command <<<
    topas \
      ~{validate_fast_a} \
      ~{correct_fast_a} \
      ~{index_fast_a} \
      ~{tabulate_fast_a} \
      ~{extract_fast_a} \
      ~{primary_base_fast_a} \
      ~{validate_gff_three} \
      ~{filter_gff_three} \
      ~{sort_gff_three} \
      ~{format_fast_q} \
      ~{validate_fast_q} \
      ~{index_vcf} \
      ~{filter_vcf} \
      ~{annotate_vcf} \
      ~{analyse_vcf} \
      ~{gen_cons} \
      ~{join_expr_tables} \
      ~{norm_expr_table} \
      ~{phy_cc}
  >>>
  parameter_meta {
    validate_fast_a: "validate a fasta file"
    correct_fast_a: "correct a fasta file"
    index_fast_a: "generate fasta index from a fasta file"
    tabulate_fast_a: "tabulates a fasta file into: HEADER TAB SEQUENCE"
    extract_fast_a: "sort a fasta file and return only the fasta sequences which match a given pattern"
    primary_base_fast_a: "crawl through every sequence in a fasta file and replace secondary bases with primary ones"
    validate_gff_three: "validate a gff3 file"
    filter_gff_three: "a GFF3 file can be filtered by seqid + range, source, type, score, strand, phase, attribute"
    sort_gff_three: "sorts a GFF3 File first by SeqId, then by Start/End"
    format_fast_q: "format the sequence string line(s) and the quality string line(s) of a fastq file to a certain length"
    validate_fast_q: "validate a fastq file"
    index_vcf: "generate vcf index from a vcf file"
    filter_vcf: "a VCF file can be filtered by CHROM:START-END, ID and by INFO (SNP or INDEL)"
    annotate_vcf: "annotate a vcf file by reference of a vcf CHROM:POSITION to SEQID:START-END of a gff3 file"
    analyse_vcf: "analyse a given vcf file by given windows"
    gen_cons: "generate a consensus sequence from a GATK Unified Genotyper generated VCF file"
    join_expr_tables: "join expression tables together (based on gene names)"
    norm_expr_table: "normalize expression table"
    phy_cc: "crawl through a given SNP table in tsv format and calculate simple statistics "
  }
  output {
    File out_stdout = stdout()
  }
}