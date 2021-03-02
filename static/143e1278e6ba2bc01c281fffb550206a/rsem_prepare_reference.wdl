version 1.0

task Rsempreparereference {
  input {
    File? gtf
    File? gff_three
    Int? gff_three_rna_patterns
    Boolean? gff_three_genes_as_transcripts
    String? trusted_sources
    File? transcript_to_gene_map
    File? allele_to_gene_map
    Boolean? polya
    Int? polya_length
    File? no_polya_subset
    Boolean? bowtie
    File? bowtie_path
    Boolean? bowtie_two
    File? bowtie_two_path
    Boolean? star
    File? star_path
    Int? star_sj_db_overhang
    Boolean? his_at_two_hca
    File? his_at_two_path
    Int? num_threads
    Boolean? quiet
    Boolean? prep_pr_sem
    File? mapp_ability_bigwig_file
  }
  command <<<
    rsem_prepare_reference \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if defined(gff_three_rna_patterns) then ("--gff3-RNA-patterns " +  '"' + gff_three_rna_patterns + '"') else ""} \
      ~{if (gff_three_genes_as_transcripts) then "--gff3-genes-as-transcripts" else ""} \
      ~{if defined(trusted_sources) then ("--trusted-sources " +  '"' + trusted_sources + '"') else ""} \
      ~{if defined(transcript_to_gene_map) then ("--transcript-to-gene-map " +  '"' + transcript_to_gene_map + '"') else ""} \
      ~{if defined(allele_to_gene_map) then ("--allele-to-gene-map " +  '"' + allele_to_gene_map + '"') else ""} \
      ~{if (polya) then "--polyA" else ""} \
      ~{if defined(polya_length) then ("--polyA-length " +  '"' + polya_length + '"') else ""} \
      ~{if defined(no_polya_subset) then ("--no-polyA-subset " +  '"' + no_polya_subset + '"') else ""} \
      ~{if (bowtie) then "--bowtie" else ""} \
      ~{if defined(bowtie_path) then ("--bowtie-path " +  '"' + bowtie_path + '"') else ""} \
      ~{if (bowtie_two) then "--bowtie2" else ""} \
      ~{if defined(bowtie_two_path) then ("--bowtie2-path " +  '"' + bowtie_two_path + '"') else ""} \
      ~{if (star) then "--star" else ""} \
      ~{if defined(star_path) then ("--star-path " +  '"' + star_path + '"') else ""} \
      ~{if defined(star_sj_db_overhang) then ("--star-sjdboverhang " +  '"' + star_sj_db_overhang + '"') else ""} \
      ~{if (his_at_two_hca) then "--hisat2-hca" else ""} \
      ~{if defined(his_at_two_path) then ("--hisat2-path " +  '"' + his_at_two_path + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (prep_pr_sem) then "--prep-pRSEM" else ""} \
      ~{if defined(mapp_ability_bigwig_file) then ("--mappability-bigwig-file " +  '"' + mapp_ability_bigwig_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gtf: "If this option is on, RSEM assumes that 'reference_fasta_file(s)'\\ncontains the sequence of a genome, and will extract transcript\\nreference sequences using the gene annotations specified in <file>,\\nwhich should be in GTF format.\\nIf this and '--gff3' options are off, RSEM will assume\\n'reference_fasta_file(s)' contains the reference transcripts. In\\nthis case, RSEM assumes that name of each sequence in the\\nMulti-FASTA files is its transcript_id.\\n(Default: off)"
    gff_three: "The annotation file is in GFF3 format instead of GTF format. RSEM\\nwill first convert it to GTF format with the file name\\n'reference_name.gtf'. Please make sure that 'reference_name.gtf'\\ndoes not exist. (Default: off)"
    gff_three_rna_patterns: "<pattern> is a comma-separated list of transcript categories, e.g.\\n\\\"mRNA,rRNA\\\". Only transcripts that match the <pattern> will be\\nextracted. (Default: \\\"mRNA\\\")"
    gff_three_genes_as_transcripts: "This option is designed for untypical organisms, such as viruses,\\nwhose GFF3 files only contain genes. RSEM will assume each gene as a\\nunique transcript when it converts the GFF3 file into GTF format."
    trusted_sources: "<sources> is a comma-separated list of trusted sources, e.g.\\n\\\"ENSEMBL,HAVANA\\\". Only transcripts coming from these sources will be\\nextracted. If this option is off, all sources are accepted.\\n(Default: off)"
    transcript_to_gene_map: "Use information from <file> to map from transcript (isoform) ids to\\ngene ids. Each line of <file> should be of the form:\\ngene_id transcript_id\\nwith the two fields separated by a tab character.\\nIf you are using a GTF file for the \\\"UCSC Genes\\\" gene set from the\\nUCSC Genome Browser, then the \\\"knownIsoforms.txt\\\" file (obtained\\nfrom the \\\"Downloads\\\" section of the UCSC Genome Browser site) is of\\nthis format.\\nIf this option is off, then the mapping of isoforms to genes depends\\non whether the '--gtf' option is specified. If '--gtf' is specified,\\nthen RSEM uses the \\\"gene_id\\\" and \\\"transcript_id\\\" attributes in the\\nGTF file. Otherwise, RSEM assumes that each sequence in the\\nreference sequence files is a separate gene.\\n(Default: off)"
    allele_to_gene_map: "Use information from <file> to provide gene_id and transcript_id\\ninformation for each allele-specific transcript. Each line of <file>\\nshould be of the form:\\ngene_id transcript_id allele_id\\nwith the fields separated by a tab character.\\nThis option is designed for quantifying allele-specific expression.\\nIt is only valid if '--gtf' option is not specified. allele_id\\nshould be the sequence names presented in the Multi-FASTA-formatted\\nfiles.\\n(Default: off)"
    polya: "Add poly(A) tails to the end of all reference isoforms. The length\\nof poly(A) tail added is specified by '--polyA-length' option. STAR\\naligner users may not want to use this option. (Default: do not add\\npoly(A) tail to any of the isoforms)"
    polya_length: "The length of the poly(A) tails to be added. (Default: 125)"
    no_polya_subset: "Only meaningful if '--polyA' is specified. Do not add poly(A) tails\\nto those transcripts listed in <file>. <file> is a file containing a\\nlist of transcript_ids. (Default: off)"
    bowtie: "Build Bowtie indices. (Default: off)"
    bowtie_path: "The path to the Bowtie executables. (Default: the path to Bowtie\\nexecutables is assumed to be in the user's PATH environment\\nvariable)"
    bowtie_two: "Build Bowtie 2 indices. (Default: off)"
    bowtie_two_path: "The path to the Bowtie 2 executables. (Default: the path to Bowtie 2\\nexecutables is assumed to be in the user's PATH environment\\nvariable)"
    star: "Build STAR indices. (Default: off)"
    star_path: "The path to STAR's executable. (Default: the path to STAR executable\\nis assumed to be in user's PATH environment variable)"
    star_sj_db_overhang: "Length of the genomic sequence around annotated junction. It is only\\nused for STAR to build splice junctions database and not needed for\\nBowtie or Bowtie2. It will be passed as the --sjdbOverhang option to\\nSTAR. According to STAR's manual, its ideal value is\\nmax(ReadLength)-1, e.g. for 2x101 paired-end reads, the ideal value\\nis 101-1=100. In most cases, the default value of 100 will work as\\nwell as the ideal value. (Default: 100)"
    his_at_two_hca: "Build HISAT2 indices on the transcriptome according to Human Cell\\nAtlas (HCA) SMART-Seq2 pipeline. (Default: off)"
    his_at_two_path: "The path to the HISAT2 executables. (Default: the path to HISAT2\\nexecutables is assumed to be in the user's PATH environment\\nvariable)"
    num_threads: "Number of threads to use for building STAR's genome indices.\\n(Default: 1)"
    quiet: "Suppress the output of logging information. (Default: off)"
    prep_pr_sem: "A Boolean indicating whether to prepare reference files for pRSEM,\\nincluding building Bowtie indices for a genome and selecting\\ntraining set isoforms. The index files will be used for aligning\\nChIP-seq reads in prior-enhanced RSEM and the training set isoforms\\nwill be used for learning prior. A path to Bowtie executables and a\\nmappability file in bigWig format are required when this option is\\non. Currently, Bowtie2 is not supported for prior-enhanced RSEM.\\n(Default: off)"
    mapp_ability_bigwig_file: "Full path to a whole-genome mappability file in bigWig format. This\\nfile is required for running prior-enhanced RSEM. It is used for\\nselecting a training set of isoforms for prior-learning. This file\\ncan be either downloaded from UCSC Genome Browser or generated by\\nGEM (Derrien et al., 2012, PLoS One). (Default: \\\"\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}