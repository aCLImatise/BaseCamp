version 1.0

task PhyluceGenetreesSortMultilocusBootstraps {
  input {
    Boolean? var_0
    Directory? input_directory_containing
    Directory? output_directory_multilocus
    String _output_output
  }
  command <<<
    phyluce_genetrees_sort_multilocus_bootstraps \
      ~{_output_output} \
      ~{if (var_0) then "--bootstrap_replicates" else ""} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(output_directory_multilocus) then ("--output " +  '"' + output_directory_multilocus + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    input_directory_containing: "The input directory containing bootstrap replicates\\nfor each locus"
    output_directory_multilocus: "The output directory to multi-locus bootstraps"
    _output_output: "--output OUTPUT"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_multilocus = "${in_output_directory_multilocus}"
  }
}