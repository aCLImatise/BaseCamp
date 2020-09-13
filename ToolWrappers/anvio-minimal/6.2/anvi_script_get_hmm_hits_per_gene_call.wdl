version 1.0

task Anviscriptgethmmhitspergenecall {
  input {
    String? contigs_db
    String? hmm_source
    File? output_file
    String file_path
  }
  command <<<
    anvi_script_get_hmm_hits_per_gene_call \
      ~{file_path} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(hmm_source) then ("--hmm-source " +  '"' + hmm_source + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    hmm_source: "NAME\\nUse a specific HMM source. You can use '--list-hmm-\\nsources' flag to see a list of available resources.\\nThe default is 'None'."
    output_file: "File path to store results.\\n"
    file_path: "A simple script to generate a TAB-delimited file gene caller IDs and their HMM"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}