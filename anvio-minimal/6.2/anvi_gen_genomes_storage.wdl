version 1.0

task AnviGenGenomesStorage {
  input {
    File? external_genomes
    File? internal_genomes
    String? gene_caller
    String? output_file
  }
  command <<<
    anvi-gen-genomes-storage \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(gene_caller) then ("--gene-caller " +  '"' + gene_caller + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    external_genomes: "A two-column TAB-delimited flat text file that lists anvi'o contigs databases. The first item in the header line should read 'name', and the second should read 'contigs_db_path'. Each line in the file should describe a single entry, where the first column is the name of the genome (or MAG), and the second column is the anvi'o contigs database generated for this genome."
    internal_genomes: "A five-column TAB-delimited flat text file. The header line must contain these columns: 'name', 'bin_id', 'collection_id', 'profile_db_path', 'contigs_db_path'. Each line should list a single entry, where 'name' can be any name to describe the anvi'o bin identified as 'bin_id' that is stored in a collection."
    gene_caller: "The gene caller to utilize. Anvi'o supports multiple gene callers, and some operations (including this one) requires an explicit mentioning of which one to use. The default is 'prodigal', but it will not be enough if you if you were a rebel and have used `--external- gene-callers` or something."
    output_file: "File path to store results."
  }
}