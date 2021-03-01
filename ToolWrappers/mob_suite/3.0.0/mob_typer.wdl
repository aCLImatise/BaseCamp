version 1.0

task MobTyper {
  input {
    File? in_file
    File? out_file
    Directory? analysis_dir
    Int? num_threads
    String? sample_id
    Boolean? force
    Boolean? multi
    Int? min_rep_evalue
    Int? min_mob_evalue
    Int? min_con_evalue
    Int? min_length
    Int? min_rep_ident
    Int? min_mob_ident
    Int? min_con_ident
    Int? min_rep_cov
    Int? min_mob_cov
    Int? min_con_cov
    Int? min_overlap
    Boolean? keep_tmp
    Boolean? debug
    String? plasmid_mash_db
    File? plasmid_meta
    String? plasmid_db_type
    String? plasmid_replicons
    String? repetitive_mask
    String? plasmid_mob
    String? plasmid_mpf
    String? plasmid_or_it
    Directory? database_directory
    Int? primary_cluster_dist
    Int? secondary_cluster_dist
    Float three_dot_zero_dot_zero
  }
  command <<<
    mob_typer \
      ~{three_dot_zero_dot_zero} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(out_file) then ("--out_file " +  '"' + out_file + '"') else ""} \
      ~{if defined(analysis_dir) then ("--analysis_dir " +  '"' + analysis_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (multi) then "--multi" else ""} \
      ~{if defined(min_rep_evalue) then ("--min_rep_evalue " +  '"' + min_rep_evalue + '"') else ""} \
      ~{if defined(min_mob_evalue) then ("--min_mob_evalue " +  '"' + min_mob_evalue + '"') else ""} \
      ~{if defined(min_con_evalue) then ("--min_con_evalue " +  '"' + min_con_evalue + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_rep_ident) then ("--min_rep_ident " +  '"' + min_rep_ident + '"') else ""} \
      ~{if defined(min_mob_ident) then ("--min_mob_ident " +  '"' + min_mob_ident + '"') else ""} \
      ~{if defined(min_con_ident) then ("--min_con_ident " +  '"' + min_con_ident + '"') else ""} \
      ~{if defined(min_rep_cov) then ("--min_rep_cov " +  '"' + min_rep_cov + '"') else ""} \
      ~{if defined(min_mob_cov) then ("--min_mob_cov " +  '"' + min_mob_cov + '"') else ""} \
      ~{if defined(min_con_cov) then ("--min_con_cov " +  '"' + min_con_cov + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(plasmid_mash_db) then ("--plasmid_mash_db " +  '"' + plasmid_mash_db + '"') else ""} \
      ~{if defined(plasmid_meta) then ("--plasmid_meta " +  '"' + plasmid_meta + '"') else ""} \
      ~{if defined(plasmid_db_type) then ("--plasmid_db_type " +  '"' + plasmid_db_type + '"') else ""} \
      ~{if defined(plasmid_replicons) then ("--plasmid_replicons " +  '"' + plasmid_replicons + '"') else ""} \
      ~{if defined(repetitive_mask) then ("--repetitive_mask " +  '"' + repetitive_mask + '"') else ""} \
      ~{if defined(plasmid_mob) then ("--plasmid_mob " +  '"' + plasmid_mob + '"') else ""} \
      ~{if defined(plasmid_mpf) then ("--plasmid_mpf " +  '"' + plasmid_mpf + '"') else ""} \
      ~{if defined(plasmid_or_it) then ("--plasmid_orit " +  '"' + plasmid_or_it + '"') else ""} \
      ~{if defined(database_directory) then ("--database_directory " +  '"' + database_directory + '"') else ""} \
      ~{if defined(primary_cluster_dist) then ("--primary_cluster_dist " +  '"' + primary_cluster_dist + '"') else ""} \
      ~{if defined(secondary_cluster_dist) then ("--secondary_cluster_dist " +  '"' + secondary_cluster_dist + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "Input assembly fasta file to process"
    out_file: "Output file to write results"
    analysis_dir: "Analysis directory"
    num_threads: "Number of threads to be used"
    sample_id: "Sample Prefix for reports"
    force: "Overwrite existing directory"
    multi: "Treat each sequence as an independant plasmid"
    min_rep_evalue: "Minimum evalue threshold for replicon blastn"
    min_mob_evalue: "Minimum evalue threshold for relaxase tblastn"
    min_con_evalue: "Minimum evalue threshold for contig blastn"
    min_length: "Minimum length of contigs to classify"
    min_rep_ident: "Minimum sequence identity for replicons"
    min_mob_ident: "Minimum sequence identity for relaxases"
    min_con_ident: "Minimum sequence identity for contigs"
    min_rep_cov: "Minimum percentage coverage of replicon query by input\\nassembly"
    min_mob_cov: "Minimum percentage coverage of relaxase query by input\\nassembly"
    min_con_cov: "Minimum percentage coverage of assembly contig by the\\nplasmid reference database to be considered"
    min_overlap: "Minimum overlap of fragments"
    keep_tmp: "Do not delete temporary file directory"
    debug: "Show debug information"
    plasmid_mash_db: "Companion Mash database of reference database"
    plasmid_meta: "MOB-cluster plasmid cluster formatted file matched to\\nthe reference plasmid db"
    plasmid_db_type: "Blast database type of reference database"
    plasmid_replicons: "Fasta of plasmid replicons"
    repetitive_mask: "Fasta of known repetitive elements"
    plasmid_mob: "Fasta of plasmid relaxases"
    plasmid_mpf: "Fasta of known plasmid mate-pair proteins"
    plasmid_or_it: "Fasta of known plasmid oriT dna sequences"
    database_directory: "Directory you want to use for your databases. If the\\ndatabases are not already downloaded, they will be\\ndownloaded automatically. Defaults to\\n/usr/local/lib/python3.8/site-\\npackages/mob_suite/databases"
    primary_cluster_dist: "Mash distance for assigning primary cluster id 0 - 1"
    secondary_cluster_dist: "Mash distance for assigning primary cluster id 0 - 1"
    three_dot_zero_dot_zero: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}