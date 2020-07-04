version 1.0

task GalahCluster {
  input {
    String? ani
    String? check_m_tab_table
    String? genome_fast_a_directory
    String? genome_fast_a_extension
    String? genome_fast_a_files
    String? genome_fast_a_list
    Int? max_contamination
    Int? min_completeness
    String? pre_threshold_ani
    String? threads
  }
  command <<<
    galah cluster \
      ~{if defined(ani) then ("--ani " +  '"' + ani + '"') else ""} \
      ~{if defined(check_m_tab_table) then ("--checkm-tab-table " +  '"' + check_m_tab_table + '"') else ""} \
      ~{if defined(genome_fast_a_directory) then ("--genome-fasta-directory " +  '"' + genome_fast_a_directory + '"') else ""} \
      ~{if defined(genome_fast_a_extension) then ("--genome-fasta-extension " +  '"' + genome_fast_a_extension + '"') else ""} \
      ~{if defined(genome_fast_a_files) then ("--genome-fasta-files " +  '"' + genome_fast_a_files + '"') else ""} \
      ~{if defined(genome_fast_a_list) then ("--genome-fasta-list " +  '"' + genome_fast_a_list + '"') else ""} \
      ~{if defined(max_contamination) then ("--max-contamination " +  '"' + max_contamination + '"') else ""} \
      ~{if defined(min_completeness) then ("--min-completeness " +  '"' + min_completeness + '"') else ""} \
      ~{if defined(pre_threshold_ani) then ("--prethreshold-ani " +  '"' + pre_threshold_ani + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    ani: "Average nucleotide identity threshold for clustering [default: 99]"
    check_m_tab_table: "Output of CheckM lineage_wf/taxonomy_wf/qa with --tab_table specified"
    genome_fast_a_directory: "Directory containing fasta files for processing"
    genome_fast_a_extension: "File extension of FASTA files in --genome-fasta-directory [default: fna]"
    genome_fast_a_files: "...         List of fasta files for processing"
    genome_fast_a_list: "List of fasta file paths, one per line, for processing"
    max_contamination: "Genomes with greater than this percentage of contamination are exluded"
    min_completeness: "Genomes with less than this percentage of completeness are exluded [default: 0]"
    pre_threshold_ani: "Require at least this dashing-derived ANI for preclustering and to avoid FastANI on distant lineages within preclusters [default: 95]"
    threads: "Number of CPU threads to use [default: 1]"
  }
}