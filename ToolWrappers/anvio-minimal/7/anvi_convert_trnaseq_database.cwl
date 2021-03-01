class: CommandLineTool
id: anvi_convert_trnaseq_database.cwl
inputs:
- id: in_project_name
  doc: "Name of the project. Please choose a short but\ndescriptive name (so anvi'o\
    \ can use it whenever she\nneeds to name an output file, or add a new table in\
    \ a\ndatabase, or name her first born). (default: None)"
  type: File?
  inputBinding:
    prefix: --project-name
- id: in_max_reported_trna_seeds
  doc: "This parameter limits the number of tRNA seed\nsequences reported in the contigs\
    \ database, as anvi-\ninteractive can have trouble displaying large numbers\n\
    of items. To remove the limit on reported seeds,\nspecify a value of -1. (default:\
    \ 10000)"
  type: long?
  inputBinding:
    prefix: --max-reported-trna-seeds
- id: in_overwrite_output_destinations
  doc: "Overwrite if the output files and/or directories\nexist. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --overwrite-output-destinations
- id: in_description
  doc: "A plain text file that contains some description about\nthe project. You can\
    \ use Markdown syntax. The\ndescription text will be rendered and shown in all\n\
    relevant interfaces, including the anvi'o interactive\ninterface, or anvi'o summary\
    \ outputs. (default: None)"
  type: File?
  inputBinding:
    prefix: --description
- id: in_feature_threshold
  doc: "This option prevents formation of tRNA seed sequences\nfrom input sequences\
    \ that did not reach the threshold\nfeature in anvi-trnaseq profiling from the\
    \ 3' end. The\nmore stringent the threshold, the fewer spurious seeds\nare formed\
    \ from rare chimeric and other inaccurate\ntRNA predictions. The most stringent\
    \ threshold is\n\"acceptor_stem\", the most 5' feature, resulting in\nseeds formed\
    \ only from tRNAs with a complete feature\nset (with the exception of the extra\
    \ 5'-G in tRNA-\nHis). (default: anticodon_loop)"
  type: string?
  inputBinding:
    prefix: --feature-threshold
- id: in_preferred_treatment
  doc: "tRNA-seq databases recorded as employing the preferred\ntreatment are given\
    \ preference in setting nucleotides\nat predicted modification positions in tRNA\
    \ seed\nsequences. By default, equal preference is given to\nall of the input\
    \ databases. The reason for this\nparameter is that paired untreated and enzymatically\n\
    treated splits can assist in the identification of\nunderlying modified nucleotides.\
    \ For example, splits\ntreated with a demethylase can be compared to\nuntreated\
    \ splits to probe which nucleotides are\nmethylated. (default: None)"
  type: string?
  inputBinding:
    prefix: --preferred-treatment
- id: in_nonspecific_output
  doc: "A significant fraction of tRNA-seq reads can be from\ntRNA fragments. These\
    \ can be real biomolecules or\nartifactual 3' fragments produced as a result of\n\
    incomplete reverse transcription of the tRNA template\nto cDNA. Rather than randomly\
    \ assigning fragments to a\nsingle target, as in metagenomic read recruitment\
    \ by\nBowtie, anvi-trnaseq tracks all of the longer\nsequences containing each\
    \ fragment. This results in\ntwo categories of coverage: 'specific' for reads\
    \ that\nare only found in one seed and 'nonspecific' for reads\nfound in multiple\
    \ seeds. Specific coverages are always\nreported in a separate profile database.\
    \ Nonspecific\ncoverages can be reported in three types of database,\nas specified\
    \ by this parameter. 'nonspecific_db'\nproduces a profile database only containing\n\
    nonspecific coverages. 'combined_db' produces a\ndatabase containing separate\
    \ specific and nonspecific\nlayers. 'summed_db' produces a database containing\n\
    summed specific and nonspecific coverages. To produce\nmultiple types of databases,\
    \ separate the database\ntypes with commas (no spaces). For example, all three\n\
    databases are produced with the argument,\n'nonspecific_db,combined_db,summed_db'.\
    \ (default:\nnonspecific_db,combined_db)"
  type: long?
  inputBinding:
    prefix: --nonspecific-output
- id: in_min_variation
  doc: "When more than 2 nucleotides are found at a position\nin a tRNA, a modification-induced\
    \ mutation\n(substitution) is considered rather than a single\nnucleotide variant.\
    \ This parameter sets a key\ncriterion for the prediction of a modification, the\n\
    minimum fraction of specific coverage at a position\nwith more than 2 nucleotides\
    \ that must be contributed\nby nucleotides beside the most abundant nucleotide.\n\
    For example, if A, C, and G are found at position 20\nof a tRNA, and A is represented\
    \ by 95 reads, C by 3\nreads, and G by 1 read, then with a parameter value of\n\
    0.05, the site would be 1 C, G, or T short of meeting\nthe threshold for prediction\
    \ of a modification.\n(default: 0.01)"
  type: double?
  inputBinding:
    prefix: --min-variation
- id: in_min_third_fourth_nt
  doc: "This parameter sets a key criterion for the prediction\nof a modification,\
    \ the minimum fraction of specific\ncoverage at a position with more than 2 nucleotides\n\
    that must be contributed by nucleotides beside the 2\nmost abundant nucleotides.\
    \ Unlike --min-variation,\nthis criterion only needs to be met for 1 sample to\n\
    permit modification of the position in all samples of\nthe experiment. For example,\
    \ consider an experiment\nwith 2 samples and a parameter value of 0.01. In\nSample\
    \ 1, A, C, and G are found at position 20 of a\ntRNA, and A is represented by\
    \ 95 reads, C by 4 reads,\nand G by 1 read. The default parameter value of 0.01\n\
    is exactly met at the position thanks to G. In Sample\n2, A, C, G, and T are found\
    \ at position 20 of the same\ntRNA seed, and A is represented by 1000 reads, C\
    \ by\n100 reads, G by 2 reads, and T by 2 reads. The third\nand fourth nucleotides\
    \ don't meet the coverage\nthreshold of 0.01, but this is irrelevant for calling\n\
    the modification, since Sample 1 met the criterion.\nThere is an important consideration\
    \ due to the way\nthis threshold is currently imposed. Potential\nmodification\
    \ sites that do not meet the threshold are\nnot treated like single nucleotide\
    \ variants in anvi-\ntrnaseq: they do not cause the seed sequence to be\nsplit\
    \ such that no seed contains a variant that was\nnot deemed to be a modification.\
    \ Rather, candidate\nmodification positions that do not meet this threshold\n\
    are retained in the seed BUT NOT REPORTED. Therefore,\nwe recommend rerunning\
    \ this command with a parameter\nvalue of 0 to inspect seeds for undisplayed variants\n\
    (possible SNVs) with a low level of third and fourth\nnucleotides. (default: 0.002)"
  type: double?
  inputBinding:
    prefix: --min-third-fourth-nt
- id: in_min_del_fraction
  doc: "This parameter controls which deletions are reported\nin the tRNA-seq profile\
    \ database. Coverage of a\ndeletion in a sample must meet the minimum fraction\
    \ of\nspecific coverage. Deletion coverages are calculated\nseparately for specific,\
    \ nonspecific, and summed\ncoverages. (default: 0.01)"
  type: double?
  inputBinding:
    prefix: --min-del-fraction
- id: in_distance
  doc: "The distance metric for the hierarchical clustering.\nThe default distance\
    \ metric is 'euclidean'. You can\nfind the full list of distance metrics either\
    \ by\nmaking a mistake (such as entering a non-existent\ndistance metric and making\
    \ anvi'o upset), or by taking\na look at the help menu of the\nhierarchy.distance.pdist\
    \ function in the scipy.cluster\nmodule."
  type: string?
  inputBinding:
    prefix: --distance
- id: in_linkage
  doc: "The linkage method for the hierarchical clustering.\nThe default linkage method\
    \ is 'ward', because that is\nthe best one. It really is. We talked to a lot of\n\
    people and they were all like 'this is the best one\navailable' and it is just\
    \ all out there. Honestly it\nis so good that we will build a wall around it and\n\
    make other linkage methods pay for it. But if you want\nto see a full list of\
    \ available ones you can check the\nhierarcy.linkage function in the scipy.cluster\
    \ module.\nUp to you really. But then you can't use ward anymore,\nand you would\
    \ have to leave anvi'o right now."
  type: string?
  inputBinding:
    prefix: --linkage
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_experiment
  doc: -o DIR_PATH, --output-dir DIR_PATH
  type: string
  inputBinding:
    position: 0
- id: in_trna_seq_db
  doc: '🍕 Can provide: '
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
    \ a\ndatabase, or name her first born). (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_project_name)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-convert-trnaseq-database
