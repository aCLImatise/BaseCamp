version 1.0

task MetaWRAPClassifyBins {
  input {
    Directory? folder_bins_classified
    Directory? output_directory
    Int? number_of_threads
  }
  command <<<
    metaWRAP classify_bins \
      ~{if defined(folder_bins_classified) then ("-b " +  '"' + folder_bins_classified + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  parameter_meta {
    folder_bins_classified: "folder with the bins to be classified (in fasta format)"
    output_directory: "output directory"
    number_of_threads: "number of threads"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}