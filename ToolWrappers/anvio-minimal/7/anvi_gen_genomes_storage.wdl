version 1.0

task Anvigengenomesstorage {
  input {
    File? external_genomes
    File? internal_genomes
    String? gene_caller
    File? output_file
    String analysis
    String genomes_storage_db
  }
  command <<<
    anvi_gen_genomes_storage \
      ~{analysis} \
      ~{genomes_storage_db} \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(gene_caller) then ("--gene-caller " +  '"' + gene_caller + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    external_genomes: "A two-column TAB-delimited flat text file that lists\\nanvi'o contigs databases. The first item in the header\\nline should read 'name', and the second should read\\n'contigs_db_path'. Each line in the file should\\ndescribe a single entry, where the first column is the\\nname of the genome (or MAG), and the second column is\\nthe anvi'o contigs database generated for this genome.\\n(default: None)"
    internal_genomes: "A five-column TAB-delimited flat text file. The header\\nline must contain these columns: 'name', 'bin_id',\\n'collection_id', 'profile_db_path', 'contigs_db_path'.\\nEach line should list a single entry, where 'name' can\\nbe any name to describe the anvi'o bin identified as\\n'bin_id' that is stored in a collection. (default:\\nNone)"
    gene_caller: "The gene caller to utilize. Anvi'o supports multiple\\ngene callers, and some operations (including this one)\\nrequires an explicit mentioning of which one to use.\\nThe default is 'prodigal', but it will not be enough\\nif you if you were a rebel and have used `--external-\\ngene-callers` or something. (default: None)"
    output_file: "File path to store results. (default: None)"
    analysis: "🧀 Can consume: "
    genomes_storage_db: "🍺 More on `anvi-gen-genomes-storage`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}