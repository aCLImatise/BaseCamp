class: CommandLineTool
id: get_organelle_from_reads.py.cwl
inputs:
- id: in_help
  doc: print verbose introduction for all options.
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_input_file_pairedend
  doc: "Input file with forward paired-end reads (format:\nfastq/fastq.gz/fastq.tar.gz)."
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_input_file_reverse
  doc: "Input file with reverse paired-end reads (format:\nfastq/fastq.gz/fastq.tar.gz)."
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_input_files_unpaired
  doc: "Input file(s) with unpaired (single-end) reads\n(format: fastq/fastq.gz/fastq.tar.gz).\
    \ files could be\ncomma-separated lists such as 'seq1.fq,seq2.fq'."
  type: File?
  inputBinding:
    prefix: -u
- id: in_output_directory_overwriting
  doc: Output directory. Overwriting files if directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_suggested_reallyknow_asantiseed
  doc: "Anti-seed(s). Not suggested unless what you really\nknow what you are doing.\
    \ Input fasta format file as\nanti-seed, where the extension process stop. Typically\n\
    serves as excluding plastid reads when extending\nmitochondrial reads, or the\
    \ other way around. You\nshould be cautious about using this option, because if\n\
    the anti-seed includes some word in the target but not\nin the seed, the result\
    \ would have gaps. For example,\nuse the embplant_mt and embplant_pt from the\
    \ same\nplant-species as seed and anti-seed."
  type: File?
  inputBinding:
    prefix: -a
- id: in_max_reads
  doc: "Hard bound for maximum number of reads to be used per\nfile. A input larger\
    \ than 536870911 will be treated as\ninfinity (INF). Default: 1.5E7 (-F\nembplant_pt/embplant_nr/fungus_mt/fungus_nr);\
    \ 7.5E7\n(-F embplant_mt/other_pt/anonym); 3E8 (-F animal_mt)"
  type: long?
  inputBinding:
    prefix: --max-reads
- id: in_reduce_reads_for_coverage
  doc: "Soft bound for maximum number of reads to be used\naccording to target-hitting\
    \ base coverage. If the\nestimated target-hitting base coverage is too high and\n\
    over this VALUE, GetOrganelle automatically reduce the\nnumber of reads to generate\
    \ a final assembly with base\ncoverage close to this VALUE. This design could\n\
    greatly save computational resources in many\nsituations. A mean base coverage\
    \ over 500 is extremely\nsufficient for most cases. This VALUE must be larger\n\
    than 10. Set this VALUE to inf to disable reducing.\nDefault: 500."
  type: long?
  inputBinding:
    prefix: --reduce-reads-for-coverage
- id: in_max_ignore_percent
  doc: '" You can'
  type: long?
  inputBinding:
    prefix: --max-ignore-percent
- id: in_phred_offset
  doc: "Phred offset for spades-hammer. Default: GetOrganelle-\nautodetect"
  type: string?
  inputBinding:
    prefix: --phred-offset
- id: in_min_quality_score
  doc: "Minimum quality score in extension. This value would\nbe automatically decreased\
    \ to prevent ignoring too\nmuch raw data (see --max-ignore-percent).Default: 1\n\
    ('\"' in Phred+33; 'A' in Phred+64/Solexa+64)"
  type: long?
  inputBinding:
    prefix: --min-quality-score
- id: in_prefix
  doc: Add extra prefix to resulting files under the output
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_zip_files
  doc: Choose to compress fq/sam files using gzip.
  type: boolean?
  inputBinding:
    prefix: --zip-files
- id: in_keep_temp
  doc: Choose to keep the running temp/index files.
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_config_dir
  doc: "The directory where the configuration file and default\ndatabases were placed.\
    \ The default value also can be\nchanged by adding 'export GETORG_PATH=your_favor'\
    \ to\nthe shell script (e.g. ~/.bash_profile or ~/.bashrc)\nDefault: /root/.GetOrganelle"
  type: File?
  inputBinding:
    prefix: --config-dir
- id: in_flag_followed_be
  doc: "This flag should be followed with embplant_pt\n(embryophyta plant plastome),\
    \ other_pt (non-\nembryophyta plant plastome), embplant_mt (plant\nmitogenome),\
    \ embplant_nr (plant nuclear ribosomal\nRNA), animal_mt (animal mitogenome), fungus_mt\
    \ (fungus\nmitogenome), fungus_nr (fungus nuclear ribosomal\nRNA)or embplant_mt,other_pt,fungus_mt\
    \ (the combination\nof any of above organelle genomes split by comma(s),\nwhich\
    \ might be computationally more intensive than\nseparate runs), or anonym (uncertain\
    \ organelle genome\ntype, with customized gene database ('--genes'), which\nis\
    \ suggested only when the above database is\ngenetically distant from your sample,\
    \ generally only\nin some animal_mt/fungus_mt/fungus_nr cases). For easy\nusage\
    \ and compatibility of old versions, following\nredirection would be automatically\
    \ fulfilled without\nwarning:        plant_cp->embplant_pt;\nplant_pt->embplant_pt;\
    \  plant_mt->embplant_mt;\nplant_nr->embplant_nr"
  type: string?
  inputBinding:
    prefix: -F
- id: in_fast
  doc: "=\"-R 10 -t 4 -J 5 -M 7 --max-n-words 3E7 --larger-\nauto-ws --disentangle-time-limit\
    \ 360\" This option is\nsuggested for homogeneously and highly covered data\n\
    (very fine data). You can overwrite the value of a\nspecific option listed above\
    \ by adding that option\nalong with the \"--fast\" flag. You could try\nGetOrganelle\
    \ with this option for a list of samples\nand run a second time without this option\
    \ for the rest\nwith incomplete results."
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_memory_save
  doc: "=\"--out-per-round -P 0 --remove-duplicates 0\" You can\noverwrite the value\
    \ of a specific option listed above\nby adding that option along with the \"--memory-save\"\
    \nflag. A larger '-R' value is suggested when \"--memory-\nsave\" is chosen."
  type: boolean?
  inputBinding:
    prefix: --memory-save
- id: in_memory_unlimited
  doc: ="-P 1E7 --index-in-memory --remove-duplicates 2E8
  type: boolean?
  inputBinding:
    prefix: --memory-unlimited
- id: in_word_size_w_assigned
  doc: "Word size (W) for pre-grouping (if not assigned by '--\npre-w') and extending\
    \ process. This script would try\nto guess (auto-estimate) a proper W using an\
    \ empirical\nfunction based on average read length, reads quality,\ntarget genome\
    \ coverage, and other variables that might\ninfluence the extending process. You\
    \ could assign the\nratio (1>input>0) of W to read_length, based on which\nthis\
    \ script would estimate the W for you; or assign an\nabsolute W value (read length>input>=35).\
    \ Default:\nauto-estimated."
  type: long?
  inputBinding:
    prefix: -w
- id: in_pre_w
  doc: "Word size (W) for pre-grouping. Used to reproduce\nresult when word size is\
    \ a certain value during\npregrouping process and later changed during reads\n\
    extending process. Similar to word size. Default: the\nsame to word size."
  type: long?
  inputBinding:
    prefix: --pre-w
- id: in_max_rounds
  doc: "Maximum number of extending rounds (suggested: >=2).\nDefault: 15 (-F embplant_pt),\
    \ 30 (-F\nembplant_mt/other_pt), 10 (-F\nembplant_nr/animal_mt/fungus_mt/fungus_nr),\
    \ inf (-P\n0)."
  type: long?
  inputBinding:
    prefix: --max-rounds
- id: in_max_n_words
  doc: "Maximum number of words to be used in total.Default:\n4E8 (-F embplant_pt),\
    \ 2E8 (-F\nembplant_nr/fungus_mt/fungus_nr/animal_mt), 2E9 (-F\nembplant_mt/other_pt)"
  type: long?
  inputBinding:
    prefix: --max-n-words
- id: in_length_step_checking
  doc: "The length of step for checking words in reads during\nextending process (integer\
    \ >= 1). When you have reads\nof high quality, the larger the number is, the faster\n\
    the extension will be, the more risk of missing reads\nin low coverage area. Choose\
    \ 1 to choose the slowest\nbut safest extension strategy. Default: 3"
  type: long?
  inputBinding:
    prefix: -J
- id: in_beta_parameter_length
  doc: "(Beta parameter) The length of step for building words\nfrom seeds during\
    \ extending process (integer >= 1).\nWhen you have reads of high quality, the\
    \ larger the\nnumber is, the faster the extension will be, the more\nrisk of missing\
    \ reads in low coverage area. Another\nusage of this mesh size is to choose a\
    \ larger mesh\nsize coupled with a smaller word size, which makes\nsmaller word\
    \ size feasible when memory is\nlimited.Choose 1 to choose the slowest but safest\n\
    extension strategy. Default: 2"
  type: long?
  inputBinding:
    prefix: -M
- id: in_bowtie_two_options
  doc: "Bowtie2 options, such as '--ma 3 --mp 5,2 --very-fast\n-t'. Default: --very-fast\
    \ -t."
  type: long?
  inputBinding:
    prefix: --bowtie2-options
- id: in_larger_auto_ws
  doc: "By using this flag, the empirical function for\nestimating W would tend to\
    \ produce a relative larger\nW, which would speed up the matching in extending,\n\
    reduce the memory cost in extending, but increase the\nrisk of broken final graph.\
    \ Suggested when the data is\ngood with high and homogenous coverage."
  type: boolean?
  inputBinding:
    prefix: --larger-auto-ws
- id: in_target_genome_size
  doc: "Hypothetical value(s) of target genome size. This is\nonly used for estimating\
    \ word size when no '-w\nword_size' is given. Should be a list of INTEGER\nnumbers\
    \ split by comma(s) on a multi-organelle mode,\nwith the same list length to organelle_type\
    \ (followed\nby '-F'). Default: 130000 (-F embplant_pt) or 390000\n(-F embplant_mt)\
    \ or 13000 (-F embplant_nr) or 39000\n(-F other_pt) or 13000 (-F animal_mt) or\
    \ 65000 (-F\nfungus_mt) or 13000 (-F fungus_nr) or\n39000,390000,65000 (-F other_pt,embplant_mt,fungus_mt)"
  type: long?
  inputBinding:
    prefix: --target-genome-size
- id: in_max_extending_len
  doc: "Maximum extending length(s) derived from the seed(s).\nA single value could\
    \ be a non-negative number, or inf\n(infinite) or auto (automatic estimation).\
    \ This is\ndesigned for properly stopping the extending from\ngetting too long\
    \ and saving computational resources.\nHowever, empirically, a maximum extending\
    \ length value\nlarger than 6000 would not be helpful for saving\ncomputational\
    \ resources. This value would not be\nprecise in controlling output size, especially\
    \ when\npre-group (followed by '-P') is turn on.In the auto\nmode, the maximum\
    \ extending length is estimated based\non the sizes of the gap regions that not\
    \ covered in\nthe seed sequences. A sequence of a closely related\nspecies would\
    \ be preferred for estimating a better\nmaximum extending length value. If you\
    \ are using\nlimited loci, e.g. rbcL gene as the seed for\nassembling the whole\
    \ plastome (with extending length\nca. 75000 >> 6000), you should set maximum\
    \ extending\nlength to inf. Should be a list of numbers/auto/no\nsplit by comma(s)\
    \ on a multi-organelle mode, with the\nsame list length to organelle_type (followed\
    \ by '-F').\nDefault: no."
  type: long?
  inputBinding:
    prefix: --max-extending-len
- id: in_spades_settings_use
  doc: "SPAdes kmer settings. Use the same format as in\nSPAdes. illegal kmer values\
    \ would be automatically\ndiscarded by GetOrganelle. Default: 21,55,85,115"
  type: long?
  inputBinding:
    prefix: -k
- id: in_spades_options
  doc: "Other SPAdes options. Use double quotation marks to\ninclude all the arguments\
    \ and parameters."
  type: string?
  inputBinding:
    prefix: --spades-options
- id: in_no_spades
  doc: Disable SPAdes.
  type: boolean?
  inputBinding:
    prefix: --no-spades
- id: in_ignore_k
  doc: "A kmer threshold below which, no\nslimming/disentangling would be executed\
    \ on the\nresult. Default: 40"
  type: long?
  inputBinding:
    prefix: --ignore-k
- id: in_genes
  doc: "Followed with a customized database (a fasta file or\nthe base name of a blast\
    \ database) containing or made\nof ONE set of protein coding genes and ribosomal\
    \ RNAs\nextracted from ONE reference genome that you want to\nassemble. Should\
    \ be a list of databases split by\ncomma(s) on a multi-organelle mode, with the\
    \ same list\nlength to organelle_type (followed by '-F'). This is\noptional for\
    \ any organelle mentioned in '-F' but\nrequired for 'anonym'. By default, certain\
    \ database(s)\nin /root/.GetOrganelle/LabelDatabase would be used\ncontingent\
    \ on the organelle types chosen (-F). The\ndefault value no longer holds when\
    \ '--genes' or '--ex-\ngenes' is used."
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
- id: in_disentangle_df
  doc: "Depth factor for differentiate genome type of contigs.\nThe genome type of\
    \ contigs are determined by blast.\nDefault: 10.0"
  type: double?
  inputBinding:
    prefix: --disentangle-df
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
    \ genome. Disentangling a graph\nas contigs is not limited. Default: 1800"
  type: File?
  inputBinding:
    prefix: --disentangle-time-limit
- id: in_expected_max_size
  doc: "Expected maximum target genome size(s) for\ndisentangling. Should be a list\
    \ of INTEGER numbers\nsplit by comma(s) on a multi-organelle mode, with the\n\
    same list length to organelle_type (followed by '-F').\nDefault: 250000 (-F embplant_pt/fungus_mt),\
    \ 25000 (-F\nembplant_nr/animal_mt/fungus_nr), 1000000 (-F\nembplant_mt/other_pt),1000000,1000000,250000\
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
    \ of the starting contig (usually\nthe LSC region) is determined as the direction\
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
- id: in_maximum_threads_use
  doc: Maximum threads to use.
  type: string?
  inputBinding:
    prefix: -t
- id: in_maximum_number_integer
  doc: "The maximum number (integer) of high-covered reads to\nbe pre-grouped before\
    \ extending process. pre_grouping\nis suggested when the whole genome coverage\
    \ is shallow\nbut the organ genome coverage is deep. The default\nvalue is 2E5.\
    \ For personal computer with 8G memory, we\nsuggest no more than 3E5. A larger\
    \ number (ex. 6E5)\nwould run faster but exhaust memory in the first few\nminutes.\
    \ Choose 0 to disable this process."
  type: long?
  inputBinding:
    prefix: -P
- id: in_which_blast
  doc: "Assign the path to BLAST binary files if not added to\nthe path. Default:\
    \ try \"/GetOrganelleDep/linux/ncbi-\nblast\" first, then $PATH"
  type: File?
  inputBinding:
    prefix: --which-blast
- id: in_which_bowtie_two
  doc: "Assign the path to Bowtie2 binary files if not added\nto the path. Default:\
    \ try\n\"/GetOrganelleDep/linux/bowtie2\" first, then $PATH"
  type: long?
  inputBinding:
    prefix: --which-bowtie2
- id: in_which_spades
  doc: "Assign the path to SPAdes binary files if not added to\nthe path. Default:\
    \ try \"/GetOrganelleDep/linux/SPAdes\"\nfirst, then $PATH"
  type: File?
  inputBinding:
    prefix: --which-spades
- id: in_which_bandage
  doc: "Assign the path to bandage binary file if not added to\nthe path. Default:\
    \ try $PATH"
  type: File?
  inputBinding:
    prefix: --which-bandage
- id: in_continue
  doc: "Several check points based on files produced, rather\nthan on the log file,\
    \ so keep in mind that this script\nwill not detect the difference between this\
    \ input\nparameters and the previous ones."
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_index_in_memory
  doc: "Keep index in memory. Choose save index in memory than\nin disk."
  type: boolean?
  inputBinding:
    prefix: --index-in-memory
- id: in_remove_duplicates
  doc: "By default this script use unique reads to extend.\nChoose the number of duplicates\
    \ (integer) to be saved\nin memory. A larger number (ex. 2E7) would run faster\n\
    but exhaust memory in the first few minutes. Choose 0\nto disable this process.\
    \ Note that whether choose or\nnot will not disable the calling of replicate reads.\n\
    Default: 10000000.0."
  type: long?
  inputBinding:
    prefix: --remove-duplicates
- id: in_flush_step
  doc: "Flush step (INTEGER OR INF) for presenting progress.\nFor running in the background,\
    \ you could set this to\ninf, which would disable this. Default: 54321"
  type: long?
  inputBinding:
    prefix: --flush-step
- id: in_random_seed
  doc: 'Default: 12345'
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_verbose
  doc: "Verbose output. Choose to enable verbose running\nlog_handler.\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_exists_dot
  doc: -s SEED_FILE        Seed sequence(s). Input fasta format file as initial
  type: string
  inputBinding:
    position: 0
- id: in_directory_dot
  doc: --out-per-round     Enable output per round. Choose to save memory but
  type: Directory
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- get_organelle_from_reads.py
