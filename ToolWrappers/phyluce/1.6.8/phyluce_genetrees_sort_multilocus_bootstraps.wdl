version 1.0

task PhyluceGenetreesSortMultilocusBootstraps {
  input {
    Boolean? bootstrap_replicates
    Directory? input_directory_containing
    Directory? output_directory_multilocus
  }
  command <<<
    phyluce_genetrees_sort_multilocus_bootstraps \
      ~{if (bootstrap_replicates) then "--bootstrap_replicates" else ""} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(output_directory_multilocus) then ("--output " +  '"' + output_directory_multilocus + '"') else ""}
  >>>
  parameter_meta {
    bootstrap_replicates: "BOOTSTRAP_REPLICATES\\n--output OUTPUT"
    input_directory_containing: "The input directory containing bootstrap replicates\\nfor each locus"
    output_directory_multilocus: "The output directory to multi-locus bootstraps"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_multilocus = "${in_output_directory_multilocus}"
  }
}