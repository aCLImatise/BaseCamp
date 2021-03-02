version 1.0

task BismarkGenomePreparation {
  input {
    Boolean? verbose
    Boolean? path_to_aligner
    Boolean? bowtie_two
    Boolean? his_at_two
    Int? parallel
    Boolean? single_fast_a
    Boolean? genomic_composition
    Boolean? slam
    Boolean? large_index
    String arguments
  }
  command <<<
    bismark_genome_preparation \
      ~{arguments} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (path_to_aligner) then "--path_to_aligner" else ""} \
      ~{if (bowtie_two) then "--bowtie2" else ""} \
      ~{if (his_at_two) then "--hisat2" else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if (single_fast_a) then "--single_fasta" else ""} \
      ~{if (genomic_composition) then "--genomic_composition" else ""} \
      ~{if (slam) then "--slam" else ""} \
      ~{if (large_index) then "--large-index" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print verbose output for more details or debugging."
    path_to_aligner: "</../> The full path to the Bowtie 2 or HISAT2 installation folder on your system\\n(depending on which aligner/indexer you intend to use; please note that this\\nis the folder and not any executable). Unless this path is specified, it is\\nassumed that the aligner in question (Bowtie 2/HISAT2) is in the PATH."
    bowtie_two: "This will create bisulfite indexes for use with Bowtie 2. Recommended for most bisulfite\\nsequencing applications (Default: ON)."
    his_at_two: "This will create bisulfite indexes for use with HISAT2. At the time of writing, this is\\nstill unchartered territory, and only recommended for specialist applications such as\\nRNA-methylation analyses or SLAM-seq type applications (see also: --slam). (Default: OFF)."
    parallel: "Use several threads for each indexing process to speed up the genome preparation step.\\nRemember that the indexing is run twice in parallel already (for the top and bottom strand\\nseparately), so e.g. '--parallel 4' will use 8 threads in total. Please also see --large-index\\nfor parallel processing of VERY LARGE genomes (e.g. the axolotl)"
    single_fast_a: "Instruct the Bismark Indexer to write the converted genomes into\\nsingle-entry FastA files instead of making one multi-FastA file (MFA)\\nper chromosome. This might be useful if individual bisulfite converted\\nchromosomes are needed (e.g. for debugging), however it can cause a\\nproblem with indexing if the number of chromosomes is vast (this is likely\\nto be in the range of several thousand files; the operating system can\\nonly handle lists up to a certain length, and some newly assembled\\ngenomes may contain 20000-500000 contigs of scaffold files which do exceed\\nthis list length limit)."
    genomic_composition: "Calculate and extract the genomic sequence composition for mono and di-nucleotides\\nand write the genomic composition table 'genomic_nucleotide_frequencies.txt' to the\\ngenome folder. This may be useful later on when using bam2nuc or the Bismark option\\n--nucleotide_coverage."
    slam: "Instead of performing an in-silico bisulfite conversion, this mode transforms T to C (forward strand),\\nor A to G (reverse strand). The folder structure and rest of the indexing process is currently\\nexactly the same as for bisulfite sequences, but this might change at some point. This means\\nthat a genome prepared in --slam mode is currently indistinguishable from a true Bisulfite Genome,\\nso please make sure you name the genome folder appropriately to avoid confusion."
    large_index: "Force generated index to be 'large', even if reference has fewer than 4 billion nucleotides. At the time\\nof writing this is required for parallel processing of VERY LARGE genomes (e.g. the axolotl)"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}