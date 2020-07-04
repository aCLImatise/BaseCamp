version 1.0

task PpanggolinWrite {
  input {
    String? pan_genome
    String? output_directory_written
    String? soft_core
    String? dup_margin
    Boolean? gex_f
    Boolean? light_gex_f
    Boolean? csv
    Boolean? r_tab
    Boolean? projection
    Boolean? stats
    Boolean? partitions
    Boolean? compress
    Boolean? json
    Boolean? regions
    Boolean? spots
    Boolean? borders
    Boolean? families_tsv
    Boolean? all_genes
    Boolean? all_prot_families
    Boolean? all_gene_families
    String? tmpdir
    String? verbose
    String? log
    String? cpu
    Boolean? force
  }
  command <<<
    ppanggolin write \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""} \
      ~{if defined(soft_core) then ("--soft_core " +  '"' + soft_core + '"') else ""} \
      ~{if defined(dup_margin) then ("--dup_margin " +  '"' + dup_margin + '"') else ""} \
      ~{true="--gexf" false="" gex_f} \
      ~{true="--light_gexf" false="" light_gex_f} \
      ~{true="--csv" false="" csv} \
      ~{true="--Rtab" false="" r_tab} \
      ~{true="--projection" false="" projection} \
      ~{true="--stats" false="" stats} \
      ~{true="--partitions" false="" partitions} \
      ~{true="--compress" false="" compress} \
      ~{true="--json" false="" json} \
      ~{true="--regions" false="" regions} \
      ~{true="--spots" false="" spots} \
      ~{true="--borders" false="" borders} \
      ~{true="--families_tsv" false="" families_tsv} \
      ~{true="--all_genes" false="" all_genes} \
      ~{true="--all_prot_families" false="" all_prot_families} \
      ~{true="--all_gene_families" false="" all_gene_families} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    output_directory_written: "Output directory where the file(s) will be written (default: None)"
    soft_core: "Soft core threshold to use (default: 0.95)"
    dup_margin: "minimum ratio of organisms in which the family must have multiple genes for it to be considered 'duplicated' (default: 0.05)"
    gex_f: "write a gexf file with all the annotations and all the genes of each gene family (default: False)"
    light_gex_f: "write a gexf file with the gene families and basic informations about them (default: False)"
    csv: "csv file format as used by Roary, among others. The alternative gene ID will be the partition, if there is one (default: False)"
    r_tab: "tabular file for the gene binary presence absence matrix (default: False)"
    projection: "a csv file for each organism providing informations on the projection of the graph on the organism (default: False)"
    stats: "tsv files with some statistics for each organism and for each gene family (default: False)"
    partitions: "list of families belonging to each partition, with one file per partitions and one family per line (default: False)"
    compress: "Compress the files in .gz (default: False)"
    json: "Writes the graph in a json file format (default: False)"
    regions: "Write the RGP in a tab format, one file per genome (default: False)"
    spots: "Write spot summary and a list of all rgp in each spot (default: False)"
    borders: "List all borders of each spot (default: False)"
    families_tsv: "Write a tsv file providing the association between genes and gene families (default: False)"
    all_genes: "Write all nucleotic CDS sequences (default: False)"
    all_prot_families: "Write Write representative proteic sequences of all the gene families (default: False)"
    all_gene_families: "Write representative nucleic sequences of all the gene families (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only, 1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome output file. (default: False)"
  }
}