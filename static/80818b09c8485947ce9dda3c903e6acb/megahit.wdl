version 1.0

task Megahit {
  input {
    Boolean? one
    Boolean? two
    Boolean? pe_commaseparated_list_interleaved
    Boolean? r_slash_read
    Boolean? min_count
    Boolean? k_list
    Boolean? k_min
    Boolean? k_max
    Boolean? k_step
    Boolean? no_mercy
    Boolean? bubble_level
    Boolean? merge_level
    Boolean? prune_level
    Boolean? prune_depth
    Boolean? disconnect_ratio
    Boolean? low_local_ratio
    Boolean? max_tip_len
    Boolean? cleaning_rounds
    Boolean? no_local
    Boolean? km_in_one_pass
    Boolean? presets
    Boolean? m_slash_memory
    Boolean? mem_flag
    Boolean? t_slash_num_cpu_threads
    Boolean? no_hw_accel
    Boolean? oslash_out_dir
    Boolean? out_prefix
    Boolean? min_contig_len
    Boolean? keep_tmp_files
    Boolean? tmp_dir
    Boolean? continue
    Boolean? test
    Boolean? h_slash_help
    Boolean? v_slash_version
  }
  command <<<
    megahit \
      ~{true="-1" false="" one} \
      ~{true="-2" false="" two} \
      ~{true="--12" false="" pe_commaseparated_list_interleaved} \
      ~{true="-r/--read" false="" r_slash_read} \
      ~{true="--min-count" false="" min_count} \
      ~{true="--k-list" false="" k_list} \
      ~{true="--k-min" false="" k_min} \
      ~{true="--k-max" false="" k_max} \
      ~{true="--k-step" false="" k_step} \
      ~{true="--no-mercy" false="" no_mercy} \
      ~{true="--bubble-level" false="" bubble_level} \
      ~{true="--merge-level" false="" merge_level} \
      ~{true="--prune-level" false="" prune_level} \
      ~{true="--prune-depth" false="" prune_depth} \
      ~{true="--disconnect-ratio" false="" disconnect_ratio} \
      ~{true="--low-local-ratio" false="" low_local_ratio} \
      ~{true="--max-tip-len" false="" max_tip_len} \
      ~{true="--cleaning-rounds" false="" cleaning_rounds} \
      ~{true="--no-local" false="" no_local} \
      ~{true="--kmin-1pass" false="" km_in_one_pass} \
      ~{true="--presets" false="" presets} \
      ~{true="-m/--memory" false="" m_slash_memory} \
      ~{true="--mem-flag" false="" mem_flag} \
      ~{true="-t/--num-cpu-threads" false="" t_slash_num_cpu_threads} \
      ~{true="--no-hw-accel" false="" no_hw_accel} \
      ~{true="-o/--out-dir" false="" oslash_out_dir} \
      ~{true="--out-prefix" false="" out_prefix} \
      ~{true="--min-contig-len" false="" min_contig_len} \
      ~{true="--keep-tmp-files" false="" keep_tmp_files} \
      ~{true="--tmp-dir" false="" tmp_dir} \
      ~{true="--continue" false="" continue} \
      ~{true="--test" false="" test} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{true="-v/--version" false="" v_slash_version}
  >>>
  parameter_meta {
    one: "<pe1>          comma-separated list of fasta/q paired-end #1 files, paired with files in <pe2>"
    two: "<pe2>          comma-separated list of fasta/q paired-end #2 files, paired with files in <pe1>"
    pe_commaseparated_list_interleaved: "<pe12>         comma-separated list of interleaved fasta/q paired-end files"
    r_slash_read: "<se>           comma-separated list of fasta/q single-end files"
    min_count: "<int>          minimum multiplicity for filtering (k_min+1)-mers [2]"
    k_list: "<int,int,..>   comma-separated list of kmer size all must be odd, in the range 15-255, increment <= 28) [21,29,39,59,79,99,119,141]"
    k_min: "<int>          minimum kmer size (<= 255), must be odd number [21]"
    k_max: "<int>          maximum kmer size (<= 255), must be odd number [141]"
    k_step: "<int>          increment of kmer size of each iteration (<= 28), must be even number [12]"
    no_mercy: "do not add mercy kmers"
    bubble_level: "<int>          intensity of bubble merging (0-2), 0 to disable [2]"
    merge_level: "<l,s>          merge complex bubbles of length <= l*kmer_size and similarity >= s [20,0.95]"
    prune_level: "<int>          strength of low depth pruning (0-3) [2]"
    prune_depth: "<int>          remove unitigs with avg kmer depth less than this value [2]"
    disconnect_ratio: "<float>        disconnect unitigs if its depth is less than this ratio times  the total depth of itself and its siblings [0.1]  "
    low_local_ratio: "<float>        remove unitigs if its depth is less than this ratio times the average depth of the neighborhoods [0.2]"
    max_tip_len: "<int>          remove tips less than this value [2*k]"
    cleaning_rounds: "<int>          number of rounds for graph cleanning [5]"
    no_local: "disable local assembly"
    km_in_one_pass: "use 1pass mode to build SdBG of k_min"
    presets: "<str>          override a group of parameters; possible values: meta-sensitive: '--min-count 1 --k-list 21,29,39,49,...,129,141' meta-large: '--k-min 27 --k-max 127 --k-step 10' (large & complex metagenomes, like soil)"
    m_slash_memory: "<float>        max memory in byte to be used in SdBG construction (if set between 0-1, fraction of the machine's total memory) [0.9]"
    mem_flag: "<int>          SdBG builder memory mode. 0: minimum; 1: moderate; others: use all memory specified by '-m/--memory' [1]"
    t_slash_num_cpu_threads: "<int>          number of CPU threads [# of logical processors]"
    no_hw_accel: "run MEGAHIT without BMI2 and POPCNT hardware instructions"
    oslash_out_dir: "<string>       output directory [./megahit_out]"
    out_prefix: "<string>       output prefix (the contig file will be OUT_DIR/OUT_PREFIX.contigs.fa)"
    min_contig_len: "<int>          minimum length of contigs to output [200]"
    keep_tmp_files: "keep all temporary files"
    tmp_dir: "<string>       set temp directory"
    continue: "continue a MEGAHIT run from its last available check point. please set the output directory correctly when using this option."
    test: "run MEGAHIT on a toy test dataset"
    h_slash_help: "print the usage message"
    v_slash_version: "print version"
  }
}