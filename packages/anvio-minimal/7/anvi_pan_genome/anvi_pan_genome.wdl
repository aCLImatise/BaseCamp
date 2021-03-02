version 1.0

task Anvipangenome {
  input {
    File? genomes_storage
    File? genome_names
    Boolean? skip_alignments
    Boolean? skip_homogeneity
    Boolean? quick_homogeneity
    String? align_with
    Boolean? exclude_partial_gene_calls
    Boolean? use_ncbi_blast
    Int? min_bit
    Float? mcl_inflation
    Int? min_occurrence
    Int? min_percent_identity
    Boolean? sensitive
    File? project_name
    File? description
    File? output_dir
    Boolean? overwrite_output_destinations
    Int? num_threads
    Boolean? enforce_hierarchical_clustering
    String? distance
    String? linkage
    String clusters_dot
    String genomes_storage_db
  }
  command <<<
    anvi_pan_genome \
      ~{clusters_dot} \
      ~{genomes_storage_db} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(genome_names) then ("--genome-names " +  '"' + genome_names + '"') else ""} \
      ~{if (skip_alignments) then "--skip-alignments" else ""} \
      ~{if (skip_homogeneity) then "--skip-homogeneity" else ""} \
      ~{if (quick_homogeneity) then "--quick-homogeneity" else ""} \
      ~{if defined(align_with) then ("--align-with " +  '"' + align_with + '"') else ""} \
      ~{if (exclude_partial_gene_calls) then "--exclude-partial-gene-calls" else ""} \
      ~{if (use_ncbi_blast) then "--use-ncbi-blast" else ""} \
      ~{if defined(min_bit) then ("--minbit " +  '"' + min_bit + '"') else ""} \
      ~{if defined(mcl_inflation) then ("--mcl-inflation " +  '"' + mcl_inflation + '"') else ""} \
      ~{if defined(min_occurrence) then ("--min-occurrence " +  '"' + min_occurrence + '"') else ""} \
      ~{if defined(min_percent_identity) then ("--min-percent-identity " +  '"' + min_percent_identity + '"') else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if defined(project_name) then ("--project-name " +  '"' + project_name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (overwrite_output_destinations) then "--overwrite-output-destinations" else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (enforce_hierarchical_clustering) then "--enforce-hierarchical-clustering" else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    genomes_storage: "Anvi'o genomes storage file (default: None)"
    genome_names: "Genome names to 'focus'. You can use this parameter to\\nlimit the genomes included in your analysis. You can\\nprovide these names as a comma-separated list of\\nnames, or you can put them in a file, where you have a\\nsingle genome name in each line, and provide the file\\npath. (default: None)"
    skip_alignments: "By default, anvi'o attempts to align amino acid\\nsequences in each gene cluster using multiple sequnce\\nalignment via muscle. You can use this flag to skip\\nthat step and be upset later. (default: False)"
    skip_homogeneity: "By default, anvi'o attempts to calculate homogeneity\\nvalues for every gene cluster, given that they are\\naligned. You can use this flag to have anvi'o skip\\nhomogeneity calculations. Anvi'o will ignore this flag\\nif you decide to skip alignments (default: False)"
    quick_homogeneity: "By default, anvi'o will use a homogeneity algorithm\\nthat checks for horizontal and vertical geometric\\nhomogeneity (along with functional). With this flag,\\nyou can tell anvi'o to skip horizontal geometric\\nhomogeneity calculations. It will be less accurate but\\nquicker. Anvi'o will ignore this flag if you skip\\nhomogeneity calculations or alignments all together.\\n(default: False)"
    align_with: "The multiple sequence alignment program to use when\\nmultiple sequence alignment is necessary. To see all\\navailable options, use the flag `--list-aligners`.\\n(default: None)"
    exclude_partial_gene_calls: "By default, anvi'o includes all partial gene calls\\nfrom the analysis, which, in some cases, may inflate\\nthe number of gene clusters identified and introduce\\nextra heterogeneity within those gene clusters. Using\\nthis flag, you can request anvi'o to exclude partial\\ngene calls from the analysis (whether a gene call is\\npartial or not is an information that comes directly\\nfrom the gene caller used to identify genes during the\\ngeneration of the contigs database). (default: False)"
    use_ncbi_blast: "This program uses DIAMOND by default, however, if you\\nlike, you can use good ol' blastp from NCBI instead.\\n(default: False)"
    min_bit: "The minimum minbit value. The minbit heuristic\\nprovides a mean to set a to eliminate weak matches\\nbetween two amino acid sequences. We learned it from\\nITEP (Benedict MN et al, doi:10.1186/1471-2164-15-8),\\nwhich is a comprehensive analysis workflow for\\npangenomes, and decided to use it in the anvi'o\\npangenomic workflow, as well. Briefly, If you have two\\namino acid sequences, 'A' and 'B', the minbit is\\ndefined as 'BITSCORE(A, B) / MIN(BITSCORE(A, A),\\nBITSCORE(B, B))'. So the minbit score between two\\nsequences goes to 1 if they are very similar over the\\nentire length of the 'shorter' amino acid sequence,\\nand goes to 0 if (1) they match over a very short\\nstretch compared even to the length of the shorter\\namino acid sequence or (2) the match betwen sequence\\nidentity is low. The default is 0.5."
    mcl_inflation: "MCL inflation parameter, that defines the sensitivity\\nof the algorithm during the identification of the gene\\nclusters. More information on this parameter and it's\\neffect on cluster granularity is here:\\n(http://micans.org/mcl/man/mclfaq.html#faq7.2). The\\ndefault is 2."
    min_occurrence: "Do you not want singletons? You don't? Well, this\\nparameter will help you get rid of them (along with\\ndoubletons, if you want). Anvi'o will remove gene\\nclusters that occur less than the number you set using\\nthis parameter from the analysis. The default is 1,\\nwhich means everything will be kept. If you want to\\nremove singletons, set it to 2, if you want to remove\\ndoubletons as well, set it to 3, and so on."
    min_percent_identity: "Minimum percent identity between the two amino acid\\nsequences for them to have an edge for MCL analysis.\\nThis value will be used to filter hits from Diamond\\nsearch results. Because percent identity is not a\\npredictor of a good match (since it does not\\ncommunicate many other important factors such as the\\nalignment length between the two sequences and its\\nproportion to the entire length of those involved), we\\nsuggest you rely on 'minbit' parameter. But you know\\nwhat? Maybe you shouldn't listen to anyone, and\\nexperiment on your own! The default is 0 percent."
    sensitive: "DIAMOND sensitivity. With this flag you can instruct\\nDIAMOND to be 'sensitive', rather than 'fast' during\\nthe search. It is likely the search will take\\nremarkably longer. But, hey, if you are doing it for\\nyour final analysis, maybe it should take longer and\\nbe more accurate. This flag is only relevant if you\\nare running DIAMOND. (default: False)"
    project_name: "Name of the project. Please choose a short but\\ndescriptive name (so anvi'o can use it whenever she\\nneeds to name an output file, or add a new table in a\\ndatabase, or name her first born). (default: None)"
    description: "A plain text file that contains some description about\\nthe project. You can use Markdown syntax. The\\ndescription text will be rendered and shown in all\\nrelevant interfaces, including the anvi'o interactive\\ninterface, or anvi'o summary outputs. (default: None)"
    output_dir: "Directory path for output files (default: None)"
    overwrite_output_destinations: "Overwrite if the output files and/or directories\\nexist. (default: False)"
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast. (default: 1)"
    enforce_hierarchical_clustering: "If you want anvi'o to try to generate a hierarchical\\nclustering of your gene clusters even if the number of\\ngene clusters exceeds its suggested limit for\\nhierarchical clustering, you can use this flag to\\nenforce it. Are you are a rebel of some sorts? Or did\\ncomputers made you upset? Express your anger towards\\nmachine using this flag. (default: False)"
    distance: "The distance metric for the clustering of gene\\nclusters. If you do not use this flag, the default\\ndistance metric will be used for each clustering\\nconfiguration which is \\\"euclidean\\\". (default: None)"
    linkage: "The same story with the `--distance`, except, the\\nsystem default for this one is ward. (default: None)"
    clusters_dot: "--skip-hierarchical-clustering\\nAnvi'o attempts to generate a hierarchical clustering\\nof your gene clusters once it identifies them so you\\ncan use `anvi-display-pan` to play with it. But if you\\nwant to skip this step, this is your flag. (default:\\nFalse)"
    genomes_storage_db: "🍕 Can provide: "
  }
  output {
    File out_stdout = stdout()
    File out_project_name = "${in_project_name}"
    File out_output_dir = "${in_output_dir}"
  }
}