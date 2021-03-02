version 1.0

task Anviscriptgenhmmhitsmatrixacrossgenomes {
  input {
    File? external_genomes
    File? internal_genomes
    String? hmm_source
    Boolean? list_hmm_sources
    File? output_file
  }
  command <<<
    anvi_script_gen_hmm_hits_matrix_across_genomes \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(hmm_source) then ("--hmm-source " +  '"' + hmm_source + '"') else ""} \
      ~{if (list_hmm_sources) then "--list-hmm-sources" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    external_genomes: "A two-column TAB-delimited flat text file that lists\\nanvi'o contigs databases. The first item in the header\\nline should read 'name', and the second should read\\n'contigs_db_path'. Each line in the file should\\ndescribe a single entry, where the first column is the\\nname of the genome (or MAG), and the second column is\\nthe anvi'o contigs database generated for this genome."
    internal_genomes: "A five-column TAB-delimited flat text file. The header\\nline must contain these columns: 'name', 'bin_id',\\n'collection_id', 'profile_db_path', 'contigs_db_path'.\\nEach line should list a single entry, where 'name' can\\nbe any name to describe the anvi'o bin identified as\\n'bin_id' that is stored in a collection."
    hmm_source: "NAME\\nUse a specific HMM source. You can use '--list-hmm-\\nsources' flag to see a list of available resources.\\nThe default is 'None'."
    list_hmm_sources: "List available HMM sources in the contigs database and\\nquit."
    output_file: "File path to store results.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}