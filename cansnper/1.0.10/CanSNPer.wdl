version 1.0

task CanSNPer {
  input {
    String? reference
    String? query
    String? db_path
    String? import_tree_file
    String? import_snp_file
    String? import_seq_file
    String? strain_name
    String? allow_differences
    Boolean? tab_sep
    Boolean? draw_tree
    String? progressive_mauve
    Boolean? list_snps
    Boolean? verbose
    Boolean? save_align
    String? num_threads
    Boolean? delete_organism
    Boolean? initialise_organism
    String? tmp_path
    Boolean? dev
    Boolean? galaxy
  }
  command <<<
    CanSNPer \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(db_path) then ("--db_path " +  '"' + db_path + '"') else ""} \
      ~{if defined(import_tree_file) then ("--import_tree_file " +  '"' + import_tree_file + '"') else ""} \
      ~{if defined(import_snp_file) then ("--import_snp_file " +  '"' + import_snp_file + '"') else ""} \
      ~{if defined(import_seq_file) then ("--import_seq_file " +  '"' + import_seq_file + '"') else ""} \
      ~{if defined(strain_name) then ("--strain_name " +  '"' + strain_name + '"') else ""} \
      ~{if defined(allow_differences) then ("--allow_differences " +  '"' + allow_differences + '"') else ""} \
      ~{true="--tab_sep" false="" tab_sep} \
      ~{true="--draw_tree" false="" draw_tree} \
      ~{if defined(progressive_mauve) then ("--progressiveMauve " +  '"' + progressive_mauve + '"') else ""} \
      ~{true="--list_snps" false="" list_snps} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--save_align" false="" save_align} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{true="-delete_organism" false="" delete_organism} \
      ~{true="-initialise_organism" false="" initialise_organism} \
      ~{if defined(tmp_path) then ("--tmp_path " +  '"' + tmp_path + '"') else ""} \
      ~{true="--dev" false="" dev} \
      ~{true="--galaxy" false="" galaxy}
  >>>
  parameter_meta {
    reference: "the name of the organism"
    query: "fasta sequence file name that is to be analysed"
    db_path: "path to CanSNPerDB.db"
    import_tree_file: "imports a tree structure into the database"
    import_snp_file: "imports a list of SNPs into the database"
    import_seq_file: "loads a sequence file into the database"
    strain_name: "the name of the strain"
    allow_differences: "allow a number of SNPs to be wrong, i.e.continue moving down the tree even if none of the SNPs of the lower level are present [0]"
    tab_sep: "print the results in a simple tab separated format"
    draw_tree: "draw a pdf version of the tree, marking SNPs of the query sequence"
    progressive_mauve: "path to progressiveMauve binary file"
    list_snps: "lists the SNPs of the given sequence"
    verbose: "prints some more information about the goings-ons of the program while running"
    save_align: "saves the alignment file"
    num_threads: "maximum number of threads CanSNPer is allowed to use, the default [0] is no limit, CanSNPer will start one process per reference genome while aligning"
    delete_organism: "deletes all information in the database concerning an organism"
    initialise_organism: "initialise a new table for an organism"
    tmp_path: "where temporary files are stored"
    dev: "dev mode"
    galaxy: "argument used if Galaxy is running CanSNPer, do NOT use."
  }
}