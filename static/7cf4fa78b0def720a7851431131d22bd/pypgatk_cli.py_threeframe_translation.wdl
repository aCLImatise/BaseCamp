version 1.0

task PypgatkClipyThreeframetranslation {
  input {
    String? config_file
    File? input_fast_a
    Int? translation_table
    File? output_file
  }
  command <<<
    pypgatk_cli_py threeframe_translation \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pypgatk:0.0.19--py_0"
  }
  parameter_meta {
    config_file: "Configuration to perform conversion between\\nENSEMBL Files"
    input_fast_a: "input_fasta file to perform the translation"
    translation_table: "Translation table default value 1"
    output_file: "Output File"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}