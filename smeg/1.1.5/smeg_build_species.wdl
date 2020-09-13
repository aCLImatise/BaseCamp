version 1.0

task SmegBuildSpecies {
  input {
    Boolean? genomes_directory
    Directory? output_directory
    Boolean? file_listing_subset
    Int? number_of_threads
    Float? snp_assignment_threshold
    Int? cluster_snps_threshold
    Boolean? ignore_iterative_clustering
    Boolean? activate_automode
    Boolean? representative_genome
    Boolean? keep_roary_output
    Boolean? create_database_applicable
  }
  command <<<
    smeg build_species \
      ~{if (genomes_directory) then "-g" else ""} \
      ~{if (output_directory) then "-o" else ""} \
      ~{if (file_listing_subset) then "-l" else ""} \
      ~{if defined(number_of_threads) then ("-p " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(snp_assignment_threshold) then ("-s " +  '"' + snp_assignment_threshold + '"') else ""} \
      ~{if defined(cluster_snps_threshold) then ("-t " +  '"' + cluster_snps_threshold + '"') else ""} \
      ~{if (ignore_iterative_clustering) then "-i" else ""} \
      ~{if (activate_automode) then "-a" else ""} \
      ~{if (representative_genome) then "-r" else ""} \
      ~{if (keep_roary_output) then "-k" else ""} \
      ~{if (create_database_applicable) then "-e" else ""}
  >>>
  parameter_meta {
    genomes_directory: "Genomes directory"
    output_directory: "Output directory"
    file_listing_subset: "File listing a subset of genomes for database building\\n[default = use all genomes in 'Genomes directory']"
    number_of_threads: "Number of threads [default 4]"
    snp_assignment_threshold: "SNP assignment threshold (range 0.1 - 1) [default 0.6]"
    cluster_snps_threshold: "Cluster SNPs threshold for iterative clustering [default 50]"
    ignore_iterative_clustering: "Ignore iterative clustering"
    activate_automode: "Activate auto-mode"
    representative_genome: "Representative genome [default = auto select Rep genome]"
    keep_roary_output: "Keep Roary output [default = false]"
    create_database_applicable: "Create database ONLY applicable with Reference-based SMEG method\\n[default = generate database suitable for both de novo and ref-based methods]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}