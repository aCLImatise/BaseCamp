class: CommandLineTool
id: anvi_pan_genome.cwl
inputs:
- id: in_genomes_storage
  doc: Anvi'o genomes storage file
  type: File?
  inputBinding:
    prefix: --genomes-storage
- id: in_genome_names
  doc: "Genome names to 'focus'. You can use this parameter to\nlimit the genomes\
    \ included in your analysis. You can\nprovide these names as a comma-separated\
    \ list of\nnames, or you can put them in a file, where you have a\nsingle genome\
    \ name in each line, and provide the file\npath."
  type: File?
  inputBinding:
    prefix: --genome-names
- id: in_skip_alignments
  doc: "By default, anvi'o attempts to align amino acid\nsequences in each gene cluster\
    \ using multiple sequnce\nalignment via muscle. You can use this flag to skip\n\
    that step and be upset later."
  type: boolean?
  inputBinding:
    prefix: --skip-alignments
- id: in_skip_homogeneity
  doc: "By default, anvi'o attempts to calculate homogeneity\nvalues for every gene\
    \ cluster, given that they are\naligned. You can use this flag to have anvi'o\
    \ skip\nhomogeneity calculations. Anvi'o will ignore this flag\nif you decide\
    \ to skip alignments"
  type: boolean?
  inputBinding:
    prefix: --skip-homogeneity
- id: in_quick_homogeneity
  doc: "By default, anvi'o will use a homogeneity algorithm\nthat checks for horizontal\
    \ and vertical geometric\nhomogeneity (along with functional). With this flag,\n\
    you can tell anvi'o to skip horizontal geometric\nhomogeneity calculations. It\
    \ will be less accurate but\nquicker. Anvi'o will ignore this flag if you skip\n\
    homogeneity calculations or alignments all together."
  type: boolean?
  inputBinding:
    prefix: --quick-homogeneity
- id: in_align_with
  doc: "The multiple sequence alignment program to use when\nmultiple sequence alignment\
    \ is necessary. To see all\navailable options, use the flag `--list-aligners`."
  type: string?
  inputBinding:
    prefix: --align-with
- id: in_exclude_partial_gene_calls
  doc: "By default, anvi'o includes all partial gene calls\nfrom the analysis, which,\
    \ in some cases, may inflate\nthe number of gene clusters identified and introduce\n\
    extra heterogeneity within those gene clusters. Using\nthis flag, you can request\
    \ anvi'o to exclude partial\ngene calls from the analysis (whether a gene call\
    \ is\npartial or not is an information that comes directly\nfrom the gene caller\
    \ used to identify genes during the\ngeneration of the contigs database)."
  type: boolean?
  inputBinding:
    prefix: --exclude-partial-gene-calls
- id: in_use_ncbi_blast
  doc: "This program uses DIAMOND by default, however, if you\nlike, you can use good\
    \ ol' blastp from NCBI instead."
  type: boolean?
  inputBinding:
    prefix: --use-ncbi-blast
- id: in_min_bit
  doc: "The minimum minbit value. The minbit heuristic\nprovides a mean to set a to\
    \ eliminate weak matches\nbetween two amino acid sequences. We learned it from\n\
    ITEP (Benedict MN et al, doi:10.1186/1471-2164-15-8),\nwhich is a comprehensive\
    \ analysis workflow for\npangenomes, and decided to use it in the anvi'o\npangenomic\
    \ workflow, as well. Briefly, If you have two\namino acid sequences, 'A' and 'B',\
    \ the minbit is\ndefined as 'BITSCORE(A, B) / MIN(BITSCORE(A, A),\nBITSCORE(B,\
    \ B))'. So the minbit score between two\nsequences goes to 1 if they are very\
    \ similar over the\nentire length of the 'shorter' amino acid sequence,\nand goes\
    \ to 0 if (1) they match over a very short\nstretch compared even to the length\
    \ of the shorter\namino acid sequence or (2) the match betwen sequence\nidentity\
    \ is low. The default is 0.5."
  type: long?
  inputBinding:
    prefix: --minbit
- id: in_mcl_inflation
  doc: "MCL inflation parameter, that defines the sensitivity\nof the algorithm during\
    \ the identification of the gene\nclusters. More information on this parameter\
    \ and it's\neffect on cluster granularity is here:\n(http://micans.org/mcl/man/mclfaq.html#faq7.2).\
    \ The\ndefault is 2."
  type: double?
  inputBinding:
    prefix: --mcl-inflation
- id: in_min_occurrence
  doc: "Do you not want singletons?\\ You don't? Well, this\nparameter will help you\
    \ get rid of them (along with\ndoubletons, if you want). Anvi'o will remove gene\n\
    clusters that occur less than the number you set using\nthis parameter from the\
    \ analysis. The default is 1,\nwhich means everything will be kept. If you want\
    \ to\nremove singletons, set it to 2, if you want to remove\ndoubletons as well,\
    \ set it to 3, and so on."
  type: long?
  inputBinding:
    prefix: --min-occurrence
- id: in_min_percent_identity
  doc: "Minimum percent identity between the two amino acid\nsequences for them to\
    \ have an edge for MCL analysis.\nThis value will be used to filter hits from\
    \ Diamond\nsearch results. Because percent identity is not a\npredictor of a good\
    \ match (since it does not\ncommunicate many other important factors such as the\n\
    alignment length between the two sequences and its\nproportion to the entire length\
    \ of those involved), we\nsuggest you rely on 'minbit' parameter. But you know\n\
    what? Maybe you shouldn't listen to anyone, and\nexperiment on your own! The default\
    \ is 0 percent."
  type: long?
  inputBinding:
    prefix: --min-percent-identity
- id: in_sensitive
  doc: "DIAMOND sensitivity. With this flag you can instruct\nDIAMOND to be 'sensitive',\
    \ rather than 'fast' during\nthe search. It is likely the search will take\nremarkably\
    \ longer. But, hey, if you are doing it for\nyour final analysis, maybe it should\
    \ take longer and\nbe more accurate. This flag is only relevant if you\nare running\
    \ DIAMOND."
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_project_name
  doc: "Name of the project. Please choose a short but\ndescriptive name (so anvi'o\
    \ can use it whenever she\nneeds to name an output file, or add a new table in\
    \ a\ndatabase, or name her first born)."
  type: File?
  inputBinding:
    prefix: --project-name
- id: in_description
  doc: "A plain text file that contains some description about\nthe project. You can\
    \ use Markdwon syntax. The\ndescription text will be rendered and shown in all\n\
    relevant interfaces, including the anvi'o interactive\ninterface, or anvi'o summary\
    \ outputs."
  type: File?
  inputBinding:
    prefix: --description
- id: in_output_dir
  doc: Directory path for output files
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_overwrite_output_destinations
  doc: "Overwrite if the output files and/or directories\nexist."
  type: boolean?
  inputBinding:
    prefix: --overwrite-output-destinations
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast."
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_enforce_hierarchical_clustering
  doc: "If you want anvi'o to try to generate a hierarchical\nclustering of your gene\
    \ clusters even if the number of\ngene clusters exceeds its suggested limit for\n\
    hierarchical clustering, you can use this flag to\nenforce it. Are you are a rebel\
    \ of some sorts? Or did\ncomputers made you upset? Express your anger towards\n\
    machine using this flag."
  type: boolean?
  inputBinding:
    prefix: --enforce-hierarchical-clustering
- id: in_distance
  doc: "The distance metric for the clustering of gene\nclusters. If you do not use\
    \ this flag, the default\ndistance metric will be used for each clustering\nconfiguration\
    \ which is \"euclidean\"."
  type: string?
  inputBinding:
    prefix: --distance
- id: in_linkage
  doc: "The same story with the `--distance`, except, the\nsystem default for this\
    \ one is ward.\n"
  type: string?
  inputBinding:
    prefix: --linkage
- id: in_clusters_dot
  doc: "--skip-hierarchical-clustering\nAnvi'o attempts to generate a hierarchical\
    \ clustering\nof your gene clusters once it identifies them so you\ncan use `anvi-display-pan`\
    \ to play with it. But if you\nwant to skip this step, this is your flag."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_project_name
  doc: "Name of the project. Please choose a short but\ndescriptive name (so anvi'o\
    \ can use it whenever she\nneeds to name an output file, or add a new table in\
    \ a\ndatabase, or name her first born)."
  type: File?
  outputBinding:
    glob: $(inputs.in_project_name)
- id: out_output_dir
  doc: Directory path for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-pan-genome
