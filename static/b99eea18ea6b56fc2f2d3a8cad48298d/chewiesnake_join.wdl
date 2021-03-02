version 1.0

task ChewiesnakeJoin {
  input {
    File? sample_list
    Directory? working_directory
    File? snake_file
    File? cond_a_prefix
    Int? clustering_method
    Int? distance_threshold
    File? cluster_names
    Int? sub_cluster_thresholds
    String? sub_cluster_names
    File? external_cluster_names
    File? serovar_info
    Boolean? no_report
    Boolean? report_only
    Boolean? cluster
    Int? distance_method
    String? species_short_name
    Boolean? use_cond_a
    Boolean? cond_a_front_end
    Int? threads
    Boolean? dry_run
    Boolean? force
    Boolean? force_all
    Boolean? unlock
    File? logdir
  }
  command <<<
    chewiesnake_join \
      ~{if defined(sample_list) then ("--sample_list " +  '"' + sample_list + '"') else ""} \
      ~{if defined(working_directory) then ("--working_directory " +  '"' + working_directory + '"') else ""} \
      ~{if defined(snake_file) then ("--snakefile " +  '"' + snake_file + '"') else ""} \
      ~{if defined(cond_a_prefix) then ("--condaprefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{if defined(clustering_method) then ("--clustering_method " +  '"' + clustering_method + '"') else ""} \
      ~{if defined(distance_threshold) then ("--distance_threshold " +  '"' + distance_threshold + '"') else ""} \
      ~{if defined(cluster_names) then ("--cluster_names " +  '"' + cluster_names + '"') else ""} \
      ~{if defined(sub_cluster_thresholds) then ("--subcluster_thresholds " +  '"' + sub_cluster_thresholds + '"') else ""} \
      ~{if defined(sub_cluster_names) then ("--subcluster_names " +  '"' + sub_cluster_names + '"') else ""} \
      ~{if defined(external_cluster_names) then ("--external_cluster_names " +  '"' + external_cluster_names + '"') else ""} \
      ~{if defined(serovar_info) then ("--serovar_info " +  '"' + serovar_info + '"') else ""} \
      ~{if (no_report) then "--noreport" else ""} \
      ~{if (report_only) then "--report_only" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(distance_method) then ("--distance_method " +  '"' + distance_method + '"') else ""} \
      ~{if defined(species_short_name) then ("--species_shortname " +  '"' + species_short_name + '"') else ""} \
      ~{if (use_cond_a) then "--use_conda" else ""} \
      ~{if (cond_a_front_end) then "--conda_frontend" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (force_all) then "--forceall" else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chewiesnake:3.0.0--1"
  }
  parameter_meta {
    sample_list: "List of allele profiles to analyze, containg a tab\\nseparated file with the columns: sender profiles\\nstatistics timestamps"
    working_directory: "Working directory where results are saved"
    snake_file: "Path to Snakefile of chewieSnake pipeline, default is\\npath to Snakefile in same directory"
    cond_a_prefix: "Path of default conda environment, enables recycling\\nbuilt environments, default is in folder conda_env in\\nrepository directory."
    clustering_method: "The agglomeration method to be used for hierarchical\\nclustering. This should be (an unambiguous\\nabbreviation of) one of \\\"ward.D\\\", \\\"ward.D2\\\", \\\"single\\\",\\n\\\"complete\\\", \\\"average\\\" (= UPGMA), \\\"mcquitty\\\" (= WPGMA),\\n\\\"median\\\" (= WPGMC) or \\\"centroid\\\" (= UPGMC); default =\\nsingle"
    distance_threshold: "A single distance threshold for the exctraction of\\nsub-trees; default = 10"
    cluster_names: "A file with potential names for cluster names, one\\nname per line, default:\\nrepo_path/scripts/cluster_names_reservoir.txt"
    sub_cluster_thresholds: "A list of distance thresholds for subclustering;\\ndefault = [3]"
    sub_cluster_names: "A list of name types for nomenclature of subclusters;\\nchoose from \\\"numerical\\\" and \\\"greek-alphabet\\\"; one\\nentry for each subcluster_threshold; default =\\n[\\\"greek-alphabet\\\"]"
    external_cluster_names: "A tab seperated file with external cluster names, e.g.\\nEpi clusters. Must contain one representative sample\\nper cluster: sample<tab>cluster_name"
    serovar_info: "A tab seperated file with serovar or clade names:\\nsample<tab>cluster_name"
    no_report: "Do not create html report"
    report_only: "Only create html report"
    cluster: "Assign cluster type and cluster addresses"
    distance_method: "Grapetree distance method; default = 3"
    species_short_name: "Abbreviated Species name for cluster names; default =\\n\\\"SE\\\""
    use_cond_a: "Utilize \\\"--useconda\\\" option, i.e. all software\\ndependencies are available in a single env"
    cond_a_front_end: "Do not mamba but conda as frontend to create\\nindividual module' software environments"
    threads: "Number of Threads to use. Note that samples can only\\nbe processed sequentially due to the required database\\naccess. However the allele calling can be executed in\\nparallel for the different loci, default = 10"
    dry_run: "Snakemake dryrun. Only calculate graph without\\nexecuting anything"
    force: "Snakemake force. Force recalculation of all steps"
    force_all: "Snakemake force. Force recalculation of all steps"
    unlock: "unlock snakemake"
    logdir: "Path to directory whete .snakemake output is to be\\nsaved\\n"
  }
  output {
    File out_stdout = stdout()
    File out_logdir = "${in_logdir}"
  }
}