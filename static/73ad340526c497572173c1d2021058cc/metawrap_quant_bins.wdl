version 1.0

task MetawrapQuantBins {
  input {
    Directory? folder_containing_draft
    Directory? output_directory
    File? fasta_file_recommended
    Int? number_of_threads
    Int? reads_x_one_dot_fast_q
    Int? reads_x_two_dot_fast_q
  }
  command <<<
    metawrap quant_bins \
      ~{reads_x_one_dot_fast_q} \
      ~{reads_x_two_dot_fast_q} \
      ~{if defined(folder_containing_draft) then ("-b " +  '"' + folder_containing_draft + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(fasta_file_recommended) then ("-a " +  '"' + fasta_file_recommended + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    folder_containing_draft: "folder containing draft genomes (bins) in fasta format"
    output_directory: "output directory"
    fasta_file_recommended: "fasta file with entire metagenomic assembly (strongly recommended!)"
    number_of_threads: "number of threads"
    reads_x_one_dot_fast_q: ""
    reads_x_two_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}