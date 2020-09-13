version 1.0

task GetOrganelleFromReadspy {
  input {
    Boolean? help
    Int? input_file_forward
    Int? input_file_reverse
    File? input_files_could
    Directory? output_directory_overwriting
    File? suggested_what_you
    Int? max_reads
    Int? reduce_reads_for_coverage
    Int? max_ignore_percent
    Int? min_quality_score
    String? prefix
    Boolean? zip_files
    Boolean? keep_temp
    String? flag_should_followed
    Boolean? fast
    Boolean? memory_save
    Boolean? memory_unlimited
    Int? word_size_w
    Int? pre_w
    Int? max_rounds
    Int? max_n_words
    Int? length_step_checking
    Int? beta_parameter_length
    Int? bowtie_two_options
    Boolean? larger_auto_ws
    Int? target_genome_size
    Int? max_extending_len
    Int? spades_kmer_settings
    String? spades_options
    Boolean? no_spades
    Int? ignore_k
    Int? genes
    Int? ex_genes
    Float? disentangle_df
    Float? contamination_depth
    Float? contamination_similarity
    Boolean? no_degenerate
    Float? degenerate_depth
    Float? degenerate_similarity
    File? disentangle_time_limit
    Int? expected_max_size
    Int? expected_min_size
    Boolean? reverse_lsc
    Int? max_paths_num
    String? maximum_threads_use
    Int? maximum_number_integer
    File? which_blast
    Int? which_bowtie_two
    File? which_spades
    File? which_bandage
    Boolean? continue
    Boolean? index_in_memory
    Int? remove_duplicates
    Int? flush_step
    Int? random_seed
    Boolean? verbose
    String exists_dot
    Directory directory_dot
  }
  command <<<
    get_organelle_from_reads_py \
      ~{exists_dot} \
      ~{directory_dot} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(input_file_forward) then ("-1 " +  '"' + input_file_forward + '"') else ""} \
      ~{if defined(input_file_reverse) then ("-2 " +  '"' + input_file_reverse + '"') else ""} \
      ~{if defined(input_files_could) then ("-u " +  '"' + input_files_could + '"') else ""} \
      ~{if defined(output_directory_overwriting) then ("-o " +  '"' + output_directory_overwriting + '"') else ""} \
      ~{if defined(suggested_what_you) then ("-a " +  '"' + suggested_what_you + '"') else ""} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(reduce_reads_for_coverage) then ("--reduce-reads-for-coverage " +  '"' + reduce_reads_for_coverage + '"') else ""} \
      ~{if defined(max_ignore_percent) then ("--max-ignore-percent " +  '"' + max_ignore_percent + '"') else ""} \
      ~{if defined(min_quality_score) then ("--min-quality-score " +  '"' + min_quality_score + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (zip_files) then "--zip-files" else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if defined(flag_should_followed) then ("-F " +  '"' + flag_should_followed + '"') else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (memory_save) then "--memory-save" else ""} \
      ~{if (memory_unlimited) then "--memory-unlimited" else ""} \
      ~{if defined(word_size_w) then ("-w " +  '"' + word_size_w + '"') else ""} \
      ~{if defined(pre_w) then ("--pre-w " +  '"' + pre_w + '"') else ""} \
      ~{if defined(max_rounds) then ("--max-rounds " +  '"' + max_rounds + '"') else ""} \
      ~{if defined(max_n_words) then ("--max-n-words " +  '"' + max_n_words + '"') else ""} \
      ~{if defined(length_step_checking) then ("-J " +  '"' + length_step_checking + '"') else ""} \
      ~{if defined(beta_parameter_length) then ("-M " +  '"' + beta_parameter_length + '"') else ""} \
      ~{if defined(bowtie_two_options) then ("--bowtie2-options " +  '"' + bowtie_two_options + '"') else ""} \
      ~{if (larger_auto_ws) then "--larger-auto-ws" else ""} \
      ~{if defined(target_genome_size) then ("--target-genome-size " +  '"' + target_genome_size + '"') else ""} \
      ~{if defined(max_extending_len) then ("--max-extending-len " +  '"' + max_extending_len + '"') else ""} \
      ~{if defined(spades_kmer_settings) then ("-k " +  '"' + spades_kmer_settings + '"') else ""} \
      ~{if defined(spades_options) then ("--spades-options " +  '"' + spades_options + '"') else ""} \
      ~{if (no_spades) then "--no-spades" else ""} \
      ~{if defined(ignore_k) then ("--ignore-k " +  '"' + ignore_k + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(ex_genes) then ("--ex-genes " +  '"' + ex_genes + '"') else ""} \
      ~{if defined(disentangle_df) then ("--disentangle-df " +  '"' + disentangle_df + '"') else ""} \
      ~{if defined(contamination_depth) then ("--contamination-depth " +  '"' + contamination_depth + '"') else ""} \
      ~{if defined(contamination_similarity) then ("--contamination-similarity " +  '"' + contamination_similarity + '"') else ""} \
      ~{if (no_degenerate) then "--no-degenerate" else ""} \
      ~{if defined(degenerate_depth) then ("--degenerate-depth " +  '"' + degenerate_depth + '"') else ""} \
      ~{if defined(degenerate_similarity) then ("--degenerate-similarity " +  '"' + degenerate_similarity + '"') else ""} \
      ~{if defined(disentangle_time_limit) then ("--disentangle-time-limit " +  '"' + disentangle_time_limit + '"') else ""} \
      ~{if defined(expected_max_size) then ("--expected-max-size " +  '"' + expected_max_size + '"') else ""} \
      ~{if defined(expected_min_size) then ("--expected-min-size " +  '"' + expected_min_size + '"') else ""} \
      ~{if (reverse_lsc) then "--reverse-lsc" else ""} \
      ~{if defined(max_paths_num) then ("--max-paths-num " +  '"' + max_paths_num + '"') else ""} \
      ~{if defined(maximum_threads_use) then ("-t " +  '"' + maximum_threads_use + '"') else ""} \
      ~{if defined(maximum_number_integer) then ("-P " +  '"' + maximum_number_integer + '"') else ""} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""} \
      ~{if defined(which_bowtie_two) then ("--which-bowtie2 " +  '"' + which_bowtie_two + '"') else ""} \
      ~{if defined(which_spades) then ("--which-spades " +  '"' + which_spades + '"') else ""} \
      ~{if defined(which_bandage) then ("--which-bandage " +  '"' + which_bandage + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (index_in_memory) then "--index-in-memory" else ""} \
      ~{if defined(remove_duplicates) then ("--remove-duplicates " +  '"' + remove_duplicates + '"') else ""} \
      ~{if defined(flush_step) then ("--flush-step " +  '"' + flush_step + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    help: "print verbose introduction for all options."
    input_file_forward: "Input file with forward paired-end reads (format:\\nfastq/fastq.gz/fastq.tar.gz)."
    input_file_reverse: "Input file with reverse paired-end reads (format:\\nfastq/fastq.gz/fastq.tar.gz)."
    input_files_could: "Input file(s) with unpaired (single-end) reads\\n(format: fastq/fastq.gz/fastq.tar.gz). files could be\\ncomma-separated lists such as 'seq1.fq,seq2.fq'."
    output_directory_overwriting: "Output directory. Overwriting files if directory"
    suggested_what_you: "Anti-seed(s). Not suggested unless what you really\\nknow what you are doing. Input fasta format file as\\nanti-seed, where the extension process stop. Typically\\nserves as excluding plastid reads when extending\\nmitochondrial reads, or the other way around. You\\nshould be cautious about using this option, because if\\nthe anti-seed includes some word in the target but not\\nin the seed, the result would have gaps. For example,\\nuse the embplant_mt and embplant_pt from the same\\nplant-species as seed and anti-seed."
    max_reads: "Hard bound for maximum number of reads to be used per\\nfile. Default: 1.5E7 (-F\\nembplant_pt/embplant_nr/fungus_mt); 7.5E7 (-F\\nembplant_mt/other_pt/anonym); 3E8 (-F animal_mt)"
    reduce_reads_for_coverage: "Soft bound for maximum number of reads to be used\\naccording to target-hitting base coverage. If the\\nestimated target-hitting base coverage is too high and\\nover this VALUE, GetOrganelle automatically reduce the\\nnumber of reads to generate a final assembly with base\\ncoverage close to this VALUE. This design could\\ngreatly save computational resources in many\\nsituations. A mean base coverage over 500 is extremely\\nsufficient for most cases. This VALUE must be larger\\nthan 10. Set this VALUE to inf to disable reducing.\\nDefault: 500."
    max_ignore_percent: "\\\" You can"
    min_quality_score: "Minimum quality score in extension. This value would\\nbe automatically decreased to prevent ignoring too\\nmuch raw data (see --max-ignore-percent).Default: 1\\n('\\\"' in Phred+33; 'A' in Phred+64/Solexa+64)"
    prefix: "Add extra prefix to resulting files under the output"
    zip_files: "Choose to compress fq/sam files using gzip."
    keep_temp: "Choose to keep the running temp/index files."
    flag_should_followed: "This flag should be followed with embplant_pt\\n(embryophyta plant plastome), other_pt (non-\\nembryophyta plant plastome), embplant_mt (plant\\nmitogenome), embplant_nr (plant nuclear ribosomal\\nRNA), animal_mt (animal mitogenome), fungus_mt (fungus\\nmitogenome), or embplant_mt,other_pt,fungus_mt (the\\ncombination of any of above organelle genomes split by\\ncomma(s), which might be computationally more\\nintensive than separate runs), or anonym (uncertain\\norganelle genome type, with customized gene database\\n('--genes'), which is suggested only when the above\\ndatabase is genetically distant from your sample,\\ngenerally only in some animal_mt and fungus_mt cases).\\nFor easy usage and compatibility of old versions,\\nfollowing redirection would be automatically fulfilled\\nwithout warning:      plant_cp->embplant_pt;\\nplant_pt->embplant_pt;  plant_mt->embplant_mt;\\nplant_nr->embplant_nr"
    fast: "=\\\"-R 10 -t 4 -J 5 -M 7 --max-n-words 3E7 --larger-\\nauto-ws --disentangle-time-limit 360\\\" This option is\\nsuggested for homogeneously and highly covered data\\n(very fine data). You can overwrite the value of a\\nspecific option listed above by adding that option\\nalong with the \\\"--fast\\\" flag. You could try\\nGetOrganelle with this option for a list of samples\\nand run a second time without this option for the rest\\nwith incomplete results."
    memory_save: "=\\\"--out-per-round -P 0 --remove-duplicates 0\\\" You can\\noverwrite the value of a specific option listed above\\nby adding that option along with the \\\"--memory-save\\\"\\nflag. A larger '-R' value is suggested when \\\"--memory-\\nsave\\\" is chosen."
    memory_unlimited: "=\\\"-P 1E7 --index-in-memory --remove-duplicates 2E8"
    word_size_w: "Word size (W) for pre-grouping (if not assigned by '--\\npre-w') and extending process. This script would try\\nto guess (auto-estimate) a proper W using an empirical\\nfunction based on average read length, reads quality,\\ntarget genome coverage, and other variables that might\\ninfluence the extending process. You could assign the\\nratio (1>input>0) of W to read_length, based on which\\nthis script would estimate the W for you; or assign an\\nabsolute W value (read length>input>=35). Default:\\nauto-estimated."
    pre_w: "Word size (W) for pre-grouping. Used to reproduce\\nresult when word size is a certain value during\\npregrouping process and later changed during reads\\nextending process. Similar to word size. Default: the\\nsame to word size."
    max_rounds: "Maximum number of extending rounds (suggested: >=2).\\nDefault: 15 (-F embplant_pt), 30 (-F\\nembplant_mt/other_pt), 10 (-F\\nembplant_nr/animal_mt/fungus_mt), inf (-P 0)."
    max_n_words: "Maximum number of words to be used in total.Default:\\n4E8 (-F embplant_pt), 2E8 (-F\\nembplant_nr/fungus_mt/animal_mt), 2E9 (-F\\nembplant_mt/other_pt)"
    length_step_checking: "The length of step for checking words in reads during\\nextending process (integer >= 1). When you have reads\\nof high quality, the larger the number is, the faster\\nthe extension will be, the more risk of missing reads\\nin low coverage area. Choose 1 to choose the slowest\\nbut safest extension strategy. Default: 3"
    beta_parameter_length: "(Beta parameter) The length of step for building words\\nfrom seeds during extending process (integer >= 1).\\nWhen you have reads of high quality, the larger the\\nnumber is, the faster the extension will be, the more\\nrisk of missing reads in low coverage area. Another\\nusage of this mesh size is to choose a larger mesh\\nsize coupled with a smaller word size, which makes\\nsmaller word size feasible when memory is\\nlimited.Choose 1 to choose the slowest but safest\\nextension strategy. Default: 2"
    bowtie_two_options: "Bowtie2 options, such as '--ma 3 --mp 5,2 --very-fast\\n-t'. Default: --very-fast -t."
    larger_auto_ws: "By using this flag, the empirical function for\\nestimating W would tend to produce a relative larger\\nW, which would speed up the matching in extending,\\nreduce the memory cost in extending, but increase the\\nrisk of broken final graph. Suggested when the data is\\ngood with high and homogenous coverage."
    target_genome_size: "Hypothetical value(s) of target genome size. This is\\nonly used for estimating word size when no '-w\\nword_size' is given. Should be a list of INTEGER\\nnumbers split by comma(s) on a multi-organelle mode,\\nwith the same list length to organelle_type (followed\\nby '-F'). Default: 130000 (-F embplant_pt) or 390000\\n(-F embplant_mt) or 13000 (-F embplant_nr) or 39000\\n(-F other_pt) or 13000 (-F animal_mt) or 65000 (-F\\nfungus_mt) or 39000,390000,65000 (-F\\nother_pt,embplant_mt,fungus_mt)"
    max_extending_len: "Maximum extending length(s) derived from the seed(s).\\nA single value could be a non-negative number, or inf\\n(infinite) or auto (automatic estimation). This is\\ndesigned for properly stopping the extending from\\ngetting too long and saving computational resources.\\nHowever, empirically, a maximum extending length value\\nlarger than 6000 would not be helpful for saving\\ncomputational resources. This value would not be\\nprecise in controlling output size, especially when\\npre-group (followed by '-P') is turn on.In the auto\\nmode, the maximum extending length is estimated based\\non the sizes of the gap regions that not covered in\\nthe seed sequences. A sequence of a closely related\\nspecies would be preferred for estimating a better\\nmaximum extending length value. If you are using\\nlimited loci, e.g. rbcL gene as the seed for\\nassembling the whole plastome (with extending length\\nca. 75000 >> 6000), you should set maximum extending\\nlength to inf. Should be a list of numbers/auto/no\\nsplit by comma(s) on a multi-organelle mode, with the\\nsame list length to organelle_type (followed by '-F').\\nDefault: no."
    spades_kmer_settings: "SPAdes kmer settings. Use the same format as in\\nSPAdes. illegal kmer values would be automatically\\ndiscarded by GetOrganelle. Default: 21,55,85,115"
    spades_options: "Other SPAdes options. Use double quotation marks to\\ninclude all the arguments and parameters."
    no_spades: "Disable SPAdes."
    ignore_k: "A kmer threshold below which, no\\nslimming/disentangling would be executed on the\\nresult. Default: 40"
    genes: "Followed with a customized database (a fasta file or\\nthe base name of a blast database) containing or made\\nof ONE set of protein coding genes and ribosomal RNAs\\nextracted from ONE reference genome that you want to\\nassemble. Should be a list of databases split by\\ncomma(s) on a multi-organelle mode, with the same list\\nlength to organelle_type (followed by '-F'). This is\\noptional for any organelle mentioned in '-F' but\\nrequired for 'anonym'. By default, certain database(s)\\nin /usr/local/lib/python3.8/site-\\npackages/GetOrganelleLib/LabelDatabase would be used\\ncontingent on the organelle types chosen (-F). The\\ndefault value no longer holds when '--genes' or '--ex-\\ngenes' is used."
    ex_genes: "This is optional and Not suggested, since non-target\\ncontigs could contribute information for better\\ndownstream coverage-based clustering. Followed with a\\ncustomized database (a fasta file or the base name of\\na blast database) containing or made of protein coding\\ngenes and ribosomal RNAs extracted from reference\\ngenome(s) that you want to exclude. Could be a list of\\ndatabases split by comma(s) but NOT required to have\\nthe same list length to organelle_type (followed by\\n'-F'). The default value no longer holds when '--\\ngenes' or '--ex-genes' is used."
    disentangle_df: "Depth factor for differentiate genome type of contigs.\\nThe genome type of contigs are determined by blast.\\nDefault: 10.0"
    contamination_depth: "Depth factor for confirming contamination in parallel\\ncontigs. Default: 3.0"
    contamination_similarity: "Similarity threshold for confirming contaminating\\ncontigs. Default: 0.9"
    no_degenerate: "Disable making consensus from parallel contig based on\\nnucleotide degenerate table."
    degenerate_depth: "Depth factor for confirming parallel contigs. Default:\\n1.5"
    degenerate_similarity: "Similarity threshold for confirming parallel contigs.\\nDefault: 0.98"
    disentangle_time_limit: "Time limit (second) for each try of disentangling a\\ngraph file as a circular genome. Disentangling a graph\\nas contigs is not limited. Default: 1800"
    expected_max_size: "Expected maximum target genome size(s) for\\ndisentangling. Should be a list of INTEGER numbers\\nsplit by comma(s) on a multi-organelle mode, with the\\nsame list length to organelle_type (followed by '-F').\\nDefault: 250000 (-F embplant_pt/fungus_mt), 25000 (-F\\nembplant_nr/animal_mt), 1000000 (-F\\nembplant_mt/other_pt),1000000,1000000,250000 (-F\\nother_pt,embplant_mt,fungus_mt)"
    expected_min_size: "Expected minimum target genome size(s) for\\ndisentangling. Should be a list of INTEGER numbers\\nsplit by comma(s) on a multi-organelle mode, with the\\nsame list length to organelle_type (followed by '-F').\\nDefault: 10000 for all."
    reverse_lsc: "For '-F embplant_pt' with complete circular result, by\\ndefault, the direction of the starting sequence\\n(usually the LSC region) is determined as the\\ndirection with less ORFs. Choose this option to\\nreverse the direction of the starting sequence when\\nresult is circular. Actually, both directions are\\nbiologically equivalent to each other. The reordering\\nof the direction is only for easier downstream\\nanalysis."
    max_paths_num: "Repeats would dramatically increase the number of\\npotential isomers (paths). This option was used to\\nexport a certain amount of paths out of all possible\\npaths per assembly graph. Default: 1000"
    maximum_threads_use: "Maximum threads to use."
    maximum_number_integer: "The maximum number (integer) of high-covered reads to\\nbe pre-grouped before extending process. pre_grouping\\nis suggested when the whole genome coverage is shallow\\nbut the organ genome coverage is deep. The default\\nvalue is 2E5. For personal computer with 8G memory, we\\nsuggest no more than 3E5. A larger number (ex. 6E5)\\nwould run faster but exhaust memory in the first few\\nminutes. Choose 0 to disable this process."
    which_blast: "Assign the path to BLAST binary files if not added to\\nthe path. Default: try \\\"/GetOrganelleDep/linux/ncbi-\\nblast\\\" first, then $PATH"
    which_bowtie_two: "Assign the path to Bowtie2 binary files if not added\\nto the path. Default: try\\n\\\"/GetOrganelleDep/linux/bowtie2\\\" first, then $PATH"
    which_spades: "Assign the path to SPAdes binary files if not added to\\nthe path. Default: try \\\"/GetOrganelleDep/linux/SPAdes\\\"\\nfirst, then $PATH"
    which_bandage: "Assign the path to bandage binary file if not added to\\nthe path. Default: try $PATH"
    continue: "Several check points based on files produced, rather\\nthan on the log file, so keep in mind that this script\\nwill not detect the difference between this input\\nparameters and the previous ones."
    index_in_memory: "Keep index in memory. Choose save index in memory than\\nin disk."
    remove_duplicates: "By default this script use unique reads to extend.\\nChoose the number of duplicates (integer) to be saved\\nin memory. A larger number (ex. 2E7) would run faster\\nbut exhaust memory in the first few minutes. Choose 0\\nto disable this process. Note that whether choose or\\nnot will not disable the calling of replicate reads.\\nDefault: 10000000.0."
    flush_step: "Flush step (INTEGER OR INF) for presenting progress.\\nFor running in the background, you could set this to\\ninf, which would disable this. Default: 54321"
    random_seed: "Default: 12345"
    verbose: "Verbose output. Choose to enable verbose running\\nlog_handler.\\n"
    exists_dot: "-s SEED_FILE        Seed sequence(s). Input fasta format file as initial"
    directory_dot: "--out-per-round     Enable output per round. Choose to save memory but"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_overwriting = "${in_output_directory_overwriting}"
  }
}