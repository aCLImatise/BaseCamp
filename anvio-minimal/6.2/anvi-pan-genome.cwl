#!/usr/bin/env cwl-runner

baseCommand:
- anvi-pan-genome
class: CommandLineTool
cwlVersion: v1.0
id: anvi-pan-genome
inputs:
- doc: Anvi'o genomes storage file
  id: genomes_storage
  inputBinding:
    prefix: --genomes-storage
  type: string
- doc: Genome names to 'focus'. You can use this parameter to limit the genomes included
    in your analysis. You can provide these names as a comma-separated list of names,
    or you can put them in a file, where you have a single genome name in each line,
    and provide the file path.
  id: genome_names
  inputBinding:
    prefix: --genome-names
  type: string
- doc: By default, anvi'o attempts to align amino acid sequences in each gene cluster
    using multiple sequnce alignment via muscle. You can use this flag to skip that
    step and be upset later.
  id: skip_alignments
  inputBinding:
    prefix: --skip-alignments
  type: boolean
- doc: By default, anvi'o attempts to calculate homogeneity values for every gene
    cluster, given that they are aligned. You can use this flag to have anvi'o skip
    homogeneity calculations. Anvi'o will ignore this flag if you decide to skip alignments
  id: skip_homogeneity
  inputBinding:
    prefix: --skip-homogeneity
  type: boolean
- doc: By default, anvi'o will use a homogeneity algorithm that checks for horizontal
    and vertical geometric homogeneity (along with functional). With this flag, you
    can tell anvi'o to skip horizontal geometric homogeneity calculations. It will
    be less accurate but quicker. Anvi'o will ignore this flag if you skip homogeneity
    calculations or alignments all together.
  id: quick_homogeneity
  inputBinding:
    prefix: --quick-homogeneity
  type: boolean
- doc: The multiple sequence alignment program to use when multiple sequence alignment
    is necessary. To see all available options, use the flag `--list-aligners`.
  id: align_with
  inputBinding:
    prefix: --align-with
  type: string
- doc: By default, anvi'o includes all partial gene calls from the analysis, which,
    in some cases, may inflate the number of gene clusters identified and introduce
    extra heterogeneity within those gene clusters. Using this flag, you can request
    anvi'o to exclude partial gene calls from the analysis (whether a gene call is
    partial or not is an information that comes directly from the gene caller used
    to identify genes during the generation of the contigs database).
  id: exclude_partial_gene_calls
  inputBinding:
    prefix: --exclude-partial-gene-calls
  type: boolean
- doc: This program uses DIAMOND by default, however, if you like, you can use good
    ol' blastp from NCBI instead.
  id: use_ncbi_blast
  inputBinding:
    prefix: --use-ncbi-blast
  type: boolean
- doc: The minimum minbit value. The minbit heuristic provides a mean to set a to
    eliminate weak matches between two amino acid sequences. We learned it from ITEP
    (Benedict MN et al, doi:10.1186/1471-2164-15-8), which is a comprehensive analysis
    workflow for pangenomes, and decided to use it in the anvi'o pangenomic workflow,
    as well. Briefly, If you have two amino acid sequences, 'A' and 'B', the minbit
    is defined as 'BITSCORE(A, B) / MIN(BITSCORE(A, A), BITSCORE(B, B))'. So the minbit
    score between two sequences goes to 1 if they are very similar over the entire
    length of the 'shorter' amino acid sequence, and goes to 0 if (1) they match over
    a very short stretch compared even to the length of the shorter amino acid sequence
    or (2) the match betwen sequence identity is low. The default is 0.5.
  id: min_bit
  inputBinding:
    prefix: --minbit
  type: long
- doc: "MCL inflation parameter, that defines the sensitivity of the algorithm during\
    \ the identification of the gene clusters. More information on this parameter\
    \ and it's effect on cluster granularity is here: (http://micans.org/mcl/man/mclfaq.html#faq7.2).\
    \ The default is 2."
  id: mcl_inflation
  inputBinding:
    prefix: --mcl-inflation
  type: string
- doc: Do you not want singletons?\ You don't? Well, this parameter will help you
    get rid of them (along with doubletons, if you want). Anvi'o will remove gene
    clusters that occur less than the number you set using this parameter from the
    analysis. The default is 1, which means everything will be kept. If you want to
    remove singletons, set it to 2, if you want to remove doubletons as well, set
    it to 3, and so on.
  id: min_occurrence
  inputBinding:
    prefix: --min-occurrence
  type: string
- doc: Minimum percent identity between the two amino acid sequences for them to have
    an edge for MCL analysis. This value will be used to filter hits from Diamond
    search results. Because percent identity is not a predictor of a good match (since
    it does not communicate many other important factors such as the alignment length
    between the two sequences and its proportion to the entire length of those involved),
    we suggest you rely on 'minbit' parameter. But you know what? Maybe you shouldn't
    listen to anyone, and experiment on your own! The default is 0 percent.
  id: min_percent_identity
  inputBinding:
    prefix: --min-percent-identity
  type: string
- doc: DIAMOND sensitivity. With this flag you can instruct DIAMOND to be 'sensitive',
    rather than 'fast' during the search. It is likely the search will take remarkably
    longer. But, hey, if you are doing it for your final analysis, maybe it should
    take longer and be more accurate. This flag is only relevant if you are running
    DIAMOND.
  id: sensitive
  inputBinding:
    prefix: --sensitive
  type: boolean
- doc: Name of the project. Please choose a short but descriptive name (so anvi'o
    can use it whenever she needs to name an output file, or add a new table in a
    database, or name her first born).
  id: project_name
  inputBinding:
    prefix: --project-name
  type: string
- doc: A plain text file that contains some description about the project. You can
    use Markdwon syntax. The description text will be rendered and shown in all relevant
    interfaces, including the anvi'o interactive interface, or anvi'o summary outputs.
  id: description
  inputBinding:
    prefix: --description
  type: string
- doc: Directory path for output files
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: string
- doc: Overwrite if the output files and/or directories exist.
  id: overwrite_output_destinations
  inputBinding:
    prefix: --overwrite-output-destinations
  type: boolean
- doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: Anvi'o attempts to generate a hierarchical clustering of your gene clusters
    once it identifies them so you can use `anvi-display-pan` to play with it. But
    if you want to skip this step, this is your flag.
  id: skip_hierarchical_clustering
  inputBinding:
    prefix: --skip-hierarchical-clustering
  type: boolean
- doc: If you want anvi'o to try to generate a hierarchical clustering of your gene
    clusters even if the number of gene clusters exceeds its suggested limit for hierarchical
    clustering, you can use this flag to enforce it. Are you are a rebel of some sorts?
    Or did computers made you upset? Express your anger towards machine using this
    flag.
  id: enforce_hierarchical_clustering
  inputBinding:
    prefix: --enforce-hierarchical-clustering
  type: boolean
- doc: The distance metric for the clustering of gene clusters. If you do not use
    this flag, the default distance metric will be used for each clustering configuration
    which is "euclidean".
  id: distance
  inputBinding:
    prefix: --distance
  type: string
- doc: The same story with the `--distance`, except, the system default for this one
    is ward.
  id: linkage
  inputBinding:
    prefix: --linkage
  type: string
