version 1.0

task AnviComputeGeneClusterHomogeneity {
  input {
    String? pan_db
    String? genomes_storage
    File? output_file
    Boolean? store_in_db
    String? gene_cluster_id
    File? gene_cluster_ids_file
    String? collection_name
    String? bin_id
    Boolean? quick_homogeneity
    String? num_threads
    Boolean? just_do_it
  }
  command <<<
    anvi-compute-gene-cluster-homogeneity \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--store-in-db" false="" store_in_db} \
      ~{if defined(gene_cluster_id) then ("--gene-cluster-id " +  '"' + gene_cluster_id + '"') else ""} \
      ~{if defined(gene_cluster_ids_file) then ("--gene-cluster-ids-file " +  '"' + gene_cluster_ids_file + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(bin_id) then ("--bin-id " +  '"' + bin_id + '"') else ""} \
      ~{true="--quick-homogeneity" false="" quick_homogeneity} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{true="--just-do-it" false="" just_do_it}
  >>>
  parameter_meta {
    pan_db: "Anvi'o pan database"
    genomes_storage: "Anvi'o genomes storage file"
    output_file: "File path to store results."
    store_in_db: "Store analysis results into the database directly."
    gene_cluster_id: "Gene cluster ID you are interested in."
    gene_cluster_ids_file: "Text file for gene clusters (each line should contain be a unique gene cluster id)."
    collection_name: "Collection name."
    bin_id: "Bin name you are interested in."
    quick_homogeneity: "By default, anvi'o will use a homogeneity algorithm that checks for horizontal and vertical geometric homogeneity (along with functional). With this flag, you can tell anvi'o to skip horizontal geometric homogeneity calculations. It will be less accurate but quicker."
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    just_do_it: "Don't bother me with questions or warnings, just do it."
  }
}