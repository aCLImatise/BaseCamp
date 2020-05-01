#!/usr/bin/env cwl-runner

baseCommand:
- rsem-prepare-reference
class: CommandLineTool
cwlVersion: v1.0
id: rsem-prepare-reference
inputs:
- doc: "If this option is on, RSEM assumes that 'reference_fasta_file(s)' contains\
    \ the sequence of a genome, and will extract transcript reference sequences using\
    \ the gene annotations specified in <file>, which should be in GTF format. If\
    \ this and '--gff3' options are off, RSEM will assume 'reference_fasta_file(s)'\
    \ contains the reference transcripts. In this case, RSEM assumes that name of\
    \ each sequence in the Multi-FASTA files is its transcript_id. (Default: off)"
  id: gtf
  inputBinding:
    prefix: --gtf
  type: File
- doc: "The annotation file is in GFF3 format instead of GTF format. RSEM will first\
    \ convert it to GTF format with the file name 'reference_name.gtf'. Please make\
    \ sure that 'reference_name.gtf' does not exist. (Default: off)"
  id: gff3
  inputBinding:
    prefix: --gff3
  type: File
- doc: '<pattern> is a comma-separated list of transcript categories, e.g. "mRNA,rRNA".
    Only transcripts that match the <pattern> will be extracted. (Default: "mRNA")'
  id: gff3_rna_patterns
  inputBinding:
    prefix: --gff3-RNA-patterns
  type: string
- doc: This option is designed for untypical organisms, such as viruses, whose GFF3
    files only contain genes. RSEM will assume each gene as a unique transcript when
    it converts the GFF3 file into GTF format.
  id: gff3_genes_as_transcripts
  inputBinding:
    prefix: --gff3-genes-as-transcripts
  type: boolean
- doc: '<sources> is a comma-separated list of trusted sources, e.g. "ENSEMBL,HAVANA".
    Only transcripts coming from these sources will be extracted. If this option is
    off, all sources are accepted. (Default: off)'
  id: trusted_sources
  inputBinding:
    prefix: --trusted-sources
  type: string
- doc: "Use information from <file> to map from transcript (isoform) ids to gene ids.\
    \ Each line of <file> should be of the form: gene_id transcript_id with the two\
    \ fields separated by a tab character. If you are using a GTF file for the \"\
    UCSC Genes\" gene set from the UCSC Genome Browser, then the \"knownIsoforms.txt\"\
    \ file (obtained from the \"Downloads\" section of the UCSC Genome Browser site)\
    \ is of this format. If this option is off, then the mapping of isoforms to genes\
    \ depends on whether the '--gtf' option is specified. If '--gtf' is specified,\
    \ then RSEM uses the \"gene_id\" and \"transcript_id\" attributes in the GTF file.\
    \ Otherwise, RSEM assumes that each sequence in the reference sequence files is\
    \ a separate gene. (Default: off)"
  id: transcript_to_gene_map
  inputBinding:
    prefix: --transcript-to-gene-map
  type: File
- doc: "Use information from <file> to provide gene_id and transcript_id information\
    \ for each allele-specific transcript. Each line of <file> should be of the form:\
    \ gene_id transcript_id allele_id with the fields separated by a tab character.\
    \ This option is designed for quantifying allele-specific expression. It is only\
    \ valid if '--gtf' option is not specified. allele_id should be the sequence names\
    \ presented in the Multi-FASTA-formatted files. (Default: off)"
  id: allele_to_gene_map
  inputBinding:
    prefix: --allele-to-gene-map
  type: File
- doc: "Add poly(A) tails to the end of all reference isoforms. The length of poly(A)\
    \ tail added is specified by '--polyA-length' option. STAR aligner users may not\
    \ want to use this option. (Default: do not add poly(A) tail to any of the isoforms)"
  id: polya
  inputBinding:
    prefix: --polyA
  type: boolean
- doc: 'The length of the poly(A) tails to be added. (Default: 125)'
  id: polya_length
  inputBinding:
    prefix: --polyA-length
  type: long
- doc: "Only meaningful if '--polyA' is specified. Do not add poly(A) tails to those\
    \ transcripts listed in <file>. <file> is a file containing a list of transcript_ids.\
    \ (Default: off)"
  id: no_polya_subset
  inputBinding:
    prefix: --no-polyA-subset
  type: File
- doc: 'Build Bowtie indices. (Default: off)'
  id: bowtie
  inputBinding:
    prefix: --bowtie
  type: boolean
- doc: "The path to the Bowtie executables. (Default: the path to Bowtie executables\
    \ is assumed to be in the user's PATH environment variable)"
  id: bowtie_path
  inputBinding:
    prefix: --bowtie-path
  type: File
- doc: 'Build Bowtie 2 indices. (Default: off)'
  id: bowtie2
  inputBinding:
    prefix: --bowtie2
  type: boolean
- doc: "The path to the Bowtie 2 executables. (Default: the path to Bowtie 2 executables\
    \ is assumed to be in the user's PATH environment variable)"
  id: bowtie2_path
  inputBinding:
    prefix: --bowtie2-path
  type: File
- doc: 'Build STAR indices. (Default: off)'
  id: star
  inputBinding:
    prefix: --star
  type: boolean
- doc: "The path to STAR's executable. (Default: the path to STAR executable is assumed\
    \ to be in user's PATH environment variable)"
  id: star_path
  inputBinding:
    prefix: --star-path
  type: File
- doc: "Length of the genomic sequence around annotated junction. It is only used\
    \ for STAR to build splice junctions database and not needed for Bowtie or Bowtie2.\
    \ It will be passed as the --sjdbOverhang option to STAR. According to STAR's\
    \ manual, its ideal value is max(ReadLength)-1, e.g. for 2x101 paired-end reads,\
    \ the ideal value is 101-1=100. In most cases, the default value of 100 will work\
    \ as well as the ideal value. (Default: 100)"
  id: star_sj_db_overhang
  inputBinding:
    prefix: --star-sjdboverhang
  type: long
- doc: 'Build HISAT2 indices on the transcriptome according to Human Cell Atlas (HCA)
    SMART-Seq2 pipeline. (Default: off)'
  id: hisat2_hca
  inputBinding:
    prefix: --hisat2-hca
  type: boolean
- doc: "The path to the HISAT2 executables. (Default: the path to HISAT2 executables\
    \ is assumed to be in the user's PATH environment variable)"
  id: hisat2_path
  inputBinding:
    prefix: --hisat2-path
  type: File
- doc: "/--num-threads <int> Number of threads to use for building STAR's genome indices.\
    \ (Default: 1)"
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '/--quiet Suppress the output of logging information. (Default: off)'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: 'A Boolean indicating whether to prepare reference files for pRSEM, including
    building Bowtie indices for a genome and selecting training set isoforms. The
    index files will be used for aligning ChIP-seq reads in prior-enhanced RSEM and
    the training set isoforms will be used for learning prior. A path to Bowtie executables
    and a mappability file in bigWig format are required when this option is on. Currently,
    Bowtie2 is not supported for prior-enhanced RSEM. (Default: off)'
  id: prep_pr_sem
  inputBinding:
    prefix: --prep-pRSEM
  type: boolean
- doc: 'Full path to a whole-genome mappability file in bigWig format. This file is
    required for running prior-enhanced RSEM. It is used for selecting a training
    set of isoforms for prior-learning. This file can be either downloaded from UCSC
    Genome Browser or generated by GEM (Derrien et al., 2012, PLoS One). (Default:
    "")'
  id: mapp_ability_bigwig_file
  inputBinding:
    prefix: --mappability-bigwig-file
  type: string
