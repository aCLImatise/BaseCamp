version 1.0

task MobCluster {
  input {
    String? mode
    String? in_file
    String? mob_type_r_file
    String? taxonomy
    String? outdir
    String? ref_cluster_file
    String? ref_fast_a_file
    String? num_threads
    String? primary_cluster_dist
    String? secondary_cluster_dist
    Boolean? debug
  }
  command <<<
    mob_cluster \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(mob_type_r_file) then ("--mob_typer_file " +  '"' + mob_type_r_file + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(ref_cluster_file) then ("--ref_cluster_file " +  '"' + ref_cluster_file + '"') else ""} \
      ~{if defined(ref_fast_a_file) then ("--ref_fasta_file " +  '"' + ref_fast_a_file + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(primary_cluster_dist) then ("--primary_cluster_dist " +  '"' + primary_cluster_dist + '"') else ""} \
      ~{if defined(secondary_cluster_dist) then ("--secondary_cluster_dist " +  '"' + secondary_cluster_dist + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    mode: "Build: Create a new database from scratch, Update: Update an existing database with one or more sequences"
    in_file: "Fasta file of sequences to cluster"
    mob_type_r_file: "MOB-typer report file for new sequences"
    taxonomy: "TSV file for new sequences with the fields \"id, organism\""
    outdir: "Output Directory to put results"
    ref_cluster_file: "Existing MOB-cluster file to add the new sequences to"
    ref_fast_a_file: "Existing MOB-cluster fasta file of sequences contained in the MOB-cluster file"
    num_threads: "Number of threads to be used"
    primary_cluster_dist: "Mash distance for assigning primary cluster id 0 - 1"
    secondary_cluster_dist: "Mash distance for assigning primary cluster id 0 - 1"
    debug: "Show debug information"
  }
}