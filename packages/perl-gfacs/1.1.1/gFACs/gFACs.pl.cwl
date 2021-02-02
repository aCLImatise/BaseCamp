class: CommandLineTool
id: gFACs.pl.cwl
inputs:
- id: in__falserunstatisticsstatisticsateverystepnoprocessingnogeneredefiningremprimeincompletesremprimeincompletesremprimeprimeincompletesremallincompletesremmonoexonicsremmultiexonicsminexonsize_
  doc: "[prefix]\n--false-run\n--statistics\n--statistics-at-every-step\n--no-processing\n\
    --no-gene-redefining\n--rem-5prime-incompletes\n--rem-3prime-incompletes\n--rem-5prime-3prime-incompletes\n\
    --rem-all-incompletes\n--rem-monoexonics\n--rem-multiexonics\n--min-exon-size\
    \ [nt number]\n--min-intron-size [nt number]\n--min-CDS-size [nt number]\n--unique-genes-only"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_en_tap_annotation
  doc: '[/path/to/your/entap/annotation.tsv]'
  type: boolean
  inputBinding:
    prefix: --entap-annotation
- id: in_annotated_ss_genes_only
  doc: --annotated-all-genes-only
  type: boolean
  inputBinding:
    prefix: --annotated-ss-genes-only
- id: in_fast_a
  doc: '[/path/to/your/nucleotide/fasta.fasta]'
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_splice_table
  doc: "--canonical-only\n--rem-genes-without-start-codon\n--allow-alternate-starts\n\
    --rem-genes-without-stop-codon\n--rem-genes-without-start-and-stop-codon\n--allowed-inframe-stop-codons\
    \ [number]\n--nt-content\n--get-fasta-with-introns\n--get-protein-fasta\n--create-gtf\n\
    --create-simple-gtf\n--create-gff3"
  type: boolean
  inputBinding:
    prefix: --splice-table
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
- id: in_genome_threader_one_dot_six_dot_six_gff_three
  doc: stringtie_1.3.4_gtf
  type: double
  inputBinding:
    position: 2
- id: in_gff_read_zero_dot_nine_do_tone_two_gff_three
  doc: exonerate_2.4.0_gff
  type: double
  inputBinding:
    position: 3
- id: in_evm_one_dot_one_dot_one_gff_three
  doc: CoGe_1.0_gff
  type: double
  inputBinding:
    position: 4
- id: in_refseq_gff
  doc: genbank_gbff - UNDER REPAIR
  type: string
  inputBinding:
    position: 5
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
cwlVersion: v1.1
baseCommand:
- gFACs.pl
