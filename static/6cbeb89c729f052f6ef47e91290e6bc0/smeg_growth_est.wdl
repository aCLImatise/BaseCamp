version 1.0

task SmegGrowthEst {
  input {
    Boolean? reads_directory_reads
    Boolean? sample_filename_extension
    Directory? output_directory
    Boolean? species_database_directory
    Boolean? int_smeg_method
    Boolean? float_coverage_cutoff
    Boolean? int_minimum_number
    Boolean? path_file_listing
    Boolean? float_cluster_detection
    Boolean? float_samplespecific_snp
    Boolean? file_listing_reference
    Boolean? file_listing_path
    Boolean? int_max_number
    File? merge_output_tables
    Boolean? int_number_threads
  }
  command <<<
    smeg growth_est \
      ~{if (reads_directory_reads) then "-r" else ""} \
      ~{if (sample_filename_extension) then "-x" else ""} \
      ~{if (output_directory) then "-o" else ""} \
      ~{if (species_database_directory) then "-s" else ""} \
      ~{if (int_smeg_method) then "-m" else ""} \
      ~{if (float_coverage_cutoff) then "-c" else ""} \
      ~{if (int_minimum_number) then "-u" else ""} \
      ~{if (path_file_listing) then "-l" else ""} \
      ~{if (float_cluster_detection) then "-d" else ""} \
      ~{if (float_samplespecific_snp) then "-t" else ""} \
      ~{if (file_listing_reference) then "-g" else ""} \
      ~{if (file_listing_path) then "-a" else ""} \
      ~{if (int_max_number) then "-n" else ""} \
      ~{if (merge_output_tables) then "-e" else ""} \
      ~{if (int_number_threads) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reads_directory_reads: "Reads directory (single-end reads)"
    sample_filename_extension: "Sample filename extension (fq, fastq, fastq.gz) [default fastq]"
    output_directory: "Output directory"
    species_database_directory: "Species database directory"
    int_smeg_method: "INT    SMEG method (0 = de novo-based method, 1 = reference-based method) [default = 0]"
    float_coverage_cutoff: "FLOAT  Coverage cutoff (>= 0.5) [default 0.5]"
    int_minimum_number: "INT    Minimum number of SNPs to estimate growth rate [default = 100]"
    path_file_listing: "Path to file listing a subset of reads for analysis\\n[default = analyze all samples in Reads directory]"
    float_cluster_detection: "FLOAT  Cluster detection threshold (range 0.1 - 1) [default = 0.2]"
    float_samplespecific_snp: "FLOAT  Sample-specific SNP assignment threshold (range 0.1 - 1) [default = 0.6]"
    file_listing_reference: "File listing reference genomes for growth rate estimation"
    file_listing_path: "File listing FULL PATH to DESMAN-resolved strains in fasta format (core-genes)"
    int_max_number: "INT    Max number of mismatch [default = use default bowtie2 threshold]"
    merge_output_tables: "merge output tables into a single matrix file and generate heatmap"
    int_number_threads: "INT    Number of threads [default 4]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_merge_output_tables = "${in_merge_output_tables}"
  }
}