version 1.0

task Wtdbg2 {
  input {
    File? long_reads_sequences
    File? errorfree_sequences_file
    String? prefix_output_files
    Int? number_threads_cores
    Boolean? force_overwrite_files
    Int? choose_longest_subread
    Int? kmer_psize_p
    Float? filter_high_frequency
    Int? min_kmer_frequency
    Boolean? filter_low_frequency
    Int? max_one_gap
    Int? max_one_deviation
    Int? penalty_bin_gap
    Int? penalty_bin_deviation
    Float? min_length_alignment
    Float? min_matched
    Boolean? keep_contained_reads
    Float? max_length_variation
    Int? min_read_depth
    Boolean? quiet
    Boolean? verbose_can_multiple
    Int? cpu
    String? see_i
    String? err_free_seq
    Boolean? force
    String? prefix
    Int? km_er_f_size
    Int? km_er_p_size
    Float? km_er_depth_max
    Int? km_er_depth_min
    Boolean? km_er_depth_min_filter
    Int? km_er_sub_am_pling
    Int? aln_km_er_sampling
    Int? dp_max_gap
    Int? dp_max_var
    Int? dp_penalty_gap
    Int? dp_penalty_var
    Int? aln_min_length
    Int? aln_min_match
    Float? aln_max_var
    Int? aln_dovetail
    Int? aln_strand
    Int? aln_max_hit
    Int? aln_best_n
    Boolean? aln_no_skip
    Boolean? verbose
    Boolean? quiet
    Int? tidy_reads
    Boolean? err_free_nodes
    Int? limit_input
    Int? node_len
    Int? node_matched_bins
    Int? node_ovl
    Int? edge_min
    Boolean? drop_low_cov_edges
    Int? node_min
    Int? node_max
    Float? ttr_cut_off_ratio
    File? dump_kbm
    File? load_kbm
    File? load_alignments
    String? load_clips
    Float? load_nodes
    Int? bubble_step
    Int? tip_step
    Int? ctg_min_length
    Int? ctg_min_nodes
    Boolean? minimal_output
    Int? bin_complexity_cut_off
    Boolean? no_local_graph_analysis
    Boolean? no_read_length_sort
    Boolean? keep_isolated_nodes
    Boolean? no_read_clip
    Boolean? no_chain_ning_clip
  }
  command <<<
    wtdbg2 \
      ~{if defined(long_reads_sequences) then ("-i " +  '"' + long_reads_sequences + '"') else ""} \
      ~{if defined(errorfree_sequences_file) then ("-I " +  '"' + errorfree_sequences_file + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(number_threads_cores) then ("-t " +  '"' + number_threads_cores + '"') else ""} \
      ~{if (force_overwrite_files) then "-f" else ""} \
      ~{if defined(choose_longest_subread) then ("-L " +  '"' + choose_longest_subread + '"') else ""} \
      ~{if defined(kmer_psize_p) then ("-p " +  '"' + kmer_psize_p + '"') else ""} \
      ~{if defined(filter_high_frequency) then ("-K " +  '"' + filter_high_frequency + '"') else ""} \
      ~{if defined(min_kmer_frequency) then ("-E " +  '"' + min_kmer_frequency + '"') else ""} \
      ~{if (filter_low_frequency) then "-F" else ""} \
      ~{if defined(max_one_gap) then ("-X " +  '"' + max_one_gap + '"') else ""} \
      ~{if defined(max_one_deviation) then ("-Y " +  '"' + max_one_deviation + '"') else ""} \
      ~{if defined(penalty_bin_gap) then ("-x " +  '"' + penalty_bin_gap + '"') else ""} \
      ~{if defined(penalty_bin_deviation) then ("-y " +  '"' + penalty_bin_deviation + '"') else ""} \
      ~{if defined(min_length_alignment) then ("-l " +  '"' + min_length_alignment + '"') else ""} \
      ~{if defined(min_matched) then ("-m " +  '"' + min_matched + '"') else ""} \
      ~{if (keep_contained_reads) then "-A" else ""} \
      ~{if defined(max_length_variation) then ("-s " +  '"' + max_length_variation + '"') else ""} \
      ~{if defined(min_read_depth) then ("-e " +  '"' + min_read_depth + '"') else ""} \
      ~{if (quiet) then "-q" else ""} \
      ~{if (verbose_can_multiple) then "-v" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(see_i) then ("--input " +  '"' + see_i + '"') else ""} \
      ~{if defined(err_free_seq) then ("--err-free-seq " +  '"' + err_free_seq + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(km_er_f_size) then ("--kmer-fsize " +  '"' + km_er_f_size + '"') else ""} \
      ~{if defined(km_er_p_size) then ("--kmer-psize " +  '"' + km_er_p_size + '"') else ""} \
      ~{if defined(km_er_depth_max) then ("--kmer-depth-max " +  '"' + km_er_depth_max + '"') else ""} \
      ~{if defined(km_er_depth_min) then ("--kmer-depth-min " +  '"' + km_er_depth_min + '"') else ""} \
      ~{if (km_er_depth_min_filter) then "--kmer-depth-min-filter" else ""} \
      ~{if defined(km_er_sub_am_pling) then ("--kmer-subampling " +  '"' + km_er_sub_am_pling + '"') else ""} \
      ~{if defined(aln_km_er_sampling) then ("--aln-kmer-sampling " +  '"' + aln_km_er_sampling + '"') else ""} \
      ~{if defined(dp_max_gap) then ("--dp-max-gap " +  '"' + dp_max_gap + '"') else ""} \
      ~{if defined(dp_max_var) then ("--dp-max-var " +  '"' + dp_max_var + '"') else ""} \
      ~{if defined(dp_penalty_gap) then ("--dp-penalty-gap " +  '"' + dp_penalty_gap + '"') else ""} \
      ~{if defined(dp_penalty_var) then ("--dp-penalty-var " +  '"' + dp_penalty_var + '"') else ""} \
      ~{if defined(aln_min_length) then ("--aln-min-length " +  '"' + aln_min_length + '"') else ""} \
      ~{if defined(aln_min_match) then ("--aln-min-match " +  '"' + aln_min_match + '"') else ""} \
      ~{if defined(aln_max_var) then ("--aln-max-var " +  '"' + aln_max_var + '"') else ""} \
      ~{if defined(aln_dovetail) then ("--aln-dovetail " +  '"' + aln_dovetail + '"') else ""} \
      ~{if defined(aln_strand) then ("--aln-strand " +  '"' + aln_strand + '"') else ""} \
      ~{if defined(aln_max_hit) then ("--aln-maxhit " +  '"' + aln_max_hit + '"') else ""} \
      ~{if defined(aln_best_n) then ("--aln-bestn " +  '"' + aln_best_n + '"') else ""} \
      ~{if (aln_no_skip) then "--aln-noskip" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tidy_reads) then ("--tidy-reads " +  '"' + tidy_reads + '"') else ""} \
      ~{if (err_free_nodes) then "--err-free-nodes" else ""} \
      ~{if defined(limit_input) then ("--limit-input " +  '"' + limit_input + '"') else ""} \
      ~{if defined(node_len) then ("--node-len " +  '"' + node_len + '"') else ""} \
      ~{if defined(node_matched_bins) then ("--node-matched-bins " +  '"' + node_matched_bins + '"') else ""} \
      ~{if defined(node_ovl) then ("--node-ovl " +  '"' + node_ovl + '"') else ""} \
      ~{if defined(edge_min) then ("--edge-min " +  '"' + edge_min + '"') else ""} \
      ~{if (drop_low_cov_edges) then "--drop-low-cov-edges" else ""} \
      ~{if defined(node_min) then ("--node-min " +  '"' + node_min + '"') else ""} \
      ~{if defined(node_max) then ("--node-max " +  '"' + node_max + '"') else ""} \
      ~{if defined(ttr_cut_off_ratio) then ("--ttr-cutoff-ratio " +  '"' + ttr_cut_off_ratio + '"') else ""} \
      ~{if defined(dump_kbm) then ("--dump-kbm " +  '"' + dump_kbm + '"') else ""} \
      ~{if defined(load_kbm) then ("--load-kbm " +  '"' + load_kbm + '"') else ""} \
      ~{if defined(load_alignments) then ("--load-alignments " +  '"' + load_alignments + '"') else ""} \
      ~{if defined(load_clips) then ("--load-clips " +  '"' + load_clips + '"') else ""} \
      ~{if defined(load_nodes) then ("--load-nodes " +  '"' + load_nodes + '"') else ""} \
      ~{if defined(bubble_step) then ("--bubble-step " +  '"' + bubble_step + '"') else ""} \
      ~{if defined(tip_step) then ("--tip-step " +  '"' + tip_step + '"') else ""} \
      ~{if defined(ctg_min_length) then ("--ctg-min-length " +  '"' + ctg_min_length + '"') else ""} \
      ~{if defined(ctg_min_nodes) then ("--ctg-min-nodes " +  '"' + ctg_min_nodes + '"') else ""} \
      ~{if (minimal_output) then "--minimal-output" else ""} \
      ~{if defined(bin_complexity_cut_off) then ("--bin-complexity-cutoff " +  '"' + bin_complexity_cut_off + '"') else ""} \
      ~{if (no_local_graph_analysis) then "--no-local-graph-analysis" else ""} \
      ~{if (no_read_length_sort) then "--no-read-length-sort" else ""} \
      ~{if (keep_isolated_nodes) then "--keep-isolated-nodes" else ""} \
      ~{if (no_read_clip) then "--no-read-clip" else ""} \
      ~{if (no_chain_ning_clip) then "--no-chainning-clip" else ""}
  >>>
  parameter_meta {
    long_reads_sequences: "Long reads sequences file (REQUIRED; can be multiple), []"
    errorfree_sequences_file: "Error-free sequences file (can be multiple), []"
    prefix_output_files: "Prefix of output files (REQUIRED), []"
    number_threads_cores: "Number of threads, 0 for all cores, [4]"
    force_overwrite_files: "Force to overwrite output files"
    choose_longest_subread: "Choose the longest subread and drop reads shorter than <int> (5000 recommended for PacBio) [0]"
    kmer_psize_p: "Kmer psize, 0 <= p <= 25, [21]\\nk + p <= 25, seed is <k-mer>+<p-homopolymer-compressed>"
    filter_high_frequency: "Filter high frequency kmers, maybe repetitive, [1000]\\nif K >= 1, take the integer value as cutoff, MUST <= 65535\\nelse, mask the top fraction part high frequency kmers"
    min_kmer_frequency: "Min kmer frequency, [2]"
    filter_low_frequency: "Filter low frequency kmers by a 4G-bytes array (max_occ=3 2-bits). Here, -E must greater than 1"
    max_one_gap: "Max number of bin(256bp) in one gap, [4]"
    max_one_deviation: "Max number of bin(256bp) in one deviation, [4]"
    penalty_bin_gap: "penalty for BIN gap, [-7]"
    penalty_bin_deviation: "penalty for BIN deviation, [-21]"
    min_length_alignment: "Min length of alignment, [2048]"
    min_matched: "Min matched, [200]"
    keep_contained_reads: "Keep contained reads during alignment"
    max_length_variation: "Max length variation of two aligned fragments, [0.2]"
    min_read_depth: "Min read depth of a valid edge, [3]"
    quiet: "See -q"
    verbose_can_multiple: "Verbose (can be multiple)"
    cpu: "See -t 0, default: all cores"
    see_i: "+\\nSee -i"
    err_free_seq: "+\\nSee -I. Error-free sequences will be firstly token for nodes, if --err-free-nodes is specified, only select nodes from those sequences"
    force: "See -f"
    prefix: "See -o"
    km_er_f_size: "See -k 0"
    km_er_p_size: "See -p 21"
    km_er_depth_max: "See -K 1000"
    km_er_depth_min: "See -E"
    km_er_depth_min_filter: "See -F\\n`wtdbg` uses a 4 Gbytes array to counting the occurence (0-3) of kmers in the way of counting-bloom-filter. It will reduce memory space largely\\nOrphaned kmers won't appear in building kbm-index"
    km_er_sub_am_pling: "See -S 1"
    aln_km_er_sampling: "Select no more than n seeds in a query bin, default: 256"
    dp_max_gap: "See -X 4"
    dp_max_var: "See -Y 4"
    dp_penalty_gap: "See -x -7"
    dp_penalty_var: "See -y -21"
    aln_min_length: "See -l 2048"
    aln_min_match: "See -m 200. Here the num of matches counting basepair of the matched kmer's regions"
    aln_max_var: "See -s 0.2"
    aln_dovetail: "Retain dovetail overlaps only, the max overhang size is <--aln-dovetail>, -1 to disable filtering, default: 256"
    aln_strand: "1: forward, 2: reverse, 3: both. Please don't change the deault vaule 3, unless you exactly know what you are doing"
    aln_max_hit: "Max n hits for each read in build graph, default: 1000"
    aln_best_n: "Use best n hits for each read in build graph, 0: keep all, default: 500\\n<prefix>.alignments always store all alignments"
    aln_no_skip: "Even a read was contained in previous alignment, still align it against other reads"
    verbose: "+\\nSee -v. -vvvv will display the most detailed information"
    tidy_reads: "Default: 0. Pick longest subreads if possible. Filter reads less than <--tidy-reads>. Rename reads into 'S%010d' format. The first read is named as S0000000001\\nSet to 0 bp to disable tidy. Suggested vaule is 5000 for pacbio reads"
    err_free_nodes: "Select nodes from error-free-sequences only. E.g. you have contigs assembled from NGS-WGS reads, and long noisy reads.\\nYou can type '--err-free-seq your_ctg.fa --input your_long_reads.fa --err-free-nodes' to perform assembly somehow act as long-reads scaffolding"
    limit_input: "Limit the input sequences to at most <int> M bp. Usually for test"
    node_len: "The default value is 1024, which is times of KBM_BIN_SIZE(always equals 256 bp). It specifies the length of intervals (or call nodes after selecting).\\nkbm indexs sequences into BINs of 256 bp in size, so that many parameter should be times of 256 bp. There are: --node-len, --node-ovl, --aln-min-length, --aln-dovetail .   Other parameters are counted in BINs, --dp-max-gap, --dp-max-var ."
    node_matched_bins: "Min matched bins in a node, default:1"
    node_ovl: "Default: 256. Max overlap size between two adjacent intervals in any read. It is used in selecting best nodes representing reads in graph"
    edge_min: "Default: 3. The minimal depth of a valid edge is set to 3. In another word, Valid edges must be supported by at least 3 reads\\nWhen the sequence depth is low, have a try with --edge-min 2. Or very high, try --edge-min 4"
    drop_low_cov_edges: "Don't attempt to rescue low coverage edges"
    node_min: "Min depth of a intreval to be selected as valid node. Defaultly, this value is automaticly the same with --edge-min."
    node_max: "Nodes with too high depth will be regarded as repetitive, and be masked. Default: 200, more than 200 reads contain this node"
    ttr_cut_off_ratio: ", 0.5\\nTiny Tandom Repeat. A node located inside ttr will bring noisy in graph, should be masked. The pattern of such nodes is:\\ndepth >= <--ttr-cutoff-depth>, and none of their edges have depth greater than depth * <--ttr-cutoff-ratio 0.5>\\nset --ttr-cutoff-depth 0 to disable ttr masking"
    dump_kbm: "Dump kbm index into file for loaded by `kbm` or `wtdbg`"
    load_kbm: "Instead of reading sequences and building kbm index, which is time-consumed, loading kbm-index from already dumped file.\\nPlease note that, once kbm-index is mmaped by kbm -R <kbm-index> start, will just get the shared memory in minute time.\\nSee `kbm` -R <your_seqs.kbmidx> [start | stop]"
    load_alignments: "+\\n`wtdbg` output reads' alignments into <--prefix>.alignments, program can load them to fastly build assembly graph. Or you can offer\\nother source of alignments to `wtdbg`. When --load-alignment, will only reading long sequences but skip building kbm index\\nYou can type --load-alignments <file> more than once to load alignments from many files"
    load_clips: "Combined with --load-nodes. Load reads clips. You can find it in `wtdbg`'s <--prefix>.clps"
    load_nodes: "Load dumped nodes from previous execution for fast construct the assembly graph, should be combined with --load-clips. You can find it in `wtdbg`'s <--prefix>.1.nodes"
    bubble_step: "Max step to search a bubble, meaning the max step from the starting node to the ending node. Default: 40"
    tip_step: "Max step to search a tip, 10"
    ctg_min_length: "Min length of contigs to be output, 5000"
    ctg_min_nodes: "Min num of nodes in a contig to be ouput, 3"
    minimal_output: "Will generate as less output files (<--prefix>.*) as it can"
    bin_complexity_cut_off: "Used in filtering BINs. If a BIN has less indexed valid kmers than <--bin-complexity-cutoff 2>, masks it."
    no_local_graph_analysis: "Before building edges, for each node, local-graph-analysis reads all related reads and according nodes, and builds a local graph to judge whether to mask it\\nThe analysis aims to find repetitive nodes"
    no_read_length_sort: "Defaultly, `wtdbg` sorts input sequences by length DSC. The order of reads affects the generating of nodes in selecting important intervals"
    keep_isolated_nodes: "In graph clean, `wtdbg` normally masks isolated (orphaned) nodes"
    no_read_clip: "Defaultly, `wtdbg` clips a input sequence by analyzing its overlaps to remove high error endings, rolling-circle repeats (see PacBio CCS), and chimera.\\nWhen building edges, clipped region won't contribute. However, `wtdbg` will use them in the final linking of unitigs"
    no_chain_ning_clip: "Defaultly, performs alignments chainning in read clipping\\n** If '--aln-bestn 0 --no-read-clip', alignments will be parsed directly, and less RAM spent on recording alignments\\n"
  }
  output {
    File out_stdout = stdout()
    File out_load_alignments = "${in_load_alignments}"
  }
}