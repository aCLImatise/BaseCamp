version 1.0

task PhyluceGenetreesSortMultilocusBootstraps {
  input {
    Directory? input_directory_containing
    File? file_containing_replicate
    Directory? output_directory_bootstraps
    String _output_output
  }
  command <<<
    phyluce_genetrees_sort_multilocus_bootstraps \
      ~{_output_output} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(file_containing_replicate) then ("--bootstrap_replicates " +  '"' + file_containing_replicate + '"') else ""} \
      ~{if defined(output_directory_bootstraps) then ("--output " +  '"' + output_directory_bootstraps + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_directory_containing: "The input directory containing bootstrap replicates\\nfor each locus"
    file_containing_replicate: "The file containing bootstrap replicate sampling"
    output_directory_bootstraps: "The output directory to multi-locus bootstraps"
    _output_output: "--output OUTPUT"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_bootstraps = "${in_output_directory_bootstraps}"
  }
}