class: CommandLineTool
id: chewiesnake_join.cwl
inputs:
- id: in_sample_list
  doc: "List of allele profiles to analyze, containg a tab\nseparated file with the\
    \ columns: sender profiles\nstatistics timestamps"
  type: File?
  inputBinding:
    prefix: --sample_list
- id: in_working_directory
  doc: Working directory where results are saved
  type: Directory?
  inputBinding:
    prefix: --working_directory
- id: in_snake_file
  doc: "Path to Snakefile of chewieSnake pipeline, default is\npath to Snakefile in\
    \ same directory"
  type: File?
  inputBinding:
    prefix: --snakefile
- id: in_cond_a_prefix
  doc: "Path of default conda environment, enables recycling\nbuilt environments,\
    \ default is in folder conda_env in\nrepository directory."
  type: File?
  inputBinding:
    prefix: --condaprefix
- id: in_clustering_method
  doc: "The agglomeration method to be used for hierarchical\nclustering. This should\
    \ be (an unambiguous\nabbreviation of) one of \"ward.D\", \"ward.D2\", \"single\"\
    ,\n\"complete\", \"average\" (= UPGMA), \"mcquitty\" (= WPGMA),\n\"median\" (=\
    \ WPGMC) or \"centroid\" (= UPGMC); default =\nsingle"
  type: long?
  inputBinding:
    prefix: --clustering_method
- id: in_distance_threshold
  doc: "A single distance threshold for the exctraction of\nsub-trees; default = 10"
  type: long?
  inputBinding:
    prefix: --distance_threshold
- id: in_cluster_names
  doc: "A file with potential names for cluster names, one\nname per line, default:\n\
    repo_path/scripts/cluster_names_reservoir.txt"
  type: File?
  inputBinding:
    prefix: --cluster_names
- id: in_sub_cluster_thresholds
  doc: "A list of distance thresholds for subclustering;\ndefault = [3]"
  type: long?
  inputBinding:
    prefix: --subcluster_thresholds
- id: in_sub_cluster_names
  doc: "A list of name types for nomenclature of subclusters;\nchoose from \"numerical\"\
    \ and \"greek-alphabet\"; one\nentry for each subcluster_threshold; default =\n\
    [\"greek-alphabet\"]"
  type: string?
  inputBinding:
    prefix: --subcluster_names
- id: in_external_cluster_names
  doc: "A tab seperated file with external cluster names, e.g.\nEpi clusters. Must\
    \ contain one representative sample\nper cluster: sample<tab>cluster_name"
  type: File?
  inputBinding:
    prefix: --external_cluster_names
- id: in_serovar_info
  doc: "A tab seperated file with serovar or clade names:\nsample<tab>cluster_name"
  type: File?
  inputBinding:
    prefix: --serovar_info
- id: in_no_report
  doc: Do not create html report
  type: boolean?
  inputBinding:
    prefix: --noreport
- id: in_report_only
  doc: Only create html report
  type: boolean?
  inputBinding:
    prefix: --report_only
- id: in_cluster
  doc: Assign cluster type and cluster addresses
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_distance_method
  doc: Grapetree distance method; default = 3
  type: long?
  inputBinding:
    prefix: --distance_method
- id: in_species_short_name
  doc: "Abbreviated Species name for cluster names; default =\n\"SE\""
  type: string?
  inputBinding:
    prefix: --species_shortname
- id: in_use_cond_a
  doc: "Utilize \"--useconda\" option, i.e. all software\ndependencies are available\
    \ in a single env"
  type: boolean?
  inputBinding:
    prefix: --use_conda
- id: in_cond_a_front_end
  doc: "Do not mamba but conda as frontend to create\nindividual module' software\
    \ environments"
  type: boolean?
  inputBinding:
    prefix: --conda_frontend
- id: in_threads
  doc: "Number of Threads to use. Note that samples can only\nbe processed sequentially\
    \ due to the required database\naccess. However the allele calling can be executed\
    \ in\nparallel for the different loci, default = 10"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_dry_run
  doc: "Snakemake dryrun. Only calculate graph without\nexecuting anything"
  type: boolean?
  inputBinding:
    prefix: --dryrun
- id: in_force
  doc: Snakemake force. Force recalculation of all steps
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_force_all
  doc: Snakemake force. Force recalculation of all steps
  type: boolean?
  inputBinding:
    prefix: --forceall
- id: in_unlock
  doc: unlock snakemake
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_logdir
  doc: "Path to directory whete .snakemake output is to be\nsaved\n"
  type: File?
  inputBinding:
    prefix: --logdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_logdir
  doc: "Path to directory whete .snakemake output is to be\nsaved\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_logdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chewiesnake:3.0.0--1
cwlVersion: v1.1
baseCommand:
- chewiesnake_join
