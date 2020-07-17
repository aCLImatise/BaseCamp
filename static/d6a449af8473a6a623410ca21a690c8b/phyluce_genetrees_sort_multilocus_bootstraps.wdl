version 1.0

task PhyluceGenetreesSortMultilocusBootstraps {
  input {
    String? input_directory_containing
    String? bootstrap_replicates
    String? output_directory_multilocus
  }
  command <<<
    phyluce_genetrees_sort_multilocus_bootstraps \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(bootstrap_replicates) then ("--bootstrap_replicates " +  '"' + bootstrap_replicates + '"') else ""} \
      ~{if defined(output_directory_multilocus) then ("--output " +  '"' + output_directory_multilocus + '"') else ""}
  >>>
  parameter_meta {
    input_directory_containing: "The input directory containing bootstrap replicates for each locus"
    bootstrap_replicates: "The file containing bootstrap replicate sampling"
    output_directory_multilocus: "The output directory to multi-locus bootstraps"
  }
}