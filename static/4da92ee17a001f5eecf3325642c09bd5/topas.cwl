class: CommandLineTool
id: topas.cwl
inputs:
- id: in_validate_fast_a
  doc: validate a fasta file
  type: string
  inputBinding:
    position: 0
- id: in_correct_fast_a
  doc: correct a fasta file
  type: string
  inputBinding:
    position: 1
- id: in_index_fast_a
  doc: generate fasta index from a fasta file
  type: string
  inputBinding:
    position: 2
- id: in_tabulate_fast_a
  doc: 'tabulates a fasta file into: HEADER TAB SEQUENCE'
  type: string
  inputBinding:
    position: 3
- id: in_extract_fast_a
  doc: sort a fasta file and return only the fasta sequences which match a given pattern
  type: string
  inputBinding:
    position: 4
- id: in_primary_base_fast_a
  doc: crawl through every sequence in a fasta file and replace secondary bases with
    primary ones
  type: string
  inputBinding:
    position: 5
- id: in_validate_gff_three
  doc: validate a gff3 file
  type: long
  inputBinding:
    position: 6
- id: in_filter_gff_three
  doc: a GFF3 file can be filtered by seqid + range, source, type, score, strand,
    phase, attribute
  type: long
  inputBinding:
    position: 7
- id: in_sort_gff_three
  doc: sorts a GFF3 File first by SeqId, then by Start/End
  type: long
  inputBinding:
    position: 8
- id: in_format_fast_q
  doc: format the sequence string line(s) and the quality string line(s) of a fastq
    file to a certain length
  type: string
  inputBinding:
    position: 9
- id: in_validate_fast_q
  doc: validate a fastq file
  type: string
  inputBinding:
    position: 10
- id: in_index_vcf
  doc: generate vcf index from a vcf file
  type: string
  inputBinding:
    position: 11
- id: in_filter_vcf
  doc: a VCF file can be filtered by CHROM:START-END, ID and by INFO (SNP or INDEL)
  type: string
  inputBinding:
    position: 12
- id: in_annotate_vcf
  doc: annotate a vcf file by reference of a vcf CHROM:POSITION to SEQID:START-END
    of a gff3 file
  type: string
  inputBinding:
    position: 13
- id: in_analyse_vcf
  doc: analyse a given vcf file by given windows
  type: string
  inputBinding:
    position: 0
- id: in_gen_cons
  doc: generate a consensus sequence from a GATK Unified Genotyper generated VCF file
  type: string
  inputBinding:
    position: 1
- id: in_join_expr_tables
  doc: join expression tables together (based on gene names)
  type: string
  inputBinding:
    position: 2
- id: in_norm_expr_table
  doc: normalize expression table
  type: string
  inputBinding:
    position: 3
- id: in_phy_cc
  doc: 'crawl through a given SNP table in tsv format and calculate simple statistics '
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- topas
