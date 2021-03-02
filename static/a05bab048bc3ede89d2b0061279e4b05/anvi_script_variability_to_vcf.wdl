version 1.0

task Anviscriptvariabilitytovcf {
  input {
    File? filepath_snv_table
    File? output_file
    String variability_profile_txt
    String vcf
  }
  command <<<
    anvi_script_variability_to_vcf \
      ~{variability_profile_txt} \
      ~{vcf} \
      ~{if defined(filepath_snv_table) then ("--input " +  '"' + filepath_snv_table + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    filepath_snv_table: "Filepath to the SNV table. This is the output from the\\nanvi-gen-variability-profile program with the\\nnucleotide engine (which is the default engine).\\n(default: None)"
    output_file: "File path to store results. (default: None)"
    variability_profile_txt: "🍕 Can provide: "
    vcf: "🍺 More on `anvi-script-variability-to-vcf`:"
  }
  output {
    File out_stdout = stdout()
    File out_filepath_snv_table = "${in_filepath_snv_table}"
    File out_output_file = "${in_output_file}"
  }
}