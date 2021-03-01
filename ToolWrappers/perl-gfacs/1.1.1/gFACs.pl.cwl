class: CommandLineTool
id: gFACs.pl.cwl
inputs:
- id: in_specifying_format_step
  doc: '[format]     Specifying a format: A mandatory step to call upon the right
    script.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_p
  doc: '[prefix]'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_rem_five_prime_three_prime_incompletes
  doc: '[nt number]'
  type: boolean?
  inputBinding:
    prefix: --rem-5prime-3prime-incompletes
- id: in_min_intron_size
  doc: '[nt number]'
  type: boolean?
  inputBinding:
    prefix: --min-intron-size
- id: in_min_cds_size
  doc: '[nt number]'
  type: boolean?
  inputBinding:
    prefix: --min-CDS-size
- id: in_en_tap_annotation
  doc: '[/path/to/your/entap/annotation.tsv]'
  type: boolean?
  inputBinding:
    prefix: --entap-annotation
- id: in_fast_a
  doc: '[/path/to/your/nucleotide/fasta.fasta]'
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_rem_genes_without_start_and_stop_codon
  doc: '[number]'
  type: boolean?
  inputBinding:
    prefix: --rem-genes-without-start-and-stop-codon
- id: in_distributions
  doc: '[option] [option] etc...'
  type: boolean?
  inputBinding:
    prefix: --distributions
- id: in_g_facs_log_dot_txt
  doc: gene_table.txt
  type: string
  inputBinding:
    position: 0
- id: in_braker_two_dot_zero_five_gtf
  doc: braker_2.05_gff
  type: double
  inputBinding:
    position: 0
- id: in_braker_two_dot_zero_five_gff_three
  doc: braker_2.0_gff3
  type: double
  inputBinding:
    position: 1
- id: in_braker_two_dot_zero_gff
  doc: braker_2.0_gtf
  type: double
  inputBinding:
    position: 2
- id: in_braker_two_dot_one_dot_two_gtf
  doc: maker_2.31.9_gff
  type: double
  inputBinding:
    position: 3
- id: in_pro_kk_a_one_dot_one_one_gff
  doc: gmap_2017_03_17_gff3
  type: double
  inputBinding:
    position: 4
- id: in_genome_threader_one_dot_six_dot_six_gff_three
  doc: stringtie_1.3.4_gtf
  type: double
  inputBinding:
    position: 5
- id: in_gff_read_zero_dot_nine_do_tone_two_gff_three
  doc: exonerate_2.4.0_gff
  type: double
  inputBinding:
    position: 6
- id: in_evm_one_dot_one_dot_one_gff_three
  doc: CoGe_1.0_gff
  type: double
  inputBinding:
    position: 7
- id: in_g_facs_gene_table
  doc: gFACs_gtf
  type: string
  inputBinding:
    position: 8
- id: in_refseq_gff
  doc: genbank_gbff - UNDER REPAIR
  type: string
  inputBinding:
    position: 9
- id: in_j_browse
  doc: '--compatibility [option] [option] etc... '
  type: string
  inputBinding:
    position: 0
- id: in_snp_eff
  doc: 'EVM_1.1.1_gene_prediction       '
  type: string
  inputBinding:
    position: 1
- id: in_evm_one_dot_one_dot_one_alignment
  doc: 'Distribution table creation:'
  type: double
  inputBinding:
    position: 2
- id: in_exon_lengths
  doc: 'intron_lengths  '
  type: string
  inputBinding:
    position: 0
- id: in_cds_lengths
  doc: 'gene_lengths    '
  type: string
  inputBinding:
    position: 1
- id: in_exon_position
  doc: 'exon_position_data      '
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gFACs.pl
