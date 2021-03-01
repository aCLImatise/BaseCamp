version 1.0

task KmerAnalysispl {
  input {
    Boolean? file_for_processing
    Boolean? working_directory
    Directory? output_directory
    Boolean? kmer_length_search
    Boolean? file_type_either
    Boolean? man
  }
  command <<<
    kmer_analysis_pl \
      ~{if (file_for_processing) then "-f" else ""} \
      ~{if (working_directory) then "-d" else ""} \
      ~{if (output_directory) then "-o" else ""} \
      ~{if (kmer_length_search) then "-k" else ""} \
      ~{if (file_type_either) then "-t" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_for_processing: "File for processing"
    working_directory: "Working directory"
    output_directory: "Output directory"
    kmer_length_search: "Kmer length to search"
    file_type_either: "File type, can either be fasta or fastq"
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}