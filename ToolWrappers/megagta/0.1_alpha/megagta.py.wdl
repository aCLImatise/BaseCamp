version 1.0

task Megagtapy {
  input {
    Boolean? one
    Boolean? two
    Boolean? commaseparated_list_interleaved
    Boolean? read
    Boolean? gene_list
    Boolean? min_count
    Boolean? k_list
    Boolean? prune_len
    Boolean? low_cov_penalty
    Boolean? max_tip_len
    Boolean? no_mercy
    Boolean? memory
    Boolean? mem_flag
    Boolean? use_gpu
    Boolean? gpu_mem
    Boolean? num_cpu_threads
    Directory? out_dir
    Boolean? min_contig_len
    Boolean? keep_tmp_files
    Directory? continue
    Boolean? verbose
    String var_input
    Int pe_one
    Int pe_one_two
    Int pe_two
    String comma_separated
    String that
    String can
    String list
    String be
    String of
    String fast_a
    String interleaved
    String specified
    String for
    String multiple
    String times
  }
  command <<<
    megagta_py \
      ~{var_input} \
      ~{pe_one} \
      ~{pe_one_two} \
      ~{pe_two} \
      ~{comma_separated} \
      ~{that} \
      ~{can} \
      ~{list} \
      ~{be} \
      ~{of} \
      ~{fast_a} \
      ~{interleaved} \
      ~{specified} \
      ~{for} \
      ~{multiple} \
      ~{times} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (commaseparated_list_interleaved) then "--12" else ""} \
      ~{if (read) then "--read" else ""} \
      ~{if (gene_list) then "--gene-list" else ""} \
      ~{if (min_count) then "--min-count" else ""} \
      ~{if (k_list) then "--k-list" else ""} \
      ~{if (prune_len) then "--prune-len" else ""} \
      ~{if (low_cov_penalty) then "--low-cov-penalty" else ""} \
      ~{if (max_tip_len) then "--max-tip-len" else ""} \
      ~{if (no_mercy) then "--no-mercy" else ""} \
      ~{if (memory) then "--memory" else ""} \
      ~{if (mem_flag) then "--mem-flag" else ""} \
      ~{if (use_gpu) then "--use-gpu" else ""} \
      ~{if (gpu_mem) then "--gpu-mem" else ""} \
      ~{if (num_cpu_threads) then "--num-cpu-threads" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (min_contig_len) then "--min-contig-len" else ""} \
      ~{if (keep_tmp_files) then "--keep-tmp-files" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    one: "<pe1>          comma-separated list of fasta/q paired-end #1 files, paired with files in <pe2>"
    two: "<pe2>          comma-separated list of fasta/q paired-end #2 files, paired with files in <pe1>"
    commaseparated_list_interleaved: "<pe12>         comma-separated list of interleaved fasta/q paired-end files"
    read: "<se>           comma-separated list of fasta/q single-end files"
    gene_list: "<string>       gene list"
    min_count: "<int>          minimum multiplicity for filtering k-mers [1]"
    k_list: "<int,int,..>   comma-separated list of kmer size (in range 15-127)\\nthe last k must be a multiple of 3) [30,36,45]"
    prune_len: "<int>          prune the search if the score does not improve after <int> steps [20]"
    low_cov_penalty: "<float>        penalty for coverage one edges (in [0,1]) [0.5]"
    max_tip_len: "<int>          max tip length [150]"
    no_mercy: "do not add mercy kmers"
    memory: "<float>        max memory in byte to be used in SdBG construction [0.9]\\n(if set between 0-1, fraction of the machine's total memory)"
    mem_flag: "<int>          SdBG builder memory mode [1]\\n0: minimum; 1: moderate; others: use all memory specified by '-m/--memory'."
    use_gpu: "use GPU"
    gpu_mem: "<float>        GPU memory in byte to be used. Default: auto detect to use up all free GPU memory [0]"
    num_cpu_threads: "<int>          number of CPU threads, at least 2. Default: auto detect to use all CPU threads [auto]"
    out_dir: "<string>       output directory [./megagta_out]"
    min_contig_len: "<int>          minimum length of contigs to output [450]"
    keep_tmp_files: "keep all temporary files"
    continue: "continue a MEGAHIT run from its last available check point.\\nplease set the output directory correctly when using this option."
    verbose: "verbose mode"
    var_input: ""
    pe_one: ""
    pe_one_two: ""
    pe_two: ""
    comma_separated: ""
    that: ""
    can: ""
    list: ""
    be: ""
    of: ""
    fast_a: ""
    interleaved: ""
    specified: ""
    for: ""
    multiple: ""
    times: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
    Directory out_continue = "${in_continue}"
  }
}