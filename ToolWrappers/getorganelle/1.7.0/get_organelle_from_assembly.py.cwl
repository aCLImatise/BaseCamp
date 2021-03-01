class: CommandLineTool
id: get_organelle_from_assembly.py.cwl
inputs:
- id: in_flag_followed_orembplantmtotherptfungusmt
  doc: "This flag should be followed with embplant_pt\n(embryophyta plant plastome),\
    \ other_pt (non-\nembryophyta plant plastome), embplant_mt (plant\nmitochondrion),\
    \ embplant_nr (plant nuclear ribosomal\nRNA), animal_mt (animal mitochondrion),\
    \ fungus_mt\n(fungus mitochondrion), or\nembplant_mt,other_pt,fungus_mt (the combination\
    \ of any\nof above organelle genomes split by comma(s), which\nmight be computationally\
    \ more intensive than separate\nruns), or anonym (uncertain organelle genome type,\n\
    with customized gene database ('--genes'), which is\nsuggested only when the above\
    \ database is genetically\ndistant from your sample) or raw (disentangle the raw\n\
    graph directly without tagging)."
  type: string?
  inputBinding:
    prefix: -F
- id: in_input_assembly_graph
  doc: "Input assembly graph (fastg/gfa) file. The format will\nbe recognized by the\
    \ file name suffix."
  type: File?
  inputBinding:
    prefix: -g
- id: in_output_directory_overwriting
  doc: Output directory. Overwriting files if directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_max_depth
  doc: "Input a float or integer number. filter graph file by\na maximum depth. Default:\
    \ inf."
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_genes
  doc: "Followed with a customized database (a fasta file or\nthe base name of a blast\
    \ database) containing or made\nof ONE set of protein coding genes and ribosomal\
    \ RNAs\nextracted from ONE reference genome that you want to\nassemble. Should\
    \ be a list of databases split by\ncomma(s) on a multi-organelle mode, with the\
    \ same list\nlength to organelle_type (followed by '-F'). This is\noptional for\
    \ any organelle mentioned in '-F' but\nrequired for 'anonym'. By default, certain\
    \ database(s)\nin /usr/local/lib/python3.8/site-\npackages/GetOrganelleLib/LabelDatabase\
    \ would be used\ncontingent on the organelle types chosen (-F). The\ndefault value\
    \ no longer holds when '--genes' or '--ex-\ngenes' is used."
  type: long?
  inputBinding:
    prefix: --genes
- id: in_ex_genes
  doc: "This is optional and Not suggested, since non-target\ncontigs could contribute\
    \ information for better\ndownstream coverage-based clustering. Followed with\
    \ a\ncustomized database (a fasta file or the base name of\na blast database)\
    \ containing or made of protein coding\ngenes and ribosomal RNAs extracted from\
    \ reference\ngenome(s) that you want to exclude. Could be a list of\ndatabases\
    \ split by comma(s) but NOT required to have\nthe same list length to organelle_type\
    \ (followed by\n'-F'). The default value no longer holds when '--\ngenes' or '--ex-genes'\
    \ is used."
  type: long?
  inputBinding:
    prefix: --ex-genes
- id: in_no_slim
  doc: "Disable slimming process and directly disentangle the\noriginal assembly graph.\
    \ Default: False"
  type: boolean?
  inputBinding:
    prefix: --no-slim
- id: in_slim_options
  doc: Other options for calling slim_graph.py
  type: string?
  inputBinding:
    prefix: --slim-options
- id: in_max_slim_extending_len
  doc: "This is used to limit the extending length, below\nwhich a \"non-hit contig\"\
    \ is allowed to be distant from\na \"hit contig\" to be kept. See more under\n\
    slim_graph.py:--max-slim-extending-len. Default: 15000\n(-F embplant_pt), 50000\
    \ (-F\nembplant_mt/fungus_mt/other_pt), 12500 (-F\nembplant_nr/animal_mt), maximum_of_type1_type2\
    \ (-F\ntype1,type2), inf (-F anonym)"
  type: long?
  inputBinding:
    prefix: --max-slim-extending-len
- id: in_spades_out_dir
  doc: "Input spades output directory with 'scaffolds.fasta'\nand 'scaffolds.paths',\
    \ which are used for scaffolding\ndisconnected contigs with GAPs. Default: disabled"
  type: File?
  inputBinding:
    prefix: --spades-out-dir
- id: in_depth_factor
  doc: "Depth factor for differentiate genome type of contigs.\nThe genome type of\
    \ contigs are determined by blast.\nDefault: 10.0"
  type: double?
  inputBinding:
    prefix: --depth-factor
- id: in_type_f
  doc: "Type factor for identifying contig type tag when\nmultiple tags exist in one\
    \ contig. Default:3.0"
  type: double?
  inputBinding:
    prefix: --type-f
- id: in_contamination_depth
  doc: "Depth factor for confirming contamination in parallel\ncontigs. Default: 3.0"
  type: double?
  inputBinding:
    prefix: --contamination-depth
- id: in_contamination_similarity
  doc: "Similarity threshold for confirming contaminating\ncontigs. Default: 0.9"
  type: double?
  inputBinding:
    prefix: --contamination-similarity
- id: in_no_degenerate
  doc: "Disable making consensus from parallel contig based on\nnucleotide degenerate\
    \ table."
  type: boolean?
  inputBinding:
    prefix: --no-degenerate
- id: in_degenerate_depth
  doc: "Depth factor for confirming parallel contigs. Default:\n1.5"
  type: double?
  inputBinding:
    prefix: --degenerate-depth
- id: in_degenerate_similarity
  doc: "Similarity threshold for confirming parallel contigs.\nDefault: 0.98"
  type: double?
  inputBinding:
    prefix: --degenerate-similarity
- id: in_disentangle_time_limit
  doc: "Time limit (second) for each try of disentangling a\ngraph file as a circular\
    \ genome. Disentangling a graph\nas contigs is not limited. Default: 3600"
  type: File?
  inputBinding:
    prefix: --disentangle-time-limit
- id: in_expected_max_size
  doc: "Expected maximum target genome size(s) for\ndisentangling. Should be a list\
    \ of INTEGER numbers\nsplit by comma(s) on a multi-organelle mode, with the\n\
    same list length to organelle_type (followed by '-F').\nDefault: 250000 (-F embplant_pt/fungus_mt),\
    \ 25000 (-F\nembplant_nr/animal_mt), 1000000 (-F\nembplant_mt/other_pt), 1000000,1000000,250000\
    \ (-F\nother_pt,embplant_mt,fungus_mt)"
  type: long?
  inputBinding:
    prefix: --expected-max-size
- id: in_expected_min_size
  doc: "Expected minimum target genome size(s) for\ndisentangling. Should be a list\
    \ of INTEGER numbers\nsplit by comma(s) on a multi-organelle mode, with the\n\
    same list length to organelle_type (followed by '-F').\nDefault: 10000 for all."
  type: long?
  inputBinding:
    prefix: --expected-min-size
- id: in_reverse_lsc
  doc: "For '-F embplant_pt' with complete circular result, by\ndefault, the direction\
    \ of the starting contig (usually\nthe LSC contig) is determined as the direction\
    \ with\nless ORFs. Choose this option to reverse the direction\nof the starting\
    \ contig when result is circular.\nActually, both directions are biologically\
    \ equivalent\nto each other. The reordering of the direction is only\nfor easier\
    \ downstream analysis."
  type: boolean?
  inputBinding:
    prefix: --reverse-lsc
- id: in_max_paths_num
  doc: "Repeats would dramatically increase the number of\npotential isomers (paths).\
    \ This option was used to\nexport a certain amount of paths out of all possible\n\
    paths per assembly graph. Default: 1000"
  type: long?
  inputBinding:
    prefix: --max-paths-num
- id: in_keep_all_polymorphic
  doc: "By default, this script would pick the contig with\nhighest coverage among\
    \ all parallel (polymorphic)\ncontigs when degenerating was not applicable. Choose\n\
    this flag to export all combinations."
  type: boolean?
  inputBinding:
    prefix: --keep-all-polymorphic
- id: in_min_sigma
  doc: "Minimum deviation factor for excluding non-target\ncontigs. Default:0.1"
  type: long?
  inputBinding:
    prefix: --min-sigma
- id: in_max_multiplicity
  doc: "Maximum multiplicity of contigs for disentangling\ngenome paths. Should be\
    \ 1~12. Default:8"
  type: long?
  inputBinding:
    prefix: --max-multiplicity
- id: in_maximum_threads_use
  doc: Maximum threads to use.
  type: string?
  inputBinding:
    prefix: -t
- id: in_prefix
  doc: Add extra prefix to resulting files under the output
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_which_bandage
  doc: "Assign the path to bandage binary file if not added to\nthe path. Default:\
    \ try $PATH"
  type: File?
  inputBinding:
    prefix: --which-bandage
- id: in_keep_temp
  doc: Choose to keep the running temp/index files.
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_continue
  doc: "Several check points based on files produced, rather\nthan on the log file,\
    \ so keep in mind that this script\nwill not detect the difference between this\
    \ input\nparameters and the previous ones."
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_random_seed
  doc: 'Default: 12345'
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_verbose
  doc: Verbose output. Choose to enable verbose running
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_min_depth
  doc: ''
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_exists_dot
  doc: --min-depth=MIN_DEPTH
  type: string
  inputBinding:
    position: 0
- id: in_log_handler_dot
  doc: -h                    print brief introduction for frequently-used options.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_overwriting
  doc: Output directory. Overwriting files if directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_overwriting)
hints: []
cwlVersion: v1.1
baseCommand:
- get_organelle_from_assembly.py
