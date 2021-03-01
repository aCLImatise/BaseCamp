version 1.0

task CreatePanGenome {
  input {
    Int? number_of_threads
    File? clusters_output_filename
    Directory? output_directory
    Boolean? create_multifasta_alignment
    Boolean? fast_core_gene
    Boolean? minimum_percentage_identity
    Float? cd
    Boolean? delete_intermediate_files
    Int? translation_table
    Boolean? verbose_output_stdout
    Boolean? add_inference_information
    Int? maximum_number_clusters
    Boolean? qc
    File? path_kraken_qc
    Boolean? print_version_exit
    Boolean? check_dependancies_versions
  }
  command <<<
    create_pan_genome \
      ~{if defined(number_of_threads) then ("-p " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(clusters_output_filename) then ("-o " +  '"' + clusters_output_filename + '"') else ""} \
      ~{if defined(output_directory) then ("-f " +  '"' + output_directory + '"') else ""} \
      ~{if (create_multifasta_alignment) then "-e" else ""} \
      ~{if (fast_core_gene) then "-n" else ""} \
      ~{if (minimum_percentage_identity) then "-i" else ""} \
      ~{if defined(cd) then ("-cd " +  '"' + cd + '"') else ""} \
      ~{if (delete_intermediate_files) then "-z" else ""} \
      ~{if defined(translation_table) then ("-t " +  '"' + translation_table + '"') else ""} \
      ~{if (verbose_output_stdout) then "-v" else ""} \
      ~{if (add_inference_information) then "-y" else ""} \
      ~{if defined(maximum_number_clusters) then ("-g " +  '"' + maximum_number_clusters + '"') else ""} \
      ~{if (qc) then "-qc" else ""} \
      ~{if defined(path_kraken_qc) then ("-k " +  '"' + path_kraken_qc + '"') else ""} \
      ~{if (print_version_exit) then "-w" else ""} \
      ~{if (check_dependancies_versions) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: "number of threads [1]"
    clusters_output_filename: "clusters output filename [clustered_proteins]"
    output_directory: "output directory [.]"
    create_multifasta_alignment: "create a multiFASTA alignment of core genes"
    fast_core_gene: "fast core gene alignement with MAFFT, use with -e"
    minimum_percentage_identity: "minimum percentage identity for blastp [95]"
    cd: "percentage of isolates a gene must be in to be core [99]"
    delete_intermediate_files: "dont delete intermediate files"
    translation_table: "translation table [11]"
    verbose_output_stdout: "verbose output to STDOUT"
    add_inference_information: "add gene inference information to spreadsheet, doesnt work with -e"
    maximum_number_clusters: "maximum number of clusters [50000]"
    qc: "generate QC report with Kraken"
    path_kraken_qc: "path to Kraken database for QC, use with -qc"
    print_version_exit: "print version and exit"
    check_dependancies_versions: "check dependancies and print versions"
  }
  output {
    File out_stdout = stdout()
    File out_clusters_output_filename = "${in_clusters_output_filename}"
    Directory out_output_directory = "${in_output_directory}"
  }
}