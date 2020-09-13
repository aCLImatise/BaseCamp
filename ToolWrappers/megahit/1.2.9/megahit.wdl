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
    Directory? oslash_out_dir
    File? out_prefix
    Boolean? min_contig_len
    Boolean? keep_tmp_files
    Boolean? tmp_dir
    Directory? continue
    Boolean? test
    Boolean? h_slash_help
    Boolean? v_slash_version
    String var_input
    Int pe_one
    Int pe_one_two
    Int pe_two
    String se
    String comma_separated
    String that
    String can
    String list
    String be
    String of
    String fast_a_slash_q
    String interleaved
    String specified
    String for
    String paired_end
    String single_end
    String multiple
    String times
  }
  command <<<
    megahit \
      ~{var_input} \
      ~{pe_one} \
      ~{pe_one_two} \
      ~{pe_two} \
      ~{se} \
      ~{comma_separated} \
      ~{that} \
      ~{can} \
      ~{list} \
      ~{be} \
      ~{of} \
      ~{fast_a_slash_q} \
      ~{interleaved} \
      ~{specified} \
      ~{for} \
      ~{paired_end} \
      ~{single_end} \
      ~{multiple} \
      ~{times} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (pe_commaseparated_list_interleaved) then "--12" else ""} \
      ~{if (r_slash_read) then "-r/--read" else ""} \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (k_list) then "--k-list" else ""} \
      ~{if (k_min) then "--k-min" else ""} \
      ~{if (k_max) then "--k-max" else ""} \
      ~{if (k_step) then "--k-step" else ""} \
      ~{if (no_mercy) then "--no-mercy" else ""} \
      ~{if (bubble_level) then "--bubble-level" else ""} \
      ~{if (merge_level) then "--merge-level" else ""} \
      ~{if (prune_level) then "--prune-level" else ""} \
      ~{if (prune_depth) then "--prune-depth" else ""} \
      ~{if (disconnect_ratio) then "--disconnect-ratio" else ""} \
      ~{if (low_local_ratio) then "--low-local-ratio" else ""} \
      ~{if (max_tip_len) then "--max-tip-len" else ""} \
      ~{if (cleaning_rounds) then "--cleaning-rounds" else ""} \
      ~{if (no_local) then "--no-local" else ""} \
      ~{if (km_in_one_pass) then "--kmin-1pass" else ""} \
      ~{if (presets) then "--presets" else ""} \
      ~{if (m_slash_memory) then "-m/--memory" else ""} \
      ~{if (mem_flag) then "--mem-flag" else ""} \
      ~{if (t_slash_num_cpu_threads) then "-t/--num-cpu-threads" else ""} \
      ~{if (no_hw_accel) then "--no-hw-accel" else ""} \
      ~{if (oslash_out_dir) then "-o/--out-dir" else ""} \
      ~{if (out_prefix) then "--out-prefix" else ""} \
      ~{if (min_contig_len) then "--min-contig-len" else ""} \
      ~{if (keep_tmp_files) then "--keep-tmp-files" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (v_slash_version) then "-v/--version" else ""}
  >>>
  parameter_meta {
    one: "<pe1>          comma-separated list of fasta/q paired-end #1 files, paired with files in <pe2>"
    two: "<pe2>          comma-separated list of fasta/q paired-end #2 files, paired with files in <pe1>"
    pe_commaseparated_list_interleaved: "<pe12>         comma-separated list of interleaved fasta/q paired-end files"
    r_slash_read: "<se>           comma-separated list of fasta/q single-end files"
    min_count: "<int>          minimum multiplicity for filtering (k_min+1)-mers [2]"
    k_list: "<int,int,..>   comma-separated list of kmer size\\nall must be odd, in the range 15-255, increment <= 28)\\n[21,29,39,59,79,99,119,141]"
    k_min: "<int>          minimum kmer size (<= 255), must be odd number [21]"
    k_max: "<int>          maximum kmer size (<= 255), must be odd number [141]"
    k_step: "<int>          increment of kmer size of each iteration (<= 28), must be even number [12]"
    no_mercy: "do not add mercy kmers"
    bubble_level: "<int>          intensity of bubble merging (0-2), 0 to disable [2]"
    merge_level: "<l,s>          merge complex bubbles of length <= l*kmer_size and similarity >= s [20,0.95]"
    prune_level: "<int>          strength of low depth pruning (0-3) [2]"
    prune_depth: "<int>          remove unitigs with avg kmer depth less than this value [2]"
    disconnect_ratio: "<float>        disconnect unitigs if its depth is less than this ratio times\\nthe total depth of itself and its siblings [0.1]"
    low_local_ratio: "<float>        remove unitigs if its depth is less than this ratio times\\nthe average depth of the neighborhoods [0.2]"
    max_tip_len: "<int>          remove tips less than this value [2*k]"
    cleaning_rounds: "<int>          number of rounds for graph cleanning [5]"
    no_local: "disable local assembly"
    km_in_one_pass: "use 1pass mode to build SdBG of k_min"
    presets: "<str>          override a group of parameters; possible values:\\nmeta-sensitive: '--min-count 1 --k-list 21,29,39,49,...,129,141'\\nmeta-large: '--k-min 27 --k-max 127 --k-step 10'\\n(large & complex metagenomes, like soil)"
    m_slash_memory: "<float>        max memory in byte to be used in SdBG construction\\n(if set between 0-1, fraction of the machine's total memory) [0.9]"
    mem_flag: "<int>          SdBG builder memory mode. 0: minimum; 1: moderate;\\nothers: use all memory specified by '-m/--memory' [1]"
    t_slash_num_cpu_threads: "<int>          number of CPU threads [# of logical processors]"
    no_hw_accel: "run MEGAHIT without BMI2 and POPCNT hardware instructions"
    oslash_out_dir: "<string>       output directory [./megahit_out]"
    out_prefix: "<string>       output prefix (the contig file will be OUT_DIR/OUT_PREFIX.contigs.fa)"
    min_contig_len: "<int>          minimum length of contigs to output [200]"
    keep_tmp_files: "keep all temporary files"
    tmp_dir: "<string>       set temp directory"
    continue: "continue a MEGAHIT run from its last available check point.\\nplease set the output directory correctly when using this option."
    test: "run MEGAHIT on a toy test dataset"
    h_slash_help: "print the usage message"
    v_slash_version: "print version"
    var_input: ""
    pe_one: ""
    pe_one_two: ""
    pe_two: ""
    se: ""
    comma_separated: ""
    that: ""
    can: ""
    list: ""
    be: ""
    of: ""
    fast_a_slash_q: ""
    interleaved: ""
    specified: ""
    for: ""
    paired_end: ""
    single_end: ""
    multiple: ""
    times: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_oslash_out_dir = "${in_oslash_out_dir}"
    File out_out_prefix = "${in_out_prefix}"
    Directory out_continue = "${in_continue}"
  }
}