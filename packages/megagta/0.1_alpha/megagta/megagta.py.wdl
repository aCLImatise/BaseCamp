version 1.0

task Megagtapy {
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
    Directory? oslash_out_dir
    Boolean? min_contig_len
    Boolean? keep_tmp_files
    Directory? continue
    Boolean? h_slash_help
    Boolean? v_slash_version
    Boolean? verbose
    String var_input
    Int pe_one
    Int pe_one_two
    Int pe_two
    String se
    String var_string
    String comma_separated
    String gene
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
    megagta_py \
      ~{var_input} \
      ~{pe_one} \
      ~{pe_one_two} \
      ~{pe_two} \
      ~{se} \
      ~{var_string} \
      ~{comma_separated} \
      ~{gene} \
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
      ~{if (g_slash_gene_list) then "-g/--gene-list" else ""} \
      ~{if (c_slash_min_count) then "-c/--min-count" else ""} \
      ~{if (k_slash_k_list) then "-k/--k-list" else ""} \
      ~{if (p_slash_prune_len) then "-p/--prune-len" else ""} \
      ~{if (lslash_low_cov_penalty) then "-l/--low-cov-penalty" else ""} \
      ~{if (max_tip_len) then "--max-tip-len" else ""} \
      ~{if (no_mercy) then "--no-mercy" else ""} \
      ~{if (m_slash_memory) then "-m/--memory" else ""} \
      ~{if (mem_flag) then "--mem-flag" else ""} \
      ~{if (use_gpu) then "--use-gpu" else ""} \
      ~{if (gpu_mem) then "--gpu-mem" else ""} \
      ~{if (t_slash_num_cpu_threads) then "-t/--num-cpu-threads" else ""} \
      ~{if (oslash_out_dir) then "-o/--out-dir" else ""} \
      ~{if (min_contig_len) then "--min-contig-len" else ""} \
      ~{if (keep_tmp_files) then "--keep-tmp-files" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if (v_slash_version) then "-v/--version" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    one: "<pe1>          comma-separated list of fasta/q paired-end #1 files, paired with files in <pe2>"
    two: "<pe2>          comma-separated list of fasta/q paired-end #2 files, paired with files in <pe1>"
    pe_commaseparated_list_interleaved: "<pe12>         comma-separated list of interleaved fasta/q paired-end files"
    r_slash_read: "<se>           comma-separated list of fasta/q single-end files"
    g_slash_gene_list: "<string>       gene list"
    c_slash_min_count: "<int>          minimum multiplicity for filtering k-mers [1]"
    k_slash_k_list: "<int,int,..>   comma-separated list of kmer size (in range 15-127)\\nthe last k must be a multiple of 3) [30,36,45]"
    p_slash_prune_len: "<int>          prune the search if the score does not improve after <int> steps [20]"
    lslash_low_cov_penalty: "<float>        penalty for coverage one edges (in [0,1]) [0.5]"
    max_tip_len: "<int>          max tip length [150]"
    no_mercy: "do not add mercy kmers"
    m_slash_memory: "<float>        max memory in byte to be used in SdBG construction [0.9]\\n(if set between 0-1, fraction of the machine's total memory)"
    mem_flag: "<int>          SdBG builder memory mode [1]\\n0: minimum; 1: moderate; others: use all memory specified by '-m/--memory'."
    use_gpu: "use GPU"
    gpu_mem: "<float>        GPU memory in byte to be used. Default: auto detect to use up all free GPU memory [0]"
    t_slash_num_cpu_threads: "<int>          number of CPU threads, at least 2. Default: auto detect to use all CPU threads [auto]"
    oslash_out_dir: "<string>       output directory [./megagta_out]"
    min_contig_len: "<int>          minimum length of contigs to output [450]"
    keep_tmp_files: "keep all temporary files"
    continue: "continue a MEGAHIT run from its last available check point.\\nplease set the output directory correctly when using this option."
    h_slash_help: "print the usage message"
    v_slash_version: "print version"
    verbose: "verbose mode"
    var_input: ""
    pe_one: ""
    pe_one_two: ""
    pe_two: ""
    se: ""
    var_string: ""
    comma_separated: ""
    gene: ""
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
    Directory out_continue = "${in_continue}"
  }
}