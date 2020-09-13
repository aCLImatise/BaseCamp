class: CommandLineTool
id: ../../../gFACs.pl.cwl
inputs:
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_o
  doc: ''
  type: Directory
  inputBinding:
    prefix: -O
- id: in_p
  doc: '[prefix]'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_false_run
  doc: ''
  type: boolean
  inputBinding:
    prefix: --false-run
- id: in_statistics
  doc: ''
  type: boolean
  inputBinding:
    prefix: --statistics
- id: in_statistics_at_every_step
  doc: ''
  type: boolean
  inputBinding:
    prefix: --statistics-at-every-step
- id: in_no_processing
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-processing
- id: in_no_gene_redefining
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-gene-redefining
- id: in_rem_five_prime_incompletes
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-5prime-incompletes
- id: in_rem_three_prime_incompletes
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-3prime-incompletes
- id: in_rem_five_prime_three_prime_incompletes
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-5prime-3prime-incompletes
- id: in_rem_all_incompletes
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-all-incompletes
- id: in_rem_mono_exonic_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-monoexonics
- id: in_rem_multi_exonic_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-multiexonics
- id: in_min_exon_size
  doc: '[nt number]'
  type: boolean
  inputBinding:
    prefix: --min-exon-size
- id: in_min_intron_size
  doc: '[nt number]'
  type: boolean
  inputBinding:
    prefix: --min-intron-size
- id: in_min_cds_size
  doc: '[nt number]'
  type: boolean
  inputBinding:
    prefix: --min-CDS-size
- id: in_unique_genes_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: --unique-genes-only
- id: in_en_tap_annotation
  doc: '[/path/to/your/entap/annotation.tsv]'
  type: boolean
  inputBinding:
    prefix: --entap-annotation
- id: in_annotated_ss_genes_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: --annotated-ss-genes-only
- id: in_annotated_all_genes_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: --annotated-all-genes-only
- id: in_fast_a
  doc: '[/path/to/your/nucleotide/fasta.fasta]'
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_splice_table
  doc: ''
  type: boolean
  inputBinding:
    prefix: --splice-table
- id: in_canonical_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: --canonical-only
- id: in_rem_genes_without_start_codon
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-genes-without-start-codon
- id: in_allow_alternate_starts
  doc: ''
  type: boolean
  inputBinding:
    prefix: --allow-alternate-starts
- id: in_rem_genes_without_stop_codon
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-genes-without-stop-codon
- id: in_rem_genes_without_start_and_stop_codon
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rem-genes-without-start-and-stop-codon
- id: in_allowed_in_frame_stop_codons
  doc: '[number]'
  type: boolean
  inputBinding:
    prefix: --allowed-inframe-stop-codons
- id: in_nt_content
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nt-content
- id: in_get_fast_a_with_introns
  doc: ''
  type: boolean
  inputBinding:
    prefix: --get-fasta-with-introns
- id: in_get_protein_fast_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: --get-protein-fasta
- id: in_create_gtf
  doc: ''
  type: boolean
  inputBinding:
    prefix: --create-gtf
- id: in_create_simple_gtf
  doc: ''
  type: boolean
  inputBinding:
    prefix: --create-simple-gtf
- id: in_create_gff_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: --create-gff3
- id: in_distributions
  doc: '[option] [option] etc...'
  type: boolean
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
- id: in_intron_position
  doc: 'intron_position_data    '
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- gFACs.pl
