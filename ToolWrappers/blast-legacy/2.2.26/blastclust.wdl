version 1.0

task Blastclust {
  input {
    Boolean? fasta_input_file
    Boolean? number_use_default
    File? output_file_list
    Boolean? length_coverage_threshold
    Boolean? score_coverage_threshold
    Boolean? require_coverage_default
    File? file_save_neighbours
    Boolean? file_restore_neighbors
    Boolean? input_database_optional
    File? print_progress_default
    Boolean? complete_unfinished_clustering
    Boolean? restrict_reclustering_optional
    Boolean? input_proteins_default
    Boolean? enable_i_d
    Boolean? configuration_file_advanced
    Boolean? word_size_use
  }
  command <<<
    blastclust \
      ~{if (fasta_input_file) then "-i" else ""} \
      ~{if (number_use_default) then "-a" else ""} \
      ~{if (output_file_list) then "-o" else ""} \
      ~{if (length_coverage_threshold) then "-L" else ""} \
      ~{if (score_coverage_threshold) then "-S" else ""} \
      ~{if (require_coverage_default) then "-b" else ""} \
      ~{if (file_save_neighbours) then "-s" else ""} \
      ~{if (file_restore_neighbors) then "-r" else ""} \
      ~{if (input_database_optional) then "-d" else ""} \
      ~{if (print_progress_default) then "-v" else ""} \
      ~{if (complete_unfinished_clustering) then "-C" else ""} \
      ~{if (restrict_reclustering_optional) then "-l" else ""} \
      ~{if (input_proteins_default) then "-p" else ""} \
      ~{if (enable_i_d) then "-e" else ""} \
      ~{if (configuration_file_advanced) then "-c" else ""} \
      ~{if (word_size_use) then "-W" else ""}
  >>>
  parameter_meta {
    fasta_input_file: "FASTA input file (program will format the database and remove files in the end) [File In]\\ndefault = stdin"
    number_use_default: "Number of CPU's to use [Integer]\\ndefault = 1"
    output_file_list: "Output file for list of clusters [File Out]\\ndefault = stdout"
    length_coverage_threshold: "Length coverage threshold [Real]\\ndefault = 0.9"
    score_coverage_threshold: "Score coverage threshold (bit score / length if < 3.0, percentage of identities otherwise) [Real]\\ndefault = 1.75"
    require_coverage_default: "Require coverage on both neighbours? [T/F]\\ndefault = TRUE"
    file_save_neighbours: "File to save all neighbours [File Out]  Optional"
    file_restore_neighbors: "File to restore neighbors for reclustering [File In]  Optional"
    input_database_optional: "Input as a database [File In]  Optional"
    print_progress_default: "Print progress messages (verbose mode) [File Out]\\ndefault = stdout"
    complete_unfinished_clustering: "Complete unfinished clustering [T/F]\\ndefault = FALSE"
    restrict_reclustering_optional: "Restrict reclustering to id list [File In]  Optional"
    input_proteins_default: "Is input proteins? [T/F]\\ndefault = TRUE"
    enable_i_d: "Enable id parsing in database formatting? [T/F]\\ndefault = TRUE"
    configuration_file_advanced: "Configuration file with advanced options [File In]  Optional"
    word_size_use: "Word size to use (0 for default: proteins 3, nucleotides 32) [Integer]\\ndefault = 0\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_list = "${in_output_file_list}"
    File out_file_save_neighbours = "${in_file_save_neighbours}"
    File out_print_progress_default = "${in_print_progress_default}"
  }
}