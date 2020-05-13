class: CommandLineTool
id: get_organelle_from_reads.py.cwl
inputs:
- id: u
  doc: "Input file(s) with unpaired (single-end) reads (format: fastq/fastq.gz/fastq.tar.gz).\
    \ files could be comma-separated lists such as 'seq1.fq,seq2.fq'."
  type: string
  inputBinding:
    prefix: -u
- id: o
  doc: Output directory. Overwriting files if directory exists.
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: "Seed sequence(s). Input fasta format file as initial seed. A seed sequence\
    \ in GetOrganelle is only used for identifying initial organelle reads. The assembly\
    \ process is purely de novo. Should be a list of files split by comma(s) on a\
    \ multi-organelle mode, with the same list length to organelle_type (followed\
    \ by '-F'). Default: '/tmp/tmphg2suakg/lib/python3.8/site- packages/GetOrganelleLib/SeedDatabase/*.fasta'\
    \ (* depends on the value followed with flag '-F')"
  type: string
  inputBinding:
    prefix: -s
- id: a
  doc: Anti-seed(s). Not suggested unless what you really know what you are doing.
    Input fasta format file as anti-seed, where the extension process stop. Typically
    serves as excluding plastid reads when extending mitochondrial reads, or the other
    way around. You should be cautious about using this option, because if the anti-seed
    includes some word in the target but not in the seed, the result would have gaps.
    For example, use the embplant_mt and embplant_pt from the same plant-species as
    seed and anti-seed.
  type: string
  inputBinding:
    prefix: -a
- id: max_reads
  doc: 'Hard bound for maximum number of reads to be used per file. Default: 1.5E7
    (-F embplant_pt/embplant_nr/fungus_mt); 7.5E7 (-F embplant_mt/other_pt/anonym);
    3E8 (-F animal_mt)'
  type: long
  inputBinding:
    prefix: --max-reads
- id: reduce_reads_for_coverage
  doc: 'Soft bound for maximum number of reads to be used according to target-hitting
    base coverage. If the estimated target-hitting base coverage is too high and over
    this VALUE, GetOrganelle automatically reduce the reads usage to generate the
    final assembly with base coverage close to this VALUE. This design could greatly
    save computational resources in many situations. A mean base coverage over 500
    is extremely sufficient for most cases. This VALUE must be larger than 10. Set
    this VALUE to inf to disable reducing. Default: 500.'
  type: string
  inputBinding:
    prefix: --reduce-reads-for-coverage
- id: max_ignore_percent
  doc: 'The maximum percent of bases to be ignore in extension, due to low quality.
    Default: 0.01'
  type: long
  inputBinding:
    prefix: --max-ignore-percent
- id: min_quality_score
  doc: "Minimum quality score in extension. This value would be automatically decreased\
    \ to prevent ignoring too much raw data (see --max-ignore-percent).Default: 1\
    \ ('\"' in Phred+33; 'A' in Phred+64/Solexa+64)"
  type: long
  inputBinding:
    prefix: --min-quality-score
- id: prefix
  doc: Add extra prefix to resulting files under the output directory.
  type: string
  inputBinding:
    prefix: --prefix
- id: out_per_round
  doc: Enable output per round. Choose to save memory but cost more time per round.
  type: boolean
  inputBinding:
    prefix: --out-per-round
- id: zip_files
  doc: Choose to compress fq/sam files using gzip.
  type: boolean
  inputBinding:
    prefix: --zip-files
- id: keep_temp
  doc: Choose to keep the running temp/index files.
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: f
  doc: "This flag should be followed with embplant_pt (embryophyta plant plastome),\
    \ other_pt (non- embryophyta plant plastome), embplant_mt (plant mitogenome),\
    \ embplant_nr (plant nuclear ribosomal RNA), animal_mt (animal mitogenome), fungus_mt\
    \ (fungus mitogenome), or embplant_mt,other_pt,fungus_mt (the combination of any\
    \ of above organelle genomes split by comma(s), which might be computationally\
    \ more intensive than separate runs), or anonym (uncertain organelle genome type,\
    \ with customized gene database ('--genes'), which is suggested only when the\
    \ above database is genetically distant from your sample, generally only in some\
    \ animal_mt and fungus_mt cases). For easy usage and compatibility of old versions,\
    \ following redirection would be automatically fulfilled without warning:    \
    \  plant_cp->embplant_pt; plant_pt->embplant_pt;  plant_mt->embplant_mt; plant_nr->embplant_nr"
  type: string
  inputBinding:
    prefix: -F
- id: fast
  doc: ="-R 10 -t 4 -J 5 -M 7 --max-n-words 3E7 --larger- auto-ws --disentangle-time-limit
    180" This option is suggested for homogeneously and highly covered data (very
    fine data). You can overwrite the value of a specific option listed above by adding
    that option along with the "--fast" flag. You could try GetOrganelle with this
    option for a list of samples and run a second time without this option for the
    rest with incomplete results.
  type: boolean
  inputBinding:
    prefix: --fast
- id: memory_save
  doc: ="--out-per-round -P 0 --remove-duplicates 0" You can overwrite the value of
    a specific option listed above by adding that option along with the "--memory-save"
    flag. A larger '-R' value is suggested when "--memory- save" is chosen.
  type: boolean
  inputBinding:
    prefix: --memory-save
- id: memory_unlimited
  doc: ="-P 1E7 --index-in-memory --remove-duplicates 2E8 --min-quality-score -5 --max-ignore-percent
    0" You can overwrite the value of a specific option listed above by adding that
    option along with the "--memory- unlimited" flag.
  type: boolean
  inputBinding:
    prefix: --memory-unlimited
- id: w
  doc: "Word size (W) for pre-grouping (if not assigned by '-- pre-w') and extending\
    \ process. This script would try to guess (auto-estimate) a proper W using an\
    \ empirical function based on average read length, reads quality, target genome\
    \ coverage, and other variables that might influence the extending process. You\
    \ could assign the ratio (1>input>0) of W to read_length, based on which this\
    \ script would estimate the W for you; or assign an absolute W value (read length>input>=35).\
    \ Default: auto-estimated."
  type: string
  inputBinding:
    prefix: -w
- id: pre_w
  doc: 'Word size (W) for pre-grouping. Used to reproduce result when word size is
    a certain value during pregrouping process and later changed during reads extending
    process. Similar to word size. Default: the same to word size.'
  type: string
  inputBinding:
    prefix: --pre-w
- id: max_rounds
  doc: 'Maximum number of extending rounds (suggested: >=2). Default: 15 (-F embplant_pt),
    30 (-F embplant_mt/other_pt), 10 (-F embplant_nr/animal_mt/fungus_mt), inf (-P
    0).'
  type: long
  inputBinding:
    prefix: --max-rounds
- id: max_n_words
  doc: 'Maximum number of words to be used in total.Default: 4E8 (-F embplant_pt),
    2E8 (-F embplant_nr/fungus_mt/animal_mt), 2E9 (-F embplant_mt/other_pt)'
  type: long
  inputBinding:
    prefix: --max-n-words
- id: j
  doc: 'The length of step for checking words in reads during extending process (integer
    >= 1). When you have reads of high quality, the larger the number is, the faster
    the extension will be, the more risk of missing reads in low coverage area. Choose
    1 to choose the slowest but safest extension strategy. Default: 3'
  type: string
  inputBinding:
    prefix: -J
- id: m
  doc: '(Beta parameter) The length of step for building words from seeds during extending
    process (integer >= 1). When you have reads of high quality, the larger the number
    is, the faster the extension will be, the more risk of missing reads in low coverage
    area. Another usage of this mesh size is to choose a larger mesh size coupled
    with a smaller word size, which makes smaller word size feasible when memory is
    limited.Choose 1 to choose the slowest but safest extension strategy. Default:
    2'
  type: string
  inputBinding:
    prefix: -M
- id: bowtie2_options
  doc: "Bowtie2 options, such as '--ma 3 --mp 5,2 --very-fast -t'. Default: --very-fast\
    \ -t."
  type: string
  inputBinding:
    prefix: --bowtie2-options
- id: larger_auto_ws
  doc: By using this flag, the empirical function for estimating W would tend to produce
    a relative larger W, which would speed up the matching in extending, reduce the
    memory cost in extending, but increase the risk of broken final graph. Suggested
    when the data is good with high and homogenous coverage.
  type: boolean
  inputBinding:
    prefix: --larger-auto-ws
- id: target_genome_size
  doc: "Hypothetical value(s) of target genome size. This is only used for estimating\
    \ word size when no '-w word_size' is given. Should be a list of INTEGER numbers\
    \ split by comma(s) on a multi-organelle mode, with the same list length to organelle_type\
    \ (followed by '-F'). Default: 130000 (-F embplant_pt) or 390000 (-F embplant_mt)\
    \ or 13000 (-F embplant_nr) or 39000 (-F other_pt) or 13000 (-F animal_mt) or\
    \ 65000 (-F fungus_mt) or 39000,390000,65000 (-F other_pt,embplant_mt,fungus_mt)"
  type: string
  inputBinding:
    prefix: --target-genome-size
- id: max_extending_len
  doc: "Maximum extending length(s) derived from the seed(s). A single value could\
    \ be a non-negative number, or inf (infinite) or auto (automatic estimation).\
    \ This is designed for properly stopping the extending from getting too long and\
    \ saving computational resources. However, empirically, a maximum extending length\
    \ value larger than 6000 would not be helpful for saving computational resources.\
    \ This value would not be precise in controlling output size, especially when\
    \ pre-group (followed by '-P') is turn on.In the auto mode, the maximum extending\
    \ length is estimated based on the sizes of the gap regions that not covered in\
    \ the seed sequences. A sequence of a closely related species would be preferred\
    \ for estimating a better maximum extending length value. If you are using limited\
    \ loci, e.g. rbcL gene as the seed for assembling the whole plastome (with extending\
    \ length ca. 75000 >> 6000), you should set maximum extending length to inf. Should\
    \ be a list of numbers/auto/no split by comma(s) on a multi-organelle mode, with\
    \ the same list length to organelle_type (followed by '-F'). Default: no."
  type: long
  inputBinding:
    prefix: --max-extending-len
- id: k
  doc: 'SPAdes kmer settings. Use the same format as in SPAdes. illegal kmer values
    would be automatically discarded by GetOrganelle. Default: 21,55,85,115'
  type: string
  inputBinding:
    prefix: -k
- id: spades_options
  doc: Other SPAdes options. Use double quotation marks to include all the arguments
    and parameters.
  type: string
  inputBinding:
    prefix: --spades-options
- id: no_spades
  doc: Disable SPAdes.
  type: boolean
  inputBinding:
    prefix: --no-spades
- id: gradient_k
  doc: 'Automatically adding an extra set of kmer values according to word size. Default:
    False'
  type: boolean
  inputBinding:
    prefix: --gradient-k
- id: ignore_k
  doc: 'A kmer threshold below which, no slimming/disentangling would be executed
    on the result. Default: 40'
  type: string
  inputBinding:
    prefix: --ignore-k
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
- id: disentangle_df
  doc: 'Depth factor for differentiate genome type of contigs. The genome type of
    contigs are determined by blast. Default: 10.0'
  type: string
  inputBinding:
    prefix: --disentangle-df
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
    genome. Disentangling a graph as contigs is not limited. Default: 600'
  type: string
  inputBinding:
    prefix: --disentangle-time-limit
- id: expected_max_size
  doc: "Expected maximum target genome size(s) for disentangling. Should be a list\
    \ of INTEGER numbers split by comma(s) on a multi-organelle mode, with the same\
    \ list length to organelle_type (followed by '-F'). Default: 250000 (-F embplant_pt/fungus_mt),\
    \ 25000 (-F embplant_nr/animal_mt), 1000000 (-F embplant_mt/other_pt),1000000,1000000,250000\
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
- id: t
  doc: Maximum threads to use.
  type: string
  inputBinding:
    prefix: -t
- id: p
  doc: The maximum number (integer) of high-covered reads to be pre-grouped before
    extending process. pre_grouping is suggested when the whole genome coverage is
    shallow but the organ genome coverage is deep. The default value is 2E5. For personal
    computer with 8G memory, we suggest no more than 3E5. A larger number (ex. 6E5)
    would run faster but exhaust memory in the first few minutes. Choose 0 to disable
    this process.
  type: string
  inputBinding:
    prefix: -P
- id: which_blast
  doc: 'Assign the path to BLAST binary files if not added to the path. Default: try
    GetOrganelleDep/linux/ncbi- blast first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-blast
- id: which_bowtie2
  doc: 'Assign the path to Bowtie2 binary files if not added to the path. Default:
    try GetOrganelleDep/linux/bowtie2 first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-bowtie2
- id: which_spades
  doc: 'Assign the path to SPAdes binary files if not added to the path. Default:
    try GetOrganelleDep/linux/SPAdes first, then $PATH'
  type: string
  inputBinding:
    prefix: --which-spades
- id: which_bandage
  doc: 'Assign the path to bandage binary file if not added to the path. Default:
    try $PATH'
  type: string
  inputBinding:
    prefix: --which-bandage
- id: continue
  doc: Several check points based on files produced, rather than on the log file,
    so keep in mind that this script will not detect the difference between this input
    parameters and the previous ones.
  type: boolean
  inputBinding:
    prefix: --continue
- id: index_in_memory
  doc: Keep index in memory. Choose save index in memory than in disk.
  type: boolean
  inputBinding:
    prefix: --index-in-memory
- id: remove_duplicates
  doc: 'By default this script use unique reads to extend. Choose the number of duplicates
    (integer) to be saved in memory. A larger number (ex. 2E7) would run faster but
    exhaust memory in the first few minutes. Choose 0 to disable this process. Note
    that whether choose or not will not disable the calling of replicate reads. Default:
    10000000.0.'
  type: string
  inputBinding:
    prefix: --remove-duplicates
- id: flush_step
  doc: 'Flush step (INTEGER OR INF) for presenting progress. For running in the background,
    you could set this to inf, which would disable this. Default: 54321'
  type: string
  inputBinding:
    prefix: --flush-step
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
outputs: []
cwlVersion: v1.1
baseCommand:
- get_organelle_from_reads.py
