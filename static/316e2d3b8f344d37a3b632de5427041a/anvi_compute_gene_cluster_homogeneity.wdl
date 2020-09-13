version 1.0

task Anvicomputegeneclusterhomogeneity {
  input {
    String? pan_db
    File? genomes_storage
    File? output_file
    Boolean? store_in_db
    String? gene_cluster_id
    File? gene_cluster_ids_file
    String? collection_name
    String? bin_id
    Boolean? quick_homogeneity
    Int? num_threads
    Boolean? just_do_it
  }
  command <<<
    anvi_compute_gene_cluster_homogeneity \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (store_in_db) then "--store-in-db" else ""} \
      ~{if defined(gene_cluster_id) then ("--gene-cluster-id " +  '"' + gene_cluster_id + '"') else ""} \
      ~{if defined(gene_cluster_ids_file) then ("--gene-cluster-ids-file " +  '"' + gene_cluster_ids_file + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(bin_id) then ("--bin-id " +  '"' + bin_id + '"') else ""} \
      ~{if (quick_homogeneity) then "--quick-homogeneity" else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  parameter_meta {
    pan_db: "Anvi'o pan database"
    genomes_storage: "Anvi'o genomes storage file"
    output_file: "File path to store results."
    store_in_db: "Store analysis results into the database directly."
    gene_cluster_id: "Gene cluster ID you are interested in."
    gene_cluster_ids_file: "Text file for gene clusters (each line should contain\\nbe a unique gene cluster id)."
    collection_name: "Collection name."
    bin_id: "Bin name you are interested in."
    quick_homogeneity: "By default, anvi'o will use a homogeneity algorithm\\nthat checks for horizontal and vertical geometric\\nhomogeneity (along with functional). With this flag,\\nyou can tell anvi'o to skip horizontal geometric\\nhomogeneity calculations. It will be less accurate but\\nquicker."
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast."
    just_do_it: "Don't bother me with questions or warnings, just do\\nit.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}