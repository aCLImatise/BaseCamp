version 1.0

task CanSNPer {
  input {
    String? reference
    File? query
    File? db_path
    File? import_tree_file
    File? import_snp_file
    File? import_seq_file
    String? strain_name
    Int? allow_differences
    Boolean? tab_sep
    Boolean? draw_tree
    File? progressive_mauve
    Boolean? list_snps
    Boolean? verbose
    Boolean? save_align
    Int? num_threads
    Boolean? delete_organism
    File? tmp_path
    Boolean? dev
    Boolean? galaxy
    String organism
  }
  command <<<
    CanSNPer \
      ~{organism} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(db_path) then ("--db_path " +  '"' + db_path + '"') else ""} \
      ~{if defined(import_tree_file) then ("--import_tree_file " +  '"' + import_tree_file + '"') else ""} \
      ~{if defined(import_snp_file) then ("--import_snp_file " +  '"' + import_snp_file + '"') else ""} \
      ~{if defined(import_seq_file) then ("--import_seq_file " +  '"' + import_seq_file + '"') else ""} \
      ~{if defined(strain_name) then ("--strain_name " +  '"' + strain_name + '"') else ""} \
      ~{if defined(allow_differences) then ("--allow_differences " +  '"' + allow_differences + '"') else ""} \
      ~{if (tab_sep) then "--tab_sep" else ""} \
      ~{if (draw_tree) then "--draw_tree" else ""} \
      ~{if defined(progressive_mauve) then ("--progressiveMauve " +  '"' + progressive_mauve + '"') else ""} \
      ~{if (list_snps) then "--list_snps" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (save_align) then "--save_align" else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (delete_organism) then "-delete_organism" else ""} \
      ~{if defined(tmp_path) then ("--tmp_path " +  '"' + tmp_path + '"') else ""} \
      ~{if (dev) then "--dev" else ""} \
      ~{if (galaxy) then "--galaxy" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "the name of the organism"
    query: "fasta sequence file name that is to be analysed"
    db_path: "path to CanSNPerDB.db"
    import_tree_file: "imports a tree structure into the database"
    import_snp_file: "imports a list of SNPs into the database"
    import_seq_file: "loads a sequence file into the database"
    strain_name: "the name of the strain"
    allow_differences: "allow a number of SNPs to be wrong, i.e.continue\\nmoving down the tree even if none of the SNPs of the\\nlower level are present [0]"
    tab_sep: "print the results in a simple tab separated format"
    draw_tree: "draw a pdf version of the tree, marking SNPs of the\\nquery sequence"
    progressive_mauve: "path to progressiveMauve binary file"
    list_snps: "lists the SNPs of the given sequence"
    verbose: "prints some more information about the goings-ons of\\nthe program while running"
    save_align: "saves the alignment file"
    num_threads: "maximum number of threads CanSNPer is allowed to use,\\nthe default [0] is no limit, CanSNPer will start one\\nprocess per reference genome while aligning"
    delete_organism: "deletes all information in the database concerning an"
    tmp_path: "where temporary files are stored"
    dev: "dev mode"
    galaxy: "argument used if Galaxy is running CanSNPer, do NOT\\nuse.\\n"
    organism: "-initialise_organism  initialise a new table for an organism"
  }
  output {
    File out_stdout = stdout()
  }
}