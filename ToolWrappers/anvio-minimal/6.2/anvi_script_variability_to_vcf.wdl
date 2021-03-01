version 1.0

task Anviscriptvariabilitytovcf {
  input {
    File? filepath_snv_table
    File? output_file
  }
  command <<<
    anvi_script_variability_to_vcf \
      ~{if defined(filepath_snv_table) then ("--input " +  '"' + filepath_snv_table + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filepath_snv_table: "Filepath to the SNV table. This is the output from the\\nanvi-gen-variability-profile program with the\\nnucleotide engine (which is the default engine)."
    output_file: "File path to store results.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_filepath_snv_table = "${in_filepath_snv_table}"
    File out_output_file = "${in_output_file}"
  }
}