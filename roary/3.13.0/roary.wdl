version 1.0

task Roary {
  input {
    Int? number_of_threads
    String? clusters_output_filename
    String? output_directory
    Boolean? create_multifasta_alignment
    Boolean? fast_core_gene
    Boolean? minimum_percentage_identity
    Float? cd
    Boolean? qc
    String? path_kraken_database
    Boolean? check_dependancies_versions
    String? blastp_executable
    String? mcl_executable
    String? mcxdeblast_executable
    Int? maximum_number_clusters
    String? makeblastdb_executable
    Boolean? create_r_plots
    Boolean? do_split_paralogs
    Int? translation_table
    Boolean? ap
    Boolean? delete_intermediate_files
    Boolean? verbose_output_stdout
    Boolean? print_version_exit
    Boolean? add_inference_information
    String? iv
  }
  command <<<
    roary \
      ~{if defined(number_of_threads) then ("-p " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(clusters_output_filename) then ("-o " +  '"' + clusters_output_filename + '"') else ""} \
      ~{if defined(output_directory) then ("-f " +  '"' + output_directory + '"') else ""} \
      ~{true="-e" false="" create_multifasta_alignment} \
      ~{true="-n" false="" fast_core_gene} \
      ~{true="-i" false="" minimum_percentage_identity} \
      ~{if defined(cd) then ("-cd " +  '"' + cd + '"') else ""} \
      ~{true="-qc" false="" qc} \
      ~{if defined(path_kraken_database) then ("-k " +  '"' + path_kraken_database + '"') else ""} \
      ~{true="-a" false="" check_dependancies_versions} \
      ~{if defined(blastp_executable) then ("-b " +  '"' + blastp_executable + '"') else ""} \
      ~{if defined(mcl_executable) then ("-c " +  '"' + mcl_executable + '"') else ""} \
      ~{if defined(mcxdeblast_executable) then ("-d " +  '"' + mcxdeblast_executable + '"') else ""} \
      ~{if defined(maximum_number_clusters) then ("-g " +  '"' + maximum_number_clusters + '"') else ""} \
      ~{if defined(makeblastdb_executable) then ("-m " +  '"' + makeblastdb_executable + '"') else ""} \
      ~{true="-r" false="" create_r_plots} \
      ~{true="-s" false="" do_split_paralogs} \
      ~{if defined(translation_table) then ("-t " +  '"' + translation_table + '"') else ""} \
      ~{true="-ap" false="" ap} \
      ~{true="-z" false="" delete_intermediate_files} \
      ~{true="-v" false="" verbose_output_stdout} \
      ~{true="-w" false="" print_version_exit} \
      ~{true="-y" false="" add_inference_information} \
      ~{if defined(iv) then ("-iv " +  '"' + iv + '"') else ""}
  >>>
  parameter_meta {
    number_of_threads: "number of threads [1]"
    clusters_output_filename: "clusters output filename [clustered_proteins]"
    output_directory: "output directory [.]"
    create_multifasta_alignment: "create a multiFASTA alignment of core genes using PRANK"
    fast_core_gene: "fast core gene alignment with MAFFT, use with -e"
    minimum_percentage_identity: "minimum percentage identity for blastp [95]"
    cd: "percentage of isolates a gene must be in to be core [99]"
    qc: "generate QC report with Kraken"
    path_kraken_database: "path to Kraken database for QC, use with -qc"
    check_dependancies_versions: "check dependancies and print versions"
    blastp_executable: "blastp executable [blastp]"
    mcl_executable: "mcl executable [mcl]"
    mcxdeblast_executable: "mcxdeblast executable [mcxdeblast]"
    maximum_number_clusters: "maximum number of clusters [50000]"
    makeblastdb_executable: "makeblastdb executable [makeblastdb]"
    create_r_plots: "create R plots, requires R and ggplot2"
    do_split_paralogs: "dont split paralogs"
    translation_table: "translation table [11]"
    ap: "allow paralogs in core alignment"
    delete_intermediate_files: "dont delete intermediate files"
    verbose_output_stdout: "verbose output to STDOUT"
    print_version_exit: "print version and exit"
    add_inference_information: "add gene inference information to spreadsheet, doesnt work with -e"
    iv: "Change the MCL inflation value [1.5]"
  }
}