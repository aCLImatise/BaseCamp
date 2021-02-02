version 1.0

task MobRecon {
  input {
    Directory? outdir
    File? in_file
    Int? num_threads
    String? sample_id
    Boolean? force
    File? filter_db
    String? genome_filter_db_prefix
    String? mash_genome_neighbor_threshold
    Int? max_contig_size
    Int? max_plasmid_size
    Int? min_rep_evalue
    Int? min_mob_evalue
    Int? min_con_evalue
    Int? min_rpp_evalue
    Int? min_length
    Int? min_rep_ident
    Int? min_mob_ident
    Int? min_con_ident
    Int? min_rpp_ident
    Int? min_rep_cov
    Int? min_mob_cov
    Int? min_con_cov
    Int? min_rpp_cov
    Int? min_overlap
    Boolean? unicycle_r_contigs
    Boolean? run_overhang
    Boolean? keep_tmp
    Boolean? run_type_r
    Boolean? debug
    String? plasmid_db
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
    mob_recon \
      ~{three_dot_zero_dot_zero} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(filter_db) then ("--filter_db " +  '"' + filter_db + '"') else ""} \
      ~{if defined(genome_filter_db_prefix) then ("--genome_filter_db_prefix " +  '"' + genome_filter_db_prefix + '"') else ""} \
      ~{if defined(mash_genome_neighbor_threshold) then ("--mash_genome_neighbor_threshold " +  '"' + mash_genome_neighbor_threshold + '"') else ""} \
      ~{if defined(max_contig_size) then ("--max_contig_size " +  '"' + max_contig_size + '"') else ""} \
      ~{if defined(max_plasmid_size) then ("--max_plasmid_size " +  '"' + max_plasmid_size + '"') else ""} \
      ~{if defined(min_rep_evalue) then ("--min_rep_evalue " +  '"' + min_rep_evalue + '"') else ""} \
      ~{if defined(min_mob_evalue) then ("--min_mob_evalue " +  '"' + min_mob_evalue + '"') else ""} \
      ~{if defined(min_con_evalue) then ("--min_con_evalue " +  '"' + min_con_evalue + '"') else ""} \
      ~{if defined(min_rpp_evalue) then ("--min_rpp_evalue " +  '"' + min_rpp_evalue + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_rep_ident) then ("--min_rep_ident " +  '"' + min_rep_ident + '"') else ""} \
      ~{if defined(min_mob_ident) then ("--min_mob_ident " +  '"' + min_mob_ident + '"') else ""} \
      ~{if defined(min_con_ident) then ("--min_con_ident " +  '"' + min_con_ident + '"') else ""} \
      ~{if defined(min_rpp_ident) then ("--min_rpp_ident " +  '"' + min_rpp_ident + '"') else ""} \
      ~{if defined(min_rep_cov) then ("--min_rep_cov " +  '"' + min_rep_cov + '"') else ""} \
      ~{if defined(min_mob_cov) then ("--min_mob_cov " +  '"' + min_mob_cov + '"') else ""} \
      ~{if defined(min_con_cov) then ("--min_con_cov " +  '"' + min_con_cov + '"') else ""} \
      ~{if defined(min_rpp_cov) then ("--min_rpp_cov " +  '"' + min_rpp_cov + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if (unicycle_r_contigs) then "--unicycler_contigs" else ""} \
      ~{if (run_overhang) then "--run_overhang" else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (run_type_r) then "--run_typer" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(plasmid_db) then ("--plasmid_db " +  '"' + plasmid_db + '"') else ""} \
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
  parameter_meta {
    outdir: "Output Directory to put results"
    in_file: "Input assembly fasta file to process"
    num_threads: "Number of threads to be used"
    sample_id: "Sample Prefix for reports"
    force: "Overwrite existing directory"
    filter_db: "Path to fasta file to mask sequences"
    genome_filter_db_prefix: "Prefix of mash sketch and blastdb of closed\\nchromosomes to use for auto selection of close genomes\\nfor filtering"
    mash_genome_neighbor_threshold: "Mash distance selecting valid closed genomes to filter"
    max_contig_size: "Maximum size of a contig to be considered a plasmid"
    max_plasmid_size: "Maximum size of a reconstructed plasmid"
    min_rep_evalue: "Minimum evalue threshold for replicon blastn"
    min_mob_evalue: "Minimum evalue threshold for relaxase tblastn"
    min_con_evalue: "Minimum evalue threshold for contig blastn"
    min_rpp_evalue: "Minimum evalue threshold for repetitve elements blastn"
    min_length: "Minimum length of contigs to classify"
    min_rep_ident: "Minimum sequence identity for replicons"
    min_mob_ident: "Minimum sequence identity for relaxases"
    min_con_ident: "Minimum sequence identity for contigs"
    min_rpp_ident: "Minimum sequence identity for repetitive elements"
    min_rep_cov: "Minimum percentage coverage of replicon query by input\\nassembly"
    min_mob_cov: "Minimum percentage coverage of relaxase query by input\\nassembly"
    min_con_cov: "Minimum percentage coverage of assembly contig by the\\nplasmid reference database to be considered"
    min_rpp_cov: "Minimum percentage coverage of contigs by repetitive\\nelements"
    min_overlap: "Minimum overlap of fragments"
    unicycle_r_contigs: "Check for circularity flag generated by unicycler in\\nfasta headers"
    run_overhang: "Detect circular contigs with assembly overhangs"
    keep_tmp: "Do not delete temporary file directory"
    run_type_r: "Automatically run Mob-typer on the identified plasmids"
    debug: "Show debug information"
    plasmid_db: "Reference Database of complete plasmids"
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
    Directory out_outdir = "${in_outdir}"
  }
}