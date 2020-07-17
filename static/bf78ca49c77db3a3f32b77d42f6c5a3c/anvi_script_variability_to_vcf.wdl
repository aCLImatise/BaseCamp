version 1.0

task AnviScriptVariabilityToVcf {
  input {
    File? filepath_snv_table
    File? output_file
  }
  command <<<
    anvi-script-variability-to-vcf \
      ~{if defined(filepath_snv_table) then ("--input " +  '"' + filepath_snv_table + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    filepath_snv_table: "Filepath to the SNV table. This is the output from the anvi-gen-variability-profile program with the nucleotide engine (which is the default engine)."
    output_file: "File path to store results."
  }
}