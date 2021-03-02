version 1.0

task Anviscriptaugustusoutputtoexternalgenecalls {
  input {
    File? input_file
    File? output_file
    Boolean? just_do_it
    String augustus_gene_calls
    String external_gene_calls
  }
  command <<<
    anvi_script_augustus_output_to_external_gene_calls \
      ~{augustus_gene_calls} \
      ~{external_gene_calls} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    input_file: "Gene calls file from AUGUSTUS (that ends with .gff).\\nPlease note that the script is only tested with\\nAUGUSTUS v3.3.3 output (although it may still work\\nwith other versions of the program). (default: None)"
    output_file: "File path to store results. (default: None)"
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
    augustus_gene_calls: "🍕 Can provide: "
    external_gene_calls: "🍺 More on `anvi-script-augustus-output-to-external-gene-calls`:"
  }
  output {
    File out_stdout = stdout()
    File out_input_file = "${in_input_file}"
    File out_output_file = "${in_output_file}"
  }
}