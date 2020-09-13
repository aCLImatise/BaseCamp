version 1.0

task GFACspl {
  input {
    String? f
    Directory? o
    Boolean? p
    Boolean? false_run
    Boolean? statistics
    Boolean? statistics_at_every_step
    Boolean? no_processing
    Boolean? no_gene_redefining
    Boolean? rem_five_prime_incompletes
    Boolean? rem_three_prime_incompletes
    Boolean? rem_five_prime_three_prime_incompletes
    Boolean? rem_all_incompletes
    Boolean? rem_mono_exonic_s
    Boolean? rem_multi_exonic_s
    Boolean? min_exon_size
    Boolean? min_intron_size
    Boolean? min_cds_size
    Boolean? unique_genes_only
    Boolean? en_tap_annotation
    Boolean? annotated_ss_genes_only
    Boolean? annotated_all_genes_only
    Boolean? fast_a
    Boolean? splice_table
    Boolean? canonical_only
    Boolean? rem_genes_without_start_codon
    Boolean? allow_alternate_starts
    Boolean? rem_genes_without_stop_codon
    Boolean? rem_genes_without_start_and_stop_codon
    Boolean? allowed_in_frame_stop_codons
    Boolean? nt_content
    Boolean? get_fast_a_with_introns
    Boolean? get_protein_fast_a
    Boolean? create_gtf
    Boolean? create_simple_gtf
    Boolean? create_gff_three
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
    String intron_position
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
      ~{intron_position} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(o) then ("-O " +  '"' + o + '"') else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (false_run) then "--false-run" else ""} \
      ~{if (statistics) then "--statistics" else ""} \
      ~{if (statistics_at_every_step) then "--statistics-at-every-step" else ""} \
      ~{if (no_processing) then "--no-processing" else ""} \
      ~{if (no_gene_redefining) then "--no-gene-redefining" else ""} \
      ~{if (rem_five_prime_incompletes) then "--rem-5prime-incompletes" else ""} \
      ~{if (rem_three_prime_incompletes) then "--rem-3prime-incompletes" else ""} \
      ~{if (rem_five_prime_three_prime_incompletes) then "--rem-5prime-3prime-incompletes" else ""} \
      ~{if (rem_all_incompletes) then "--rem-all-incompletes" else ""} \
      ~{if (rem_mono_exonic_s) then "--rem-monoexonics" else ""} \
      ~{if (rem_multi_exonic_s) then "--rem-multiexonics" else ""} \
      ~{if (min_exon_size) then "--min-exon-size" else ""} \
      ~{if (min_intron_size) then "--min-intron-size" else ""} \
      ~{if (min_cds_size) then "--min-CDS-size" else ""} \
      ~{if (unique_genes_only) then "--unique-genes-only" else ""} \
      ~{if (en_tap_annotation) then "--entap-annotation" else ""} \
      ~{if (annotated_ss_genes_only) then "--annotated-ss-genes-only" else ""} \
      ~{if (annotated_all_genes_only) then "--annotated-all-genes-only" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (splice_table) then "--splice-table" else ""} \
      ~{if (canonical_only) then "--canonical-only" else ""} \
      ~{if (rem_genes_without_start_codon) then "--rem-genes-without-start-codon" else ""} \
      ~{if (allow_alternate_starts) then "--allow-alternate-starts" else ""} \
      ~{if (rem_genes_without_stop_codon) then "--rem-genes-without-stop-codon" else ""} \
      ~{if (rem_genes_without_start_and_stop_codon) then "--rem-genes-without-start-and-stop-codon" else ""} \
      ~{if (allowed_in_frame_stop_codons) then "--allowed-inframe-stop-codons" else ""} \
      ~{if (nt_content) then "--nt-content" else ""} \
      ~{if (get_fast_a_with_introns) then "--get-fasta-with-introns" else ""} \
      ~{if (get_protein_fast_a) then "--get-protein-fasta" else ""} \
      ~{if (create_gtf) then "--create-gtf" else ""} \
      ~{if (create_simple_gtf) then "--create-simple-gtf" else ""} \
      ~{if (create_gff_three) then "--create-gff3" else ""} \
      ~{if (distributions) then "--distributions" else ""}
  >>>
  parameter_meta {
    f: ""
    o: ""
    p: "[prefix]"
    false_run: ""
    statistics: ""
    statistics_at_every_step: ""
    no_processing: ""
    no_gene_redefining: ""
    rem_five_prime_incompletes: ""
    rem_three_prime_incompletes: ""
    rem_five_prime_three_prime_incompletes: ""
    rem_all_incompletes: ""
    rem_mono_exonic_s: ""
    rem_multi_exonic_s: ""
    min_exon_size: "[nt number]"
    min_intron_size: "[nt number]"
    min_cds_size: "[nt number]"
    unique_genes_only: ""
    en_tap_annotation: "[/path/to/your/entap/annotation.tsv]"
    annotated_ss_genes_only: ""
    annotated_all_genes_only: ""
    fast_a: "[/path/to/your/nucleotide/fasta.fasta]"
    splice_table: ""
    canonical_only: ""
    rem_genes_without_start_codon: ""
    allow_alternate_starts: ""
    rem_genes_without_stop_codon: ""
    rem_genes_without_start_and_stop_codon: ""
    allowed_in_frame_stop_codons: "[number]"
    nt_content: ""
    get_fast_a_with_introns: ""
    get_protein_fast_a: ""
    create_gtf: ""
    create_simple_gtf: ""
    create_gff_three: ""
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
    intron_position: "intron_position_data    "
  }
  output {
    File out_stdout = stdout()
    Directory out_o = "${in_o}"
  }
}