class: CommandLineTool
id: rsem_prepare_reference.cwl
inputs:
- id: in_gtf
  doc: "If this option is on, RSEM assumes that 'reference_fasta_file(s)'\ncontains\
    \ the sequence of a genome, and will extract transcript\nreference sequences using\
    \ the gene annotations specified in <file>,\nwhich should be in GTF format.\n\
    If this and '--gff3' options are off, RSEM will assume\n'reference_fasta_file(s)'\
    \ contains the reference transcripts. In\nthis case, RSEM assumes that name of\
    \ each sequence in the\nMulti-FASTA files is its transcript_id.\n(Default: off)"
  type: File
  inputBinding:
    prefix: --gtf
- id: in_gff_three
  doc: "The annotation file is in GFF3 format instead of GTF format. RSEM\nwill first\
    \ convert it to GTF format with the file name\n'reference_name.gtf'. Please make\
    \ sure that 'reference_name.gtf'\ndoes not exist. (Default: off)"
  type: File
  inputBinding:
    prefix: --gff3
- id: in_gff_three_rna_patterns
  doc: "<pattern> is a comma-separated list of transcript categories, e.g.\n\"mRNA,rRNA\"\
    . Only transcripts that match the <pattern> will be\nextracted. (Default: \"mRNA\"\
    )"
  type: long
  inputBinding:
    prefix: --gff3-RNA-patterns
- id: in_gff_three_genes_as_transcripts
  doc: "This option is designed for untypical organisms, such as viruses,\nwhose GFF3\
    \ files only contain genes. RSEM will assume each gene as a\nunique transcript\
    \ when it converts the GFF3 file into GTF format."
  type: boolean
  inputBinding:
    prefix: --gff3-genes-as-transcripts
- id: in_trusted_sources
  doc: "<sources> is a comma-separated list of trusted sources, e.g.\n\"ENSEMBL,HAVANA\"\
    . Only transcripts coming from these sources will be\nextracted. If this option\
    \ is off, all sources are accepted.\n(Default: off)"
  type: string
  inputBinding:
    prefix: --trusted-sources
- id: in_transcript_to_gene_map
  doc: "Use information from <file> to map from transcript (isoform) ids to\ngene\
    \ ids. Each line of <file> should be of the form:\ngene_id transcript_id\nwith\
    \ the two fields separated by a tab character.\nIf you are using a GTF file for\
    \ the \"UCSC Genes\" gene set from the\nUCSC Genome Browser, then the \"knownIsoforms.txt\"\
    \ file (obtained\nfrom the \"Downloads\" section of the UCSC Genome Browser site)\
    \ is of\nthis format.\nIf this option is off, then the mapping of isoforms to\
    \ genes depends\non whether the '--gtf' option is specified. If '--gtf' is specified,\n\
    then RSEM uses the \"gene_id\" and \"transcript_id\" attributes in the\nGTF file.\
    \ Otherwise, RSEM assumes that each sequence in the\nreference sequence files\
    \ is a separate gene.\n(Default: off)"
  type: File
  inputBinding:
    prefix: --transcript-to-gene-map
- id: in_allele_to_gene_map
  doc: "Use information from <file> to provide gene_id and transcript_id\ninformation\
    \ for each allele-specific transcript. Each line of <file>\nshould be of the form:\n\
    gene_id transcript_id allele_id\nwith the fields separated by a tab character.\n\
    This option is designed for quantifying allele-specific expression.\nIt is only\
    \ valid if '--gtf' option is not specified. allele_id\nshould be the sequence\
    \ names presented in the Multi-FASTA-formatted\nfiles.\n(Default: off)"
  type: File
  inputBinding:
    prefix: --allele-to-gene-map
- id: in_polya
  doc: "Add poly(A) tails to the end of all reference isoforms. The length\nof poly(A)\
    \ tail added is specified by '--polyA-length' option. STAR\naligner users may\
    \ not want to use this option. (Default: do not add\npoly(A) tail to any of the\
    \ isoforms)"
  type: boolean
  inputBinding:
    prefix: --polyA
- id: in_polya_length
  doc: 'The length of the poly(A) tails to be added. (Default: 125)'
  type: long
  inputBinding:
    prefix: --polyA-length
- id: in_no_polya_subset
  doc: "Only meaningful if '--polyA' is specified. Do not add poly(A) tails\nto those\
    \ transcripts listed in <file>. <file> is a file containing a\nlist of transcript_ids.\
    \ (Default: off)"
  type: File
  inputBinding:
    prefix: --no-polyA-subset
- id: in_bowtie
  doc: 'Build Bowtie indices. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --bowtie
- id: in_bowtie_path
  doc: "The path to the Bowtie executables. (Default: the path to Bowtie\nexecutables\
    \ is assumed to be in the user's PATH environment\nvariable)"
  type: File
  inputBinding:
    prefix: --bowtie-path
- id: in_bowtie_two
  doc: 'Build Bowtie 2 indices. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --bowtie2
- id: in_bowtie_two_path
  doc: "The path to the Bowtie 2 executables. (Default: the path to Bowtie 2\nexecutables\
    \ is assumed to be in the user's PATH environment\nvariable)"
  type: File
  inputBinding:
    prefix: --bowtie2-path
- id: in_star
  doc: 'Build STAR indices. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --star
- id: in_star_path
  doc: "The path to STAR's executable. (Default: the path to STAR executable\nis assumed\
    \ to be in user's PATH environment variable)"
  type: File
  inputBinding:
    prefix: --star-path
- id: in_star_sj_db_overhang
  doc: "Length of the genomic sequence around annotated junction. It is only\nused\
    \ for STAR to build splice junctions database and not needed for\nBowtie or Bowtie2.\
    \ It will be passed as the --sjdbOverhang option to\nSTAR. According to STAR's\
    \ manual, its ideal value is\nmax(ReadLength)-1, e.g. for 2x101 paired-end reads,\
    \ the ideal value\nis 101-1=100. In most cases, the default value of 100 will\
    \ work as\nwell as the ideal value. (Default: 100)"
  type: long
  inputBinding:
    prefix: --star-sjdboverhang
- id: in_his_at_two_hca
  doc: "Build HISAT2 indices on the transcriptome according to Human Cell\nAtlas (HCA)\
    \ SMART-Seq2 pipeline. (Default: off)"
  type: boolean
  inputBinding:
    prefix: --hisat2-hca
- id: in_his_at_two_path
  doc: "The path to the HISAT2 executables. (Default: the path to HISAT2\nexecutables\
    \ is assumed to be in the user's PATH environment\nvariable)"
  type: File
  inputBinding:
    prefix: --hisat2-path
- id: in_p_slash_num_threads
  doc: "Number of threads to use for building STAR's genome indices.\n(Default: 1)"
  type: long
  inputBinding:
    prefix: -p/--num-threads
- id: in_q_slash_quiet
  doc: 'Suppress the output of logging information. (Default: off)'
  type: boolean
  inputBinding:
    prefix: -q/--quiet
- id: in_h_slash_help
  doc: Show help information.
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_prep_pr_sem
  doc: "A Boolean indicating whether to prepare reference files for pRSEM,\nincluding\
    \ building Bowtie indices for a genome and selecting\ntraining set isoforms. The\
    \ index files will be used for aligning\nChIP-seq reads in prior-enhanced RSEM\
    \ and the training set isoforms\nwill be used for learning prior. A path to Bowtie\
    \ executables and a\nmappability file in bigWig format are required when this\
    \ option is\non. Currently, Bowtie2 is not supported for prior-enhanced RSEM.\n\
    (Default: off)"
  type: boolean
  inputBinding:
    prefix: --prep-pRSEM
- id: in_mapp_ability_bigwig_file
  doc: "Full path to a whole-genome mappability file in bigWig format. This\nfile\
    \ is required for running prior-enhanced RSEM. It is used for\nselecting a training\
    \ set of isoforms for prior-learning. This file\ncan be either downloaded from\
    \ UCSC Genome Browser or generated by\nGEM (Derrien et al., 2012, PLoS One). (Default:\
    \ \"\")"
  type: File
  inputBinding:
    prefix: --mappability-bigwig-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-prepare-reference
