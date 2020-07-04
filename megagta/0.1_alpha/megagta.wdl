version 1.0

task Megagta.py {
  input {
    Boolean? one
    Boolean? two
    Boolean? pe_commaseparated_list_interleaved
    Boolean? r_slash_read
    Boolean? g_slash_gene_list
    Boolean? c_slash_min_count
    Boolean? k_slash_k_list
    Boolean? p_slash_prune_len
    Boolean? lslash_low_cov_penalty
    Boolean? max_tip_len
    Boolean? no_mercy
    Boolean? m_slash_memory
    Boolean? mem_flag
    Boolean? use_gpu
    Boolean? gpu_mem
    Boolean? t_slash_num_cpu_threads
    Boolean? oslash_out_dir
    Boolean? min_contig_len
    Boolean? keep_tmp_files
    Boolean? continue
    Boolean? h_slash_help
    Boolean? v_slash_version
    Boolean? verbose
  }
  command <<<
    megagta.py \
      ~{true="-1" false="" one} \
      ~{true="-2" false="" two} \
      ~{true="--12" false="" pe_commaseparated_list_interleaved} \
      ~{true="-r/--read" false="" r_slash_read} \
      ~{true="-g/--gene-list" false="" g_slash_gene_list} \
      ~{true="-c/--min-count" false="" c_slash_min_count} \
      ~{true="-k/--k-list" false="" k_slash_k_list} \
      ~{true="-p/--prune-len" false="" p_slash_prune_len} \
      ~{true="-l/--low-cov-penalty" false="" lslash_low_cov_penalty} \
      ~{true="--max-tip-len" false="" max_tip_len} \
      ~{true="--no-mercy" false="" no_mercy} \
      ~{true="-m/--memory" false="" m_slash_memory} \
      ~{true="--mem-flag" false="" mem_flag} \
      ~{true="--use-gpu" false="" use_gpu} \
      ~{true="--gpu-mem" false="" gpu_mem} \
      ~{true="-t/--num-cpu-threads" false="" t_slash_num_cpu_threads} \
      ~{true="-o/--out-dir" false="" oslash_out_dir} \
      ~{true="--min-contig-len" false="" min_contig_len} \
      ~{true="--keep-tmp-files" false="" keep_tmp_files} \
      ~{true="--continue" false="" continue} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{true="-v/--version" false="" v_slash_version} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    one: "<pe1>          comma-separated list of fasta/q paired-end #1 files, paired with files in <pe2>"
    two: "<pe2>          comma-separated list of fasta/q paired-end #2 files, paired with files in <pe1>"
    pe_commaseparated_list_interleaved: "<pe12>         comma-separated list of interleaved fasta/q paired-end files"
    r_slash_read: "<se>           comma-separated list of fasta/q single-end files"
    g_slash_gene_list: "<string>       gene list"
    c_slash_min_count: "<int>          minimum multiplicity for filtering k-mers [1]"
    k_slash_k_list: "<int,int,..>   comma-separated list of kmer size (in range 15-127) the last k must be a multiple of 3) [30,36,45]"
    p_slash_prune_len: "<int>          prune the search if the score does not improve after <int> steps [20]"
    lslash_low_cov_penalty: "<float>        penalty for coverage one edges (in [0,1]) [0.5]"
    max_tip_len: "<int>          max tip length [150]"
    no_mercy: "do not add mercy kmers"
    m_slash_memory: "<float>        max memory in byte to be used in SdBG construction [0.9] (if set between 0-1, fraction of the machine's total memory)"
    mem_flag: "<int>          SdBG builder memory mode [1] 0: minimum; 1: moderate; others: use all memory specified by '-m/--memory'."
    use_gpu: "use GPU"
    gpu_mem: "<float>        GPU memory in byte to be used. Default: auto detect to use up all free GPU memory [0]"
    t_slash_num_cpu_threads: "<int>          number of CPU threads, at least 2. Default: auto detect to use all CPU threads [auto]"
    oslash_out_dir: "<string>       output directory [./megagta_out]"
    min_contig_len: "<int>          minimum length of contigs to output [450]"
    keep_tmp_files: "keep all temporary files"
    continue: "continue a MEGAHIT run from its last available check point. please set the output directory correctly when using this option."
    h_slash_help: "print the usage message"
    v_slash_version: "print version"
    verbose: "verbose mode"
  }
}