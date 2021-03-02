version 1.0

task TaxonkitChildrensh {
  input {
    String file_tax_ids
    String out_file
    String? path_to_folder_with_taxonomy
  }
  command <<<
    taxonkit_children_sh \
      ~{file_tax_ids} \
      ~{out_file} \
      ~{path_to_folder_with_taxonomy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metabinkit:0.2.2--r40hed695b0_1"
  }
  parameter_meta {
    file_tax_ids: ""
    out_file: ""
    path_to_folder_with_taxonomy: ""
  }
  output {
    File out_stdout = stdout()
  }
}