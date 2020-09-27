version 1.0

task RunMidaspySnps {
  input {
    Boolean? remove_temp
    Boolean? build_db
    Boolean? align
    Boolean? pile_up
    File? path_reference_default
    Float? species_cov
    Int? species_top_n
    String? species_id
    Int? fastafastq_file_containing_st_mate
    Int? fastafastq_file_containing_nd_mate
    Boolean? interleaved
    String? bowtie_alignment_speedsensitivity
    Int? reads_use_use
    String? globallocal_read_global
    Int? number_threads_use
    Float? map_id
    Int? mapq
    Int? base_q
    Int? read_q
    Float? aln_cov
    Int? trim
    Boolean? discard
    Boolean? baq
    Boolean? adjust_mq
    String outdir
  }
  command <<<
    run_midas_py snps \
      ~{outdir} \
      ~{if (remove_temp) then "--remove_temp" else ""} \
      ~{if (build_db) then "--build_db" else ""} \
      ~{if (align) then "--align" else ""} \
      ~{if (pile_up) then "--pileup" else ""} \
      ~{if defined(path_reference_default) then ("-d " +  '"' + path_reference_default + '"') else ""} \
      ~{if defined(species_cov) then ("--species_cov " +  '"' + species_cov + '"') else ""} \
      ~{if defined(species_top_n) then ("--species_topn " +  '"' + species_top_n + '"') else ""} \
      ~{if defined(species_id) then ("--species_id " +  '"' + species_id + '"') else ""} \
      ~{if defined(fastafastq_file_containing_st_mate) then ("-1 " +  '"' + fastafastq_file_containing_st_mate + '"') else ""} \
      ~{if defined(fastafastq_file_containing_nd_mate) then ("-2 " +  '"' + fastafastq_file_containing_nd_mate + '"') else ""} \
      ~{if (interleaved) then "--interleaved" else ""} \
      ~{if defined(bowtie_alignment_speedsensitivity) then ("-s " +  '"' + bowtie_alignment_speedsensitivity + '"') else ""} \
      ~{if defined(reads_use_use) then ("-n " +  '"' + reads_use_use + '"') else ""} \
      ~{if defined(globallocal_read_global) then ("-m " +  '"' + globallocal_read_global + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if defined(map_id) then ("--mapid " +  '"' + map_id + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(base_q) then ("--baseq " +  '"' + base_q + '"') else ""} \
      ~{if defined(read_q) then ("--readq " +  '"' + read_q + '"') else ""} \
      ~{if defined(aln_cov) then ("--aln_cov " +  '"' + aln_cov + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if (discard) then "--discard" else ""} \
      ~{if (baq) then "--baq" else ""} \
      ~{if (adjust_mq) then "--adjust_mq" else ""}
  >>>
  parameter_meta {
    remove_temp: "Remove intermediate files generated by MIDAS (False).\\nUseful to reduce disk space of MIDAS output"
    build_db: "Build bowtie2 database of pangenomes"
    align: "Align reads to pangenome database"
    pile_up: "Run samtools mpileup and count 4 alleles across genome"
    path_reference_default: "Path to reference database\\nBy default, the MIDAS_DB environmental variable is used"
    species_cov: "Include species with >X coverage (3.0)"
    species_top_n: "Include top N most abundant species"
    species_id: "Include specified species. Separate ids with a comma"
    fastafastq_file_containing_st_mate: "FASTA/FASTQ file containing 1st mate if using paired-end reads.\\nOtherwise FASTA/FASTQ containing unpaired reads.\\nCan be gzip'ed (extension: .gz) or bzip2'ed (extension: .bz2)"
    fastafastq_file_containing_nd_mate: "FASTA/FASTQ file containing 2nd mate if using paired-end reads.\\nCan be gzip'ed (extension: .gz) or bzip2'ed (extension: .bz2)"
    interleaved: "FASTA/FASTQ file in -1 are paired and contain forward AND reverse reads"
    bowtie_alignment_speedsensitivity: "Bowtie2 alignment speed/sensitivity (very-sensitive)"
    reads_use_use: "# reads to use from input file(s) (use all)"
    globallocal_read_global: "Global/local read alignment (global)"
    number_threads_use: "Number of threads to use (1)"
    map_id: "Discard reads with alignment identity < MAPID (94.0)"
    mapq: "Discard reads with mapping quality < MAPQ (20)"
    base_q: "Discard bases with quality < BASEQ (30)"
    read_q: "Discard reads with mean quality < READQ (20)"
    aln_cov: "Discard reads with alignment coverage < ALN_COV (0.75)"
    trim: "Trim N base-pairs from 3'/right end of read (0)"
    discard: "Discard discordant read-pairs (False)"
    baq: "Enable BAQ: per-base alignment quality (False)"
    adjust_mq: "Adjust MAPQ (False)"
    outdir: "Path to directory to store results. \\nDirectory name should correspond to sample identifier"
  }
  output {
    File out_stdout = stdout()
  }
}