version 1.0

task MegalodonExtrasVariantsIndexDatabase {
  input {
    Directory? megalodon_directory
    File? output_suffix
  }
  command <<<
    megalodon_extras variants index_database \
      ~{if defined(megalodon_directory) then ("--megalodon-directory " +  '"' + megalodon_directory + '"') else ""} \
      ~{if defined(output_suffix) then ("--output-suffix " +  '"' + output_suffix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    megalodon_directory: "Megalodon output directory containing per-read variant\\ndatabase to be indexed. Default: megalodon_results"
    output_suffix: "Log file suffix. Default: var_index_database\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_megalodon_directory = "${in_megalodon_directory}"
  }
}