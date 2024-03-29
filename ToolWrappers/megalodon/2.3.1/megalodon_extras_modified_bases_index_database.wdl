version 1.0

task MegalodonExtrasModifiedBasesIndexDatabase {
  input {
    Directory? megalodon_directory
    File? output_suffix
  }
  command <<<
    megalodon_extras modified_bases index_database \
      ~{if defined(megalodon_directory) then ("--megalodon-directory " +  '"' + megalodon_directory + '"') else ""} \
      ~{if defined(output_suffix) then ("--output-suffix " +  '"' + output_suffix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    megalodon_directory: "Megalodon output directory containing per-read\\nmodified bases database to be indexed. Default:\\nmegalodon_results"
    output_suffix: "Log file suffix. Default: mod_index_database\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_megalodon_directory = "${in_megalodon_directory}"
  }
}