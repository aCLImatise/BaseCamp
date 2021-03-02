version 1.0

task GFACspl {
  input {
    Boolean? specifying_format_step
    Boolean? p
    Boolean? rem_five_prime_three_prime_incompletes
    Boolean? min_intron_size
    Boolean? min_cds_size
    Boolean? en_tap_annotation
    Boolean? fast_a
    Boolean? rem_genes_without_start_and_stop_codon
    Boolean? distributions
    String g_facs_log_dot_txt
    Float braker_two_dot_zero_five_gtf
    Float braker_two_dot_zero_five_gff_three
    Float braker_two_dot_zero_gff
    Float braker_two_dot_one_dot_two_gtf
    Float pro_kk_a_one_dot_one_one_gff
    Float genome_threader_one_dot_six_dot_six_gff_three
    Float gff_read_zero_dot_nine_do_tone_two_gff_three
    Float evm_one_dot_one_dot_one_gff_three
    String g_facs_gene_table
    String refseq_gff
    String j_browse
    String snp_eff
    Float evm_one_dot_one_dot_one_alignment
    String exon_lengths
    String cds_lengths
    String exon_position
  }
  command <<<
    gFACs_pl \
      ~{g_facs_log_dot_txt} \
      ~{braker_two_dot_zero_five_gtf} \
      ~{braker_two_dot_zero_five_gff_three} \
      ~{braker_two_dot_zero_gff} \
      ~{braker_two_dot_one_dot_two_gtf} \
      ~{pro_kk_a_one_dot_one_one_gff} \
      ~{genome_threader_one_dot_six_dot_six_gff_three} \
      ~{gff_read_zero_dot_nine_do_tone_two_gff_three} \
      ~{evm_one_dot_one_dot_one_gff_three} \
      ~{g_facs_gene_table} \
      ~{refseq_gff} \
      ~{j_browse} \
      ~{snp_eff} \
      ~{evm_one_dot_one_dot_one_alignment} \
      ~{exon_lengths} \
      ~{cds_lengths} \
      ~{exon_position} \
      ~{if (specifying_format_step) then "-f" else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (rem_five_prime_three_prime_incompletes) then "--rem-5prime-3prime-incompletes" else ""} \
      ~{if (min_intron_size) then "--min-intron-size" else ""} \
      ~{if (min_cds_size) then "--min-CDS-size" else ""} \
      ~{if (en_tap_annotation) then "--entap-annotation" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (rem_genes_without_start_and_stop_codon) then "--rem-genes-without-start-and-stop-codon" else ""} \
      ~{if (distributions) then "--distributions" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specifying_format_step: "[format]     Specifying a format: A mandatory step to call upon the right script."
    p: "[prefix]"
    rem_five_prime_three_prime_incompletes: "[nt number]"
    min_intron_size: "[nt number]"
    min_cds_size: "[nt number]"
    en_tap_annotation: "[/path/to/your/entap/annotation.tsv]"
    fast_a: "[/path/to/your/nucleotide/fasta.fasta]"
    rem_genes_without_start_and_stop_codon: "[number]"
    distributions: "[option] [option] etc..."
    g_facs_log_dot_txt: "gene_table.txt"
    braker_two_dot_zero_five_gtf: "braker_2.05_gff"
    braker_two_dot_zero_five_gff_three: "braker_2.0_gff3"
    braker_two_dot_zero_gff: "braker_2.0_gtf"
    braker_two_dot_one_dot_two_gtf: "maker_2.31.9_gff"
    pro_kk_a_one_dot_one_one_gff: "gmap_2017_03_17_gff3"
    genome_threader_one_dot_six_dot_six_gff_three: "stringtie_1.3.4_gtf"
    gff_read_zero_dot_nine_do_tone_two_gff_three: "exonerate_2.4.0_gff"
    evm_one_dot_one_dot_one_gff_three: "CoGe_1.0_gff"
    g_facs_gene_table: "gFACs_gtf"
    refseq_gff: "genbank_gbff - UNDER REPAIR"
    j_browse: "--compatibility [option] [option] etc... "
    snp_eff: "EVM_1.1.1_gene_prediction       "
    evm_one_dot_one_dot_one_alignment: "Distribution table creation:"
    exon_lengths: "intron_lengths  "
    cds_lengths: "gene_lengths    "
    exon_position: "exon_position_data      "
  }
  output {
    File out_stdout = stdout()
  }
}