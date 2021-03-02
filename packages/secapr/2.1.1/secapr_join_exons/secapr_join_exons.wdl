version 1.0

task SecaprJoinExons {
  input {
    Directory? directory_containing_fastaalignmentfiles
    Directory? output_directory_saved
  }
  command <<<
    secapr join_exons \
      ~{if defined(directory_containing_fastaalignmentfiles) then ("--input " +  '"' + directory_containing_fastaalignmentfiles + '"') else ""} \
      ~{if defined(output_directory_saved) then ("--output " +  '"' + output_directory_saved + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    directory_containing_fastaalignmentfiles: "The directory containing the fasta-alignment-files"
    output_directory_saved: "The output directory where results will be saved"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_saved = "${in_output_directory_saved}"
  }
}