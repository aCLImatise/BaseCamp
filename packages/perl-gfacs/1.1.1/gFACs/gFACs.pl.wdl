version 1.0

task GFACspl {
  input {
    Boolean? _falserunstatisticsstatisticsateverystepnoprocessingnogeneredefiningremprimeincompletesremprimeincompletesremprimeprimeincompletesremallincompletesremmonoexonicsremmultiexonicsminexonsize_
    Boolean? en_tap_annotation
    Boolean? annotated_ss_genes_only
    Boolean? fast_a
    Boolean? splice_table
    Boolean? distributions
    String g_facs_log_dot_txt
    Float braker_two_dot_zero_five_gtf
    Float braker_two_dot_zero_five_gff_three
    Float genome_threader_one_dot_six_dot_six_gff_three
    Float gff_read_zero_dot_nine_do_tone_two_gff_three
    Float evm_one_dot_one_dot_one_gff_three
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
      ~{genome_threader_one_dot_six_dot_six_gff_three} \
      ~{gff_read_zero_dot_nine_do_tone_two_gff_three} \
      ~{evm_one_dot_one_dot_one_gff_three} \
      ~{refseq_gff} \
      ~{j_browse} \
      ~{snp_eff} \
      ~{evm_one_dot_one_dot_one_alignment} \
      ~{exon_lengths} \
      ~{cds_lengths} \
      ~{exon_position} \
      ~{intron_position} \
      ~{if (_falserunstatisticsstatisticsateverystepnoprocessingnogeneredefiningremprimeincompletesremprimeincompletesremprimeprimeincompletesremallincompletesremmonoexonicsremmultiexonicsminexonsize_) then "-p" else ""} \
      ~{if (en_tap_annotation) then "--entap-annotation" else ""} \
      ~{if (annotated_ss_genes_only) then "--annotated-ss-genes-only" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (splice_table) then "--splice-table" else ""} \
      ~{if (distributions) then "--distributions" else ""}
  >>>
  parameter_meta {
    _falserunstatisticsstatisticsateverystepnoprocessingnogeneredefiningremprimeincompletesremprimeincompletesremprimeprimeincompletesremallincompletesremmonoexonicsremmultiexonicsminexonsize_: "[prefix]\\n--false-run\\n--statistics\\n--statistics-at-every-step\\n--no-processing\\n--no-gene-redefining\\n--rem-5prime-incompletes\\n--rem-3prime-incompletes\\n--rem-5prime-3prime-incompletes\\n--rem-all-incompletes\\n--rem-monoexonics\\n--rem-multiexonics\\n--min-exon-size [nt number]\\n--min-intron-size [nt number]\\n--min-CDS-size [nt number]\\n--unique-genes-only"
    en_tap_annotation: "[/path/to/your/entap/annotation.tsv]"
    annotated_ss_genes_only: "--annotated-all-genes-only"
    fast_a: "[/path/to/your/nucleotide/fasta.fasta]"
    splice_table: "--canonical-only\\n--rem-genes-without-start-codon\\n--allow-alternate-starts\\n--rem-genes-without-stop-codon\\n--rem-genes-without-start-and-stop-codon\\n--allowed-inframe-stop-codons [number]\\n--nt-content\\n--get-fasta-with-introns\\n--get-protein-fasta\\n--create-gtf\\n--create-simple-gtf\\n--create-gff3"
    distributions: "[option] [option] etc..."
    g_facs_log_dot_txt: "gene_table.txt"
    braker_two_dot_zero_five_gtf: "braker_2.05_gff"
    braker_two_dot_zero_five_gff_three: "braker_2.0_gff3"
    genome_threader_one_dot_six_dot_six_gff_three: "stringtie_1.3.4_gtf"
    gff_read_zero_dot_nine_do_tone_two_gff_three: "exonerate_2.4.0_gff"
    evm_one_dot_one_dot_one_gff_three: "CoGe_1.0_gff"
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
  }
}