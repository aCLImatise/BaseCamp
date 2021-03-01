version 1.0

task PpanggolinWrite {
  input {
    File? pan_genome
    File? output_directory_be
    Float? soft_core
    Float? dup_margin
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
    Directory? tmpdir
    String? verbose
    File? log
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin write \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(output_directory_be) then ("--output " +  '"' + output_directory_be + '"') else ""} \
      ~{if defined(soft_core) then ("--soft_core " +  '"' + soft_core + '"') else ""} \
      ~{if defined(dup_margin) then ("--dup_margin " +  '"' + dup_margin + '"') else ""} \
      ~{if (gex_f) then "--gexf" else ""} \
      ~{if (light_gex_f) then "--light_gexf" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (r_tab) then "--Rtab" else ""} \
      ~{if (projection) then "--projection" else ""} \
      ~{if (stats) then "--stats" else ""} \
      ~{if (partitions) then "--partitions" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if (spots) then "--spots" else ""} \
      ~{if (borders) then "--borders" else ""} \
      ~{if (families_tsv) then "--families_tsv" else ""} \
      ~{if (all_genes) then "--all_genes" else ""} \
      ~{if (all_prot_families) then "--all_prot_families" else ""} \
      ~{if (all_gene_families) then "--all_gene_families" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    output_directory_be: "Output directory where the file(s) will be written\\n(default: None)"
    soft_core: "Soft core threshold to use (default: 0.95)"
    dup_margin: "minimum ratio of organisms in which the family must\\nhave multiple genes for it to be considered\\n'duplicated' (default: 0.05)"
    gex_f: "write a gexf file with all the annotations and all the\\ngenes of each gene family (default: False)"
    light_gex_f: "write a gexf file with the gene families and basic\\ninformations about them (default: False)"
    csv: "csv file format as used by Roary, among others. The\\nalternative gene ID will be the partition, if there is\\none (default: False)"
    r_tab: "tabular file for the gene binary presence absence\\nmatrix (default: False)"
    projection: "a csv file for each organism providing informations on\\nthe projection of the graph on the organism (default:\\nFalse)"
    stats: "tsv files with some statistics for each organism and\\nfor each gene family (default: False)"
    partitions: "list of families belonging to each partition, with one\\nfile per partitions and one family per line (default:\\nFalse)"
    compress: "Compress the files in .gz (default: False)"
    json: "Writes the graph in a json file format (default:\\nFalse)"
    regions: "Write the RGP in a tab format, one file per genome\\n(default: False)"
    spots: "Write spot summary and a list of all rgp in each spot\\n(default: False)"
    borders: "List all borders of each spot (default: False)"
    families_tsv: "Write a tsv file providing the association between\\ngenes and gene families (default: False)"
    all_genes: "Write all nucleotic CDS sequences (default: False)"
    all_prot_families: "Write Write representative proteic sequences of all\\nthe gene families (default: False)"
    all_gene_families: "Write representative nucleic sequences of all the gene\\nfamilies (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_be = "${in_output_directory_be}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}