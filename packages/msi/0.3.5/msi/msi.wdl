version 1.0

task Msi {
  input {
    File? toplevel_directory_nanopore
    Int? minimum_length_reads
    Int? maximum_length_reads
    Int? _minimum_quality
    File? _metadata_file
    Int? minimum_number_reads
    Directory? _output_folder
    File? path_blast_database
    Int? value_passed_
    Int? value_minimum_evalue
    Int? minimum_cluster_identity
    Int? maximum_number_threads
    File? file_overrides_passed
    Boolean? run_fastqc_generate
    Boolean? stop_execution_running
    Boolean? _increase_verbosity
  }
  command <<<
    msi \
      ~{if defined(toplevel_directory_nanopore) then ("-i " +  '"' + toplevel_directory_nanopore + '"') else ""} \
      ~{if defined(minimum_length_reads) then ("-m " +  '"' + minimum_length_reads + '"') else ""} \
      ~{if defined(maximum_length_reads) then ("-M " +  '"' + maximum_length_reads + '"') else ""} \
      ~{if defined(_minimum_quality) then ("-q " +  '"' + _minimum_quality + '"') else ""} \
      ~{if defined(_metadata_file) then ("-I " +  '"' + _metadata_file + '"') else ""} \
      ~{if defined(minimum_number_reads) then ("-C " +  '"' + minimum_number_reads + '"') else ""} \
      ~{if defined(_output_folder) then ("-o " +  '"' + _output_folder + '"') else ""} \
      ~{if defined(path_blast_database) then ("-b " +  '"' + path_blast_database + '"') else ""} \
      ~{if defined(value_passed_) then ("-B " +  '"' + value_passed_ + '"') else ""} \
      ~{if defined(value_minimum_evalue) then ("-E " +  '"' + value_minimum_evalue + '"') else ""} \
      ~{if defined(minimum_cluster_identity) then ("-T " +  '"' + minimum_cluster_identity + '"') else ""} \
      ~{if defined(maximum_number_threads) then ("-t " +  '"' + maximum_number_threads + '"') else ""} \
      ~{if defined(file_overrides_passed) then ("-c " +  '"' + file_overrides_passed + '"') else ""} \
      ~{if (run_fastqc_generate) then "-r" else ""} \
      ~{if (stop_execution_running) then "-S" else ""} \
      ~{if (_increase_verbosity) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  parameter_meta {
    toplevel_directory_nanopore: "- toplevel directory with the nanopore data. fastq files will be searched in $tl_dir/*.fastq.gz. It is expected one file per library/barcode."
    minimum_length_reads: "- minimum length of the reads"
    maximum_length_reads: "- maximum length of the reads"
    _minimum_quality: "- minimum quality"
    _metadata_file: "- metadata file*"
    minimum_number_reads: "- minimum number of reads that a cluster should have (Default=1)"
    _output_folder: "-  output folder"
    path_blast_database: "- path to the blast database"
    value_passed_: "- value passed to blast (minimum % id - value between 0 and 100)"
    value_minimum_evalue: "- value passed to blast (minimum e-value - value < 1)"
    minimum_cluster_identity: "minimum cluster identity (sequences with a value greater or equal are clustered together - value between 0 and 1)"
    maximum_number_threads: "- maximum number of threads"
    file_overrides_passed: "- file with default parameters values (overrides values passed in the command line)"
    run_fastqc_generate: "- run fastqc to generate qc reports for the fastq files"
    stop_execution_running: "- stop execution before running blast"
    _increase_verbosity: "- increase verbosity"
  }
  output {
    File out_stdout = stdout()
    Directory out__output_folder = "${in__output_folder}"
  }
}