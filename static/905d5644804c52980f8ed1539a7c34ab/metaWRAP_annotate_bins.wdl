version 1.0

task MetaWRAPAnnotateBins {
  input {
    Directory? output_directory
    Int? number_threads_default
    Directory? folder_metagenomic_bins
  }
  command <<<
    metaWRAP annotate_bins \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(folder_metagenomic_bins) then ("-b " +  '"' + folder_metagenomic_bins + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory: "output directory"
    number_threads_default: "number of threads (default=1)"
    folder_metagenomic_bins: "folder with metagenomic bins in fasta format"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}