version 1.0

task GetOrganelleFromReads.py {
  input {
    String? input_file_forward
    String? input_file_reverse
    String? input_files_unpaired
    String? output_directory_overwriting
    String? seed_sequences_input
    String? antiseeds_suggested_serves
    Int? max_reads
    String? reduce_reads_for_coverage
    Int? max_ignore_percent
    Int? min_quality_score
    String? prefix
    Boolean? out_per_round
    Boolean? zip_files
    Boolean? keep_temp
    String? flag_should_followed
    Boolean? fast
    Boolean? memory_save
    Boolean? memory_unlimited
    String? word_size_w_pregrouping_assigned
    String? pre_w
    Int? max_rounds
    Int? max_n_words
    String? length_step_checking
    String? beta_parameter_length
    String? bowtie_two_options
    Boolean? larger_auto_ws
    String? target_genome_size
    Int? max_extending_len
    String? spades_kmer_settings
    String? spades_options
    Boolean? no_spades
    Boolean? gradient_k
    String? ignore_k
    String? genes
    String? ex_genes
    String? disentangle_df
    String? contamination_depth
    String? contamination_similarity
    Boolean? no_degenerate
    String? degenerate_depth
    String? degenerate_similarity
    String? disentangle_time_limit
    String? expected_max_size
    String? expected_min_size
    Boolean? reverse_lsc
    Int? max_paths_num
    String? maximum_threads_use
    String? maximum_number_integer
    String? which_blast
    String? which_bowtie_two
    String? which_spades
    String? which_bandage
    Boolean? continue
    Boolean? index_in_memory
    String? remove_duplicates
    String? flush_step
    String? random_seed
    Boolean? verbose
  }
  command <<<
    get_organelle_from_reads.py \
      ~{if defined(input_file_forward) then ("-1 " +  '"' + input_file_forward + '"') else ""} \
      ~{if defined(input_file_reverse) then ("-2 " +  '"' + input_file_reverse + '"') else ""} \
      ~{if defined(input_files_unpaired) then ("-u " +  '"' + input_files_unpaired + '"') else ""} \
      ~{if defined(output_directory_overwriting) then ("-o " +  '"' + output_directory_overwriting + '"') else ""} \
      ~{if defined(seed_sequences_input) then ("-s " +  '"' + seed_sequences_input + '"') else ""} \
      ~{if defined(antiseeds_suggested_serves) then ("-a " +  '"' + antiseeds_suggested_serves + '"') else ""} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(reduce_reads_for_coverage) then ("--reduce-reads-for-coverage " +  '"' + reduce_reads_for_coverage + '"') else ""} \
      ~{if defined(max_ignore_percent) then ("--max-ignore-percent " +  '"' + max_ignore_percent + '"') else ""} \
      ~{if defined(min_quality_score) then ("--min-quality-score " +  '"' + min_quality_score + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--out-per-round" false="" out_per_round} \
      ~{true="--zip-files" false="" zip_files} \
      ~{true="--keep-temp" false="" keep_temp} \
      ~{if defined(flag_should_followed) then ("-F " +  '"' + flag_should_followed + '"') else ""} \
      ~{true="--fast" false="" fast} \
      ~{true="--memory-save" false="" memory_save} \
      ~{true="--memory-unlimited" false="" memory_unlimited} \
      ~{if defined(word_size_w_pregrouping_assigned) then ("-w " +  '"' + word_size_w_pregrouping_assigned + '"') else ""} \
      ~{if defined(pre_w) then ("--pre-w " +  '"' + pre_w + '"') else ""} \
      ~{if defined(max_rounds) then ("--max-rounds " +  '"' + max_rounds + '"') else ""} \
      ~{if defined(max_n_words) then ("--max-n-words " +  '"' + max_n_words + '"') else ""} \
      ~{if defined(length_step_checking) then ("-J " +  '"' + length_step_checking + '"') else ""} \
      ~{if defined(beta_parameter_length) then ("-M " +  '"' + beta_parameter_length + '"') else ""} \
      ~{if defined(bowtie_two_options) then ("--bowtie2-options " +  '"' + bowtie_two_options + '"') else ""} \
      ~{true="--larger-auto-ws" false="" larger_auto_ws} \
      ~{if defined(target_genome_size) then ("--target-genome-size " +  '"' + target_genome_size + '"') else ""} \
      ~{if defined(max_extending_len) then ("--max-extending-len " +  '"' + max_extending_len + '"') else ""} \
      ~{if defined(spades_kmer_settings) then ("-k " +  '"' + spades_kmer_settings + '"') else ""} \
      ~{if defined(spades_options) then ("--spades-options " +  '"' + spades_options + '"') else ""} \
      ~{true="--no-spades" false="" no_spades} \
      ~{true="--gradient-k" false="" gradient_k} \
      ~{if defined(ignore_k) then ("--ignore-k " +  '"' + ignore_k + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(ex_genes) then ("--ex-genes " +  '"' + ex_genes + '"') else ""} \
      ~{if defined(disentangle_df) then ("--disentangle-df " +  '"' + disentangle_df + '"') else ""} \
      ~{if defined(contamination_depth) then ("--contamination-depth " +  '"' + contamination_depth + '"') else ""} \
      ~{if defined(contamination_similarity) then ("--contamination-similarity " +  '"' + contamination_similarity + '"') else ""} \
      ~{true="--no-degenerate" false="" no_degenerate} \
      ~{if defined(degenerate_depth) then ("--degenerate-depth " +  '"' + degenerate_depth + '"') else ""} \
      ~{if defined(degenerate_similarity) then ("--degenerate-similarity " +  '"' + degenerate_similarity + '"') else ""} \
      ~{if defined(disentangle_time_limit) then ("--disentangle-time-limit " +  '"' + disentangle_time_limit + '"') else ""} \
      ~{if defined(expected_max_size) then ("--expected-max-size " +  '"' + expected_max_size + '"') else ""} \
      ~{if defined(expected_min_size) then ("--expected-min-size " +  '"' + expected_min_size + '"') else ""} \
      ~{true="--reverse-lsc" false="" reverse_lsc} \
      ~{if defined(max_paths_num) then ("--max-paths-num " +  '"' + max_paths_num + '"') else ""} \
      ~{if defined(maximum_threads_use) then ("-t " +  '"' + maximum_threads_use + '"') else ""} \
      ~{if defined(maximum_number_integer) then ("-P " +  '"' + maximum_number_integer + '"') else ""} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""} \
      ~{if defined(which_bowtie_two) then ("--which-bowtie2 " +  '"' + which_bowtie_two + '"') else ""} \
      ~{if defined(which_spades) then ("--which-spades " +  '"' + which_spades + '"') else ""} \
      ~{if defined(which_bandage) then ("--which-bandage " +  '"' + which_bandage + '"') else ""} \
      ~{true="--continue" false="" continue} \
      ~{true="--index-in-memory" false="" index_in_memory} \
      ~{if defined(remove_duplicates) then ("--remove-duplicates " +  '"' + remove_duplicates + '"') else ""} \
      ~{if defined(flush_step) then ("--flush-step " +  '"' + flush_step + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    input_file_forward: "Input file with forward paired-end reads (format: fastq/fastq.gz/fastq.tar.gz)."
    input_file_reverse: "Input file with reverse paired-end reads (format: fastq/fastq.gz/fastq.tar.gz)."
    input_files_unpaired: "Input file(s) with unpaired (single-end) reads (format: fastq/fastq.gz/fastq.tar.gz). files could be comma-separated lists such as 'seq1.fq,seq2.fq'."
    output_directory_overwriting: "Output directory. Overwriting files if directory exists."
    seed_sequences_input: "Seed sequence(s). Input fasta format file as initial seed. A seed sequence in GetOrganelle is only used for identifying initial organelle reads. The assembly process is purely de novo. Should be a list of files split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). Default: '/tmp/tmpkfo1qzio/lib/python3.8/site- packages/GetOrganelleLib/SeedDatabase/*.fasta' (* depends on the value followed with flag '-F')"
    antiseeds_suggested_serves: "Anti-seed(s). Not suggested unless what you really know what you are doing. Input fasta format file as anti-seed, where the extension process stop. Typically serves as excluding plastid reads when extending mitochondrial reads, or the other way around. You should be cautious about using this option, because if the anti-seed includes some word in the target but not in the seed, the result would have gaps. For example, use the embplant_mt and embplant_pt from the same plant-species as seed and anti-seed."
    max_reads: "Hard bound for maximum number of reads to be used per file. Default: 1.5E7 (-F embplant_pt/embplant_nr/fungus_mt); 7.5E7 (-F embplant_mt/other_pt/anonym); 3E8 (-F animal_mt)"
    reduce_reads_for_coverage: "Soft bound for maximum number of reads to be used according to target-hitting base coverage. If the estimated target-hitting base coverage is too high and over this VALUE, GetOrganelle automatically reduce the reads usage to generate the final assembly with base coverage close to this VALUE. This design could greatly save computational resources in many situations. A mean base coverage over 500 is extremely sufficient for most cases. This VALUE must be larger than 10. Set this VALUE to inf to disable reducing. Default: 500."
    max_ignore_percent: "The maximum percent of bases to be ignore in extension, due to low quality. Default: 0.01"
    min_quality_score: "Minimum quality score in extension. This value would be automatically decreased to prevent ignoring too much raw data (see --max-ignore-percent).Default: 1 ('\"' in Phred+33; 'A' in Phred+64/Solexa+64)"
    prefix: "Add extra prefix to resulting files under the output directory."
    out_per_round: "Enable output per round. Choose to save memory but cost more time per round."
    zip_files: "Choose to compress fq/sam files using gzip."
    keep_temp: "Choose to keep the running temp/index files."
    flag_should_followed: "This flag should be followed with embplant_pt (embryophyta plant plastome), other_pt (non- embryophyta plant plastome), embplant_mt (plant mitogenome), embplant_nr (plant nuclear ribosomal RNA), animal_mt (animal mitogenome), fungus_mt (fungus mitogenome), or embplant_mt,other_pt,fungus_mt (the combination of any of above organelle genomes split by comma(s), which might be computationally more intensive than separate runs), or anonym (uncertain organelle genome type, with customized gene database ('--genes'), which is suggested only when the above database is genetically distant from your sample, generally only in some animal_mt and fungus_mt cases). For easy usage and compatibility of old versions, following redirection would be automatically fulfilled without warning:      plant_cp->embplant_pt; plant_pt->embplant_pt;  plant_mt->embplant_mt; plant_nr->embplant_nr"
    fast: "=\"-R 10 -t 4 -J 5 -M 7 --max-n-words 3E7 --larger- auto-ws --disentangle-time-limit 180\" This option is suggested for homogeneously and highly covered data (very fine data). You can overwrite the value of a specific option listed above by adding that option along with the \"--fast\" flag. You could try GetOrganelle with this option for a list of samples and run a second time without this option for the rest with incomplete results."
    memory_save: "=\"--out-per-round -P 0 --remove-duplicates 0\" You can overwrite the value of a specific option listed above by adding that option along with the \"--memory-save\" flag. A larger '-R' value is suggested when \"--memory- save\" is chosen."
    memory_unlimited: "=\"-P 1E7 --index-in-memory --remove-duplicates 2E8 --min-quality-score -5 --max-ignore-percent 0\" You can overwrite the value of a specific option listed above by adding that option along with the \"--memory- unlimited\" flag."
    word_size_w_pregrouping_assigned: "Word size (W) for pre-grouping (if not assigned by '-- pre-w') and extending process. This script would try to guess (auto-estimate) a proper W using an empirical function based on average read length, reads quality, target genome coverage, and other variables that might influence the extending process. You could assign the ratio (1>input>0) of W to read_length, based on which this script would estimate the W for you; or assign an absolute W value (read length>input>=35). Default: auto-estimated."
    pre_w: "Word size (W) for pre-grouping. Used to reproduce result when word size is a certain value during pregrouping process and later changed during reads extending process. Similar to word size. Default: the same to word size."
    max_rounds: "Maximum number of extending rounds (suggested: >=2). Default: 15 (-F embplant_pt), 30 (-F embplant_mt/other_pt), 10 (-F embplant_nr/animal_mt/fungus_mt), inf (-P 0)."
    max_n_words: "Maximum number of words to be used in total.Default: 4E8 (-F embplant_pt), 2E8 (-F embplant_nr/fungus_mt/animal_mt), 2E9 (-F embplant_mt/other_pt)"
    length_step_checking: "The length of step for checking words in reads during extending process (integer >= 1). When you have reads of high quality, the larger the number is, the faster the extension will be, the more risk of missing reads in low coverage area. Choose 1 to choose the slowest but safest extension strategy. Default: 3"
    beta_parameter_length: "(Beta parameter) The length of step for building words from seeds during extending process (integer >= 1). When you have reads of high quality, the larger the number is, the faster the extension will be, the more risk of missing reads in low coverage area. Another usage of this mesh size is to choose a larger mesh size coupled with a smaller word size, which makes smaller word size feasible when memory is limited.Choose 1 to choose the slowest but safest extension strategy. Default: 2"
    bowtie_two_options: "Bowtie2 options, such as '--ma 3 --mp 5,2 --very-fast -t'. Default: --very-fast -t."
    larger_auto_ws: "By using this flag, the empirical function for estimating W would tend to produce a relative larger W, which would speed up the matching in extending, reduce the memory cost in extending, but increase the risk of broken final graph. Suggested when the data is good with high and homogenous coverage."
    target_genome_size: "Hypothetical value(s) of target genome size. This is only used for estimating word size when no '-w word_size' is given. Should be a list of INTEGER numbers split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). Default: 130000 (-F embplant_pt) or 390000 (-F embplant_mt) or 13000 (-F embplant_nr) or 39000 (-F other_pt) or 13000 (-F animal_mt) or 65000 (-F fungus_mt) or 39000,390000,65000 (-F other_pt,embplant_mt,fungus_mt)"
    max_extending_len: "Maximum extending length(s) derived from the seed(s). A single value could be a non-negative number, or inf (infinite) or auto (automatic estimation). This is designed for properly stopping the extending from getting too long and saving computational resources. However, empirically, a maximum extending length value larger than 6000 would not be helpful for saving computational resources. This value would not be precise in controlling output size, especially when pre-group (followed by '-P') is turn on.In the auto mode, the maximum extending length is estimated based on the sizes of the gap regions that not covered in the seed sequences. A sequence of a closely related species would be preferred for estimating a better maximum extending length value. If you are using limited loci, e.g. rbcL gene as the seed for assembling the whole plastome (with extending length ca. 75000 >> 6000), you should set maximum extending length to inf. Should be a list of numbers/auto/no split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). Default: no."
    spades_kmer_settings: "SPAdes kmer settings. Use the same format as in SPAdes. illegal kmer values would be automatically discarded by GetOrganelle. Default: 21,55,85,115"
    spades_options: "Other SPAdes options. Use double quotation marks to include all the arguments and parameters."
    no_spades: "Disable SPAdes."
    gradient_k: "Automatically adding an extra set of kmer values according to word size. Default: False"
    ignore_k: "A kmer threshold below which, no slimming/disentangling would be executed on the result. Default: 40"
    genes: "Followed with a customized database (a fasta file or the base name of a blast database) containing or made of ONE set of protein coding genes and ribosomal RNAs extracted from ONE reference genome that you want to assemble. Should be a list of databases split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). This is optional for any organelle mentioned in '-F' but required for 'anonym'. By default, certain database(s) in /tmp/tmpkfo1qzio/lib/python3.8/site- packages/GetOrganelleLib/LabelDatabase would be used contingent on the organelle types chosen (-F). The default value no longer holds when '--genes' or '--ex- genes' is used."
    ex_genes: "This is optional and Not suggested, since non-target contigs could contribute information for better downstream coverage-based clustering. Followed with a customized database (a fasta file or the base name of a blast database) containing or made of protein coding genes and ribosomal RNAs extracted from reference genome(s) that you want to exclude. Could be a list of databases split by comma(s) but NOT required to have the same list length to organelle_type (followed by '-F'). The default value no longer holds when '-- genes' or '--ex-genes' is used."
    disentangle_df: "Depth factor for differentiate genome type of contigs. The genome type of contigs are determined by blast. Default: 10.0"
    contamination_depth: "Depth factor for confirming contamination in parallel contigs. Default: 3.0"
    contamination_similarity: "Similarity threshold for confirming contaminating contigs. Default: 0.9"
    no_degenerate: "Disable making consensus from parallel contig based on nucleotide degenerate table."
    degenerate_depth: "Depth factor for confirming parallel contigs. Default: 1.5"
    degenerate_similarity: "Similarity threshold for confirming parallel contigs. Default: 0.98"
    disentangle_time_limit: "Time limit (second) for each try of disentangling a graph file as a circular genome. Disentangling a graph as contigs is not limited. Default: 600"
    expected_max_size: "Expected maximum target genome size(s) for disentangling. Should be a list of INTEGER numbers split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). Default: 250000 (-F embplant_pt/fungus_mt), 25000 (-F embplant_nr/animal_mt), 1000000 (-F embplant_mt/other_pt),1000000,1000000,250000 (-F other_pt,embplant_mt,fungus_mt)"
    expected_min_size: "Expected minimum target genome size(s) for disentangling. Should be a list of INTEGER numbers split by comma(s) on a multi-organelle mode, with the same list length to organelle_type (followed by '-F'). Default: 10000 for all."
    reverse_lsc: "For '-F embplant_pt' with complete circular result, by default, the direction of the starting contig (usually the LSC contig) is determined as the direction with less ORFs. Choose this option to reverse the direction of the starting contig when result is circular. Actually, both directions are biologically equivalent to each other. The reordering of the direction is only for easier downstream analysis."
    max_paths_num: "Repeats would dramatically increase the number of potential isomers (paths). This option was used to export a certain amount of paths out of all possible paths per assembly graph. Default: 1000"
    maximum_threads_use: "Maximum threads to use."
    maximum_number_integer: "The maximum number (integer) of high-covered reads to be pre-grouped before extending process. pre_grouping is suggested when the whole genome coverage is shallow but the organ genome coverage is deep. The default value is 2E5. For personal computer with 8G memory, we suggest no more than 3E5. A larger number (ex. 6E5) would run faster but exhaust memory in the first few minutes. Choose 0 to disable this process."
    which_blast: "Assign the path to BLAST binary files if not added to the path. Default: try GetOrganelleDep/linux/ncbi- blast first, then $PATH"
    which_bowtie_two: "Assign the path to Bowtie2 binary files if not added to the path. Default: try GetOrganelleDep/linux/bowtie2 first, then $PATH"
    which_spades: "Assign the path to SPAdes binary files if not added to the path. Default: try GetOrganelleDep/linux/SPAdes first, then $PATH"
    which_bandage: "Assign the path to bandage binary file if not added to the path. Default: try $PATH"
    continue: "Several check points based on files produced, rather than on the log file, so keep in mind that this script will not detect the difference between this input parameters and the previous ones."
    index_in_memory: "Keep index in memory. Choose save index in memory than in disk."
    remove_duplicates: "By default this script use unique reads to extend. Choose the number of duplicates (integer) to be saved in memory. A larger number (ex. 2E7) would run faster but exhaust memory in the first few minutes. Choose 0 to disable this process. Note that whether choose or not will not disable the calling of replicate reads. Default: 10000000.0."
    flush_step: "Flush step (INTEGER OR INF) for presenting progress. For running in the background, you could set this to inf, which would disable this. Default: 54321"
    random_seed: "Default: 12345"
    verbose: "Verbose output. Choose to enable verbose running log_handler."
  }
}