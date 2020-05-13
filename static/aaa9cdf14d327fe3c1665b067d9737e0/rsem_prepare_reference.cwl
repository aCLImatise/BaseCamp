class: CommandLineTool
id: rsem_prepare_reference.cwl
inputs:
- id: gtf
  doc: "If this option is on, RSEM assumes that 'reference_fasta_file(s)' contains\
    \ the sequence of a genome, and will extract transcript reference sequences using\
    \ the gene annotations specified in <file>, which should be in GTF format. If\
    \ this and '--gff3' options are off, RSEM will assume 'reference_fasta_file(s)'\
    \ contains the reference transcripts. In this case, RSEM assumes that name of\
    \ each sequence in the Multi-FASTA files is its transcript_id. (Default: off)"
  type: File
  inputBinding:
    prefix: --gtf
- id: gff3
  doc: "The annotation file is in GFF3 format instead of GTF format. RSEM will first\
    \ convert it to GTF format with the file name 'reference_name.gtf'. Please make\
    \ sure that 'reference_name.gtf' does not exist. (Default: off)"
  type: File
  inputBinding:
    prefix: --gff3
- id: gff3_rna_patterns
  doc: '<pattern> is a comma-separated list of transcript categories, e.g. "mRNA,rRNA".
    Only transcripts that match the <pattern> will be extracted. (Default: "mRNA")'
  type: string
  inputBinding:
    prefix: --gff3-RNA-patterns
- id: gff3_genes_as_transcripts
  doc: This option is designed for untypical organisms, such as viruses, whose GFF3
    files only contain genes. RSEM will assume each gene as a unique transcript when
    it converts the GFF3 file into GTF format.
  type: boolean
  inputBinding:
    prefix: --gff3-genes-as-transcripts
- id: trusted_sources
  doc: '<sources> is a comma-separated list of trusted sources, e.g. "ENSEMBL,HAVANA".
    Only transcripts coming from these sources will be extracted. If this option is
    off, all sources are accepted. (Default: off)'
  type: string
  inputBinding:
    prefix: --trusted-sources
- id: transcript_to_gene_map
  doc: "Use information from <file> to map from transcript (isoform) ids to gene ids.\
    \ Each line of <file> should be of the form: gene_id transcript_id with the two\
    \ fields separated by a tab character. If you are using a GTF file for the \"\
    UCSC Genes\" gene set from the UCSC Genome Browser, then the \"knownIsoforms.txt\"\
    \ file (obtained from the \"Downloads\" section of the UCSC Genome Browser site)\
    \ is of this format. If this option is off, then the mapping of isoforms to genes\
    \ depends on whether the '--gtf' option is specified. If '--gtf' is specified,\
    \ then RSEM uses the \"gene_id\" and \"transcript_id\" attributes in the GTF file.\
    \ Otherwise, RSEM assumes that each sequence in the reference sequence files is\
    \ a separate gene. (Default: off)"
  type: File
  inputBinding:
    prefix: --transcript-to-gene-map
- id: allele_to_gene_map
  doc: "Use information from <file> to provide gene_id and transcript_id information\
    \ for each allele-specific transcript. Each line of <file> should be of the form:\
    \ gene_id transcript_id allele_id with the fields separated by a tab character.\
    \ This option is designed for quantifying allele-specific expression. It is only\
    \ valid if '--gtf' option is not specified. allele_id should be the sequence names\
    \ presented in the Multi-FASTA-formatted files. (Default: off)"
  type: File
  inputBinding:
    prefix: --allele-to-gene-map
- id: polya
  doc: "Add poly(A) tails to the end of all reference isoforms. The length of poly(A)\
    \ tail added is specified by '--polyA-length' option. STAR aligner users may not\
    \ want to use this option. (Default: do not add poly(A) tail to any of the isoforms)"
  type: boolean
  inputBinding:
    prefix: --polyA
- id: polya_length
  doc: 'The length of the poly(A) tails to be added. (Default: 125)'
  type: long
  inputBinding:
    prefix: --polyA-length
- id: no_polya_subset
  doc: "Only meaningful if '--polyA' is specified. Do not add poly(A) tails to those\
    \ transcripts listed in <file>. <file> is a file containing a list of transcript_ids.\
    \ (Default: off)"
  type: File
  inputBinding:
    prefix: --no-polyA-subset
- id: bowtie
  doc: 'Build Bowtie indices. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --bowtie
- id: bowtie_path
  doc: "The path to the Bowtie executables. (Default: the path to Bowtie executables\
    \ is assumed to be in the user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --bowtie-path
- id: bowtie2
  doc: 'Build Bowtie 2 indices. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --bowtie2
- id: bowtie2_path
  doc: "The path to the Bowtie 2 executables. (Default: the path to Bowtie 2 executables\
    \ is assumed to be in the user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --bowtie2-path
- id: star
  doc: 'Build STAR indices. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --star
- id: star_path
  doc: "The path to STAR's executable. (Default: the path to STAR executable is assumed\
    \ to be in user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --star-path
- id: star_sj_db_overhang
  doc: "Length of the genomic sequence around annotated junction. It is only used\
    \ for STAR to build splice junctions database and not needed for Bowtie or Bowtie2.\
    \ It will be passed as the --sjdbOverhang option to STAR. According to STAR's\
    \ manual, its ideal value is max(ReadLength)-1, e.g. for 2x101 paired-end reads,\
    \ the ideal value is 101-1=100. In most cases, the default value of 100 will work\
    \ as well as the ideal value. (Default: 100)"
  type: long
  inputBinding:
    prefix: --star-sjdboverhang
- id: hisat2_hca
  doc: 'Build HISAT2 indices on the transcriptome according to Human Cell Atlas (HCA)
    SMART-Seq2 pipeline. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --hisat2-hca
- id: hisat2_path
  doc: "The path to the HISAT2 executables. (Default: the path to HISAT2 executables\
    \ is assumed to be in the user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --hisat2-path
- id: p
  doc: "/--num-threads <int> Number of threads to use for building STAR's genome indices.\
    \ (Default: 1)"
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: '/--quiet Suppress the output of logging information. (Default: off)'
  type: boolean
  inputBinding:
    prefix: -q
- id: prep_pr_sem
  doc: 'A Boolean indicating whether to prepare reference files for pRSEM, including
    building Bowtie indices for a genome and selecting training set isoforms. The
    index files will be used for aligning ChIP-seq reads in prior-enhanced RSEM and
    the training set isoforms will be used for learning prior. A path to Bowtie executables
    and a mappability file in bigWig format are required when this option is on. Currently,
    Bowtie2 is not supported for prior-enhanced RSEM. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --prep-pRSEM
- id: mapp_ability_bigwig_file
  doc: 'Full path to a whole-genome mappability file in bigWig format. This file is
    required for running prior-enhanced RSEM. It is used for selecting a training
    set of isoforms for prior-learning. This file can be either downloaded from UCSC
    Genome Browser or generated by GEM (Derrien et al., 2012, PLoS One). (Default:
    "")'
  type: string
  inputBinding:
    prefix: --mappability-bigwig-file
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-prepare-reference
