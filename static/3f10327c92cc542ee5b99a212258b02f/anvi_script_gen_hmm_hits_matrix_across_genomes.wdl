version 1.0

task AnviScriptGenHmmHitsMatrixAcrossGenomes {
  input {
    File? external_genomes
    File? internal_genomes
    String? hmm_source
    Boolean? list_hmm_sources
    File? output_file
  }
  command <<<
    anvi-script-gen-hmm-hits-matrix-across-genomes \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(hmm_source) then ("--hmm-source " +  '"' + hmm_source + '"') else ""} \
      ~{true="--list-hmm-sources" false="" list_hmm_sources} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    external_genomes: "A two-column TAB-delimited flat text file that lists anvi'o contigs databases. The first item in the header line should read 'name', and the second should read 'contigs_db_path'. Each line in the file should describe a single entry, where the first column is the name of the genome (or MAG), and the second column is the anvi'o contigs database generated for this genome."
    internal_genomes: "A five-column TAB-delimited flat text file. The header line must contain these columns: 'name', 'bin_id', 'collection_id', 'profile_db_path', 'contigs_db_path'. Each line should list a single entry, where 'name' can be any name to describe the anvi'o bin identified as 'bin_id' that is stored in a collection."
    hmm_source: "NAME Use a specific HMM source. You can use '--list-hmm- sources' flag to see a list of available resources. The default is 'None'."
    list_hmm_sources: "List available HMM sources in the contigs database and quit."
    output_file: "File path to store results."
  }
}