class: CommandLineTool
id: get_organelle_from_assembly.py.cwl
inputs:
- id: '10'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f
  doc: This flag should be followed with embplant_pt (embryophyta plant plastome),
    other_pt (non- embryophyta plant plastome), embplant_mt (plant mitochondrion),
    embplant_nr (plant nuclear ribosomal RNA), animal_mt (animal mitochondrion), fungus_mt
    (fungus mitochondrion), or embplant_mt,other_pt,fungus_mt (the combination of
    any of above organelle genomes split by comma(s), which might be computationally
    more intensive than separate runs), or anonym (uncertain organelle genome type,
    with customized gene database ('--genes'), which is suggested only when the above
    database is genetically distant from your sample) or raw (disentangle the raw
    graph directly without tagging).
  type: string
  inputBinding:
    prefix: -F
- id: g
  doc: Input assembly graph (fastg/gfa) file.
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: Output directory. Overwriting files if directory exists.
  type: string
  inputBinding:
    prefix: -o
- id: min_depth
  doc: 'Input a float or integer number. Filter graph file by a minimum depth. Default:
    0.0.'
  type: long
  inputBinding:
    prefix: --min-depth
- id: max_depth
  doc: 'Input a float or integer number. filter graph file by a maximum depth. Default:
    inf.'
  type: long
  inputBinding:
    prefix: --max-depth
- id: genes
  doc: Followed with a customized database (a fasta file or the base name of a blast
    database) containing or made of ONE set of protein coding genes and ribosomal
    RNAs extracted from ONE reference genome that you want to assemble. Should be
    a list of databases split by comma(s) on a multi-organelle mode, with the same
    list length to organelle_type (followed by '-F'). This is optional for any organelle
    mentioned in '-F' but required for 'anonym'. By default, certain database(s) in
    /tmp/tmphg2suakg/lib/python3.8/site- packages/GetOrganelleLib/LabelDatabase would
    be used contingent on the organelle types chosen (-F). The default value no longer
    holds when '--genes' or '--ex- genes' is used.
  type: string
  inputBinding:
    prefix: --genes
- id: ex_genes
  doc: This is optional and Not suggested, since non-target contigs could contribute
    information for better downstream coverage-based clustering. Followed with a customized
    database (a fasta file or the base name of a blast database) containing or made
    of protein coding genes and ribosomal RNAs extracted from reference genome(s)
    that you want to exclude. Could be a list of databases split by comma(s) but NOT
    required to have the same list length to organelle_type (followed by '-F'). The
    default value no longer holds when '-- genes' or '--ex-genes' is used.
  type: string
  inputBinding:
    prefix: --ex-genes
- id: no_slim
  doc: 'Disable slimming process and directly disentangle the original assembly graph.
    Default: False'
  type: boolean
  inputBinding:
    prefix: --no-slim
- id: slim_options
  doc: Other options for calling slim_fastg.py
  type: string
  inputBinding:
    prefix: --slim-options
- id: depth_factor
  doc: 'Depth factor for differentiate genome type of contigs. The genome type of
    contigs are determined by blast. Default: 10.0'
  type: string
  inputBinding:
    prefix: --depth-factor
- id: type_f
  doc: Type factor for identifying contig type tag when multiple tags exist in one
    contig. Default:3.0
  type: string
  inputBinding:
    prefix: --type-f
- id: contamination_depth
  doc: 'Depth factor for confirming contamination in parallel contigs. Default: 3.0'
  type: string
  inputBinding:
    prefix: --contamination-depth
- id: contamination_similarity
  doc: 'Similarity threshold for confirming contaminating contigs. Default: 0.9'
  type: string
  inputBinding:
    prefix: --contamination-similarity
- id: no_degenerate
  doc: Disable making consensus from parallel contig based on nucleotide degenerate
    table.
  type: boolean
  inputBinding:
    prefix: --no-degenerate
- id: degenerate_depth
  doc: 'Depth factor for confirming parallel contigs. Default: 1.5'
  type: string
  inputBinding:
    prefix: --degenerate-depth
- id: degenerate_similarity
  doc: 'Similarity threshold for confirming parallel contigs. Default: 0.98'
  type: string
  inputBinding:
    prefix: --degenerate-similarity
- id: disentangle_time_limit
  doc: 'Time limit (second) for each try of disentangling a graph file as a circular
    genome. Disentangling a graph as contigs is not limited. Default: 3600'
  type: string
  inputBinding:
    prefix: --disentangle-time-limit
- id: expected_max_size
  doc: "Expected maximum target genome size(s) for disentangling. Should be a list\
    \ of INTEGER numbers split by comma(s) on a multi-organelle mode, with the same\
    \ list length to organelle_type (followed by '-F'). Default: 250000 (-F embplant_pt/fungus_mt),\
    \ 25000 (-F embplant_nr/animal_mt), 1000000 (-F embplant_mt/other_pt), 1000000,1000000,250000\
    \ (-F other_pt,embplant_mt,fungus_mt)"
  type: string
  inputBinding:
    prefix: --expected-max-size
- id: expected_min_size
  doc: "Expected minimum target genome size(s) for disentangling. Should be a list\
    \ of INTEGER numbers split by comma(s) on a multi-organelle mode, with the same\
    \ list length to organelle_type (followed by '-F'). Default: 10000 for all."
  type: string
  inputBinding:
    prefix: --expected-min-size
- id: reverse_lsc
  doc: For '-F embplant_pt' with complete circular result, by default, the direction
    of the starting contig (usually the LSC contig) is determined as the direction
    with less ORFs. Choose this option to reverse the direction of the starting contig
    when result is circular. Actually, both directions are biologically equivalent
    to each other. The reordering of the direction is only for easier downstream analysis.
  type: boolean
  inputBinding:
    prefix: --reverse-lsc
- id: max_paths_num
  doc: 'Repeats would dramatically increase the number of potential isomers (paths).
    This option was used to export a certain amount of paths out of all possible paths
    per assembly graph. Default: 1000'
  type: long
  inputBinding:
    prefix: --max-paths-num
- id: keep_all_polymorphic
  doc: By default, this script would pick the contig with highest coverage among all
    parallel (polymorphic) contigs when degenerating was not applicable. Choose this
    flag to export all combinations.
  type: boolean
  inputBinding:
    prefix: --keep-all-polymorphic
- id: min_sigma
  doc: Minimum deviation factor for excluding non-target contigs. Default:0.1
  type: long
  inputBinding:
    prefix: --min-sigma
- id: max_multiplicity
  doc: Maximum multiplicity of contigs for disentangling genome paths. Should be 1~12.
    Default:8
  type: long
  inputBinding:
    prefix: --max-multiplicity
- id: t
  doc: Maximum threads to use.
  type: string
  inputBinding:
    prefix: -t
- id: prefix
  doc: Add extra prefix to resulting files under the output directory.
  type: string
  inputBinding:
    prefix: --prefix
- id: which_blast
  doc: 'Assign the path to BLAST binary files if not added to the path. Default: try
    GetOrganelleDep/linux/ncbi- blast first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-blast
- id: which_bandage
  doc: 'Assign the path to bandage binary file if not added to the path. Default:
    try $PATH'
  type: string
  inputBinding:
    prefix: --which-bandage
- id: keep_temp
  doc: Choose to keep the running temp/index files.
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: continue
  doc: Several check points based on files produced, rather than on the log file,
    so keep in mind that this script will not detect the difference between this input
    parameters and the previous ones.
  type: boolean
  inputBinding:
    prefix: --continue
- id: random_seed
  doc: 'Default: 12345'
  type: string
  inputBinding:
    prefix: --random-seed
- id: verbose
  doc: Verbose output. Choose to enable verbose running log_handler.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: help
  doc: print verbose introduction for all options.
  type: boolean
  inputBinding:
    prefix: --help
outputs: []
cwlVersion: v1.1
baseCommand:
- get_organelle_from_assembly.py
