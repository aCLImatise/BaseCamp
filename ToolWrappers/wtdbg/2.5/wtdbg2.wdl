version 1.0

task Wtdbg2 {
  input {
    File? long_reads_file
    String? prefix_output_required
    Int? number_threads_cores
    Boolean? force_overwrite_files
    Int? presets_comma_delimited
    Int? approximate_genome_size
    Float? choose_best_depth
    Int? choose_longest_subread
    Int? kmer_psize_seed
    Float? filter_high_frequency
    Float? min_length_alignment
    Float? min_matched_length
    Boolean? enable_realignment_mode
    Boolean? keep_contained_reads
    Float? min_similarity_calculated
    Int? min_read_depth
    Boolean? quiet
    Boolean? verbose_be_multiple
    Boolean? print_version_information
    Int? cpu
    String? see_i
    Boolean? force
    String? prefix
    String? preset
    Int? km_er_f_size
    Int? km_er_p_size
    Float? km_er_depth_max
    Int? km_er_depth_min
    Float? km_er_subsampling
    Int? kbm_parts
    Int? aln_km_er_sampling
    Int? dp_max_gap
    Int? dp_max_var
    Int? dp_penalty_gap
    Int? dp_penalty_var
    Int? aln_min_length
    Int? aln_min_match
    Float? aln_min_similarity
    Float? aln_max_var
    Int? aln_dovetail
    Int? aln_strand
    Int? aln_max_hit
    Int? aln_best_n
    Boolean? realign
    Int? real_n_km_er_p_size
    Int? real_n_km_er_subsampling
    Int? real_n_min_length
    Int? real_n_min_match
    Float? real_n_min_similarity
    Float? real_n_max_var
    Boolean? aln_no_skip
    Boolean? keep_multiple_alignment_parts
    Boolean? verbose
    Boolean? quiet
    Int? limit_input
    Int? tidy_reads
    Boolean? tidy_name
    File? rd_name_filter
    String? rd_name_include_only
    Int? genome_size
    Float? rd_cov_cut_off
    Boolean? rd_cov_filter
    Boolean? err_free_nodes
    Int? node_len
    Int? node_matched_bins
    Int? node_ovl
    Float? node_drop
    Int? edge_min
    Int? edge_max_span
    Boolean? drop_low_cov_edges
    Int? node_min
    Int? node_max
    Float? ttr_cut_off_ratio
    File? dump_kbm
    File? dump_seqs
    File? load_kbm
    String? load_seqs
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
    String? reads_dot_fa
  }
  command <<<
    wtdbg2 \
      ~{reads_dot_fa} \
      ~{if defined(long_reads_file) then ("-i " +  '"' + long_reads_file + '"') else ""} \
      ~{if defined(prefix_output_required) then ("-o " +  '"' + prefix_output_required + '"') else ""} \
      ~{if defined(number_threads_cores) then ("-t " +  '"' + number_threads_cores + '"') else ""} \
      ~{if (force_overwrite_files) then "-f" else ""} \
      ~{if defined(presets_comma_delimited) then ("-x " +  '"' + presets_comma_delimited + '"') else ""} \
      ~{if defined(approximate_genome_size) then ("-g " +  '"' + approximate_genome_size + '"') else ""} \
      ~{if defined(choose_best_depth) then ("-X " +  '"' + choose_best_depth + '"') else ""} \
      ~{if defined(choose_longest_subread) then ("-L " +  '"' + choose_longest_subread + '"') else ""} \
      ~{if defined(kmer_psize_seed) then ("-p " +  '"' + kmer_psize_seed + '"') else ""} \
      ~{if defined(filter_high_frequency) then ("-K " +  '"' + filter_high_frequency + '"') else ""} \
      ~{if defined(min_length_alignment) then ("-l " +  '"' + min_length_alignment + '"') else ""} \
      ~{if defined(min_matched_length) then ("-m " +  '"' + min_matched_length + '"') else ""} \
      ~{if (enable_realignment_mode) then "-R" else ""} \
      ~{if (keep_contained_reads) then "-A" else ""} \
      ~{if defined(min_similarity_calculated) then ("-s " +  '"' + min_similarity_calculated + '"') else ""} \
      ~{if defined(min_read_depth) then ("-e " +  '"' + min_read_depth + '"') else ""} \
      ~{if (quiet) then "-q" else ""} \
      ~{if (verbose_be_multiple) then "-v" else ""} \
      ~{if (print_version_information) then "-V" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(see_i) then ("--input " +  '"' + see_i + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(preset) then ("--preset " +  '"' + preset + '"') else ""} \
      ~{if defined(km_er_f_size) then ("--kmer-fsize " +  '"' + km_er_f_size + '"') else ""} \
      ~{if defined(km_er_p_size) then ("--kmer-psize " +  '"' + km_er_p_size + '"') else ""} \
      ~{if defined(km_er_depth_max) then ("--kmer-depth-max " +  '"' + km_er_depth_max + '"') else ""} \
      ~{if defined(km_er_depth_min) then ("--kmer-depth-min " +  '"' + km_er_depth_min + '"') else ""} \
      ~{if defined(km_er_subsampling) then ("--kmer-subsampling " +  '"' + km_er_subsampling + '"') else ""} \
      ~{if defined(kbm_parts) then ("--kbm-parts " +  '"' + kbm_parts + '"') else ""} \
      ~{if defined(aln_km_er_sampling) then ("--aln-kmer-sampling " +  '"' + aln_km_er_sampling + '"') else ""} \
      ~{if defined(dp_max_gap) then ("--dp-max-gap " +  '"' + dp_max_gap + '"') else ""} \
      ~{if defined(dp_max_var) then ("--dp-max-var " +  '"' + dp_max_var + '"') else ""} \
      ~{if defined(dp_penalty_gap) then ("--dp-penalty-gap " +  '"' + dp_penalty_gap + '"') else ""} \
      ~{if defined(dp_penalty_var) then ("--dp-penalty-var " +  '"' + dp_penalty_var + '"') else ""} \
      ~{if defined(aln_min_length) then ("--aln-min-length " +  '"' + aln_min_length + '"') else ""} \
      ~{if defined(aln_min_match) then ("--aln-min-match " +  '"' + aln_min_match + '"') else ""} \
      ~{if defined(aln_min_similarity) then ("--aln-min-similarity " +  '"' + aln_min_similarity + '"') else ""} \
      ~{if defined(aln_max_var) then ("--aln-max-var " +  '"' + aln_max_var + '"') else ""} \
      ~{if defined(aln_dovetail) then ("--aln-dovetail " +  '"' + aln_dovetail + '"') else ""} \
      ~{if defined(aln_strand) then ("--aln-strand " +  '"' + aln_strand + '"') else ""} \
      ~{if defined(aln_max_hit) then ("--aln-maxhit " +  '"' + aln_max_hit + '"') else ""} \
      ~{if defined(aln_best_n) then ("--aln-bestn " +  '"' + aln_best_n + '"') else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if defined(real_n_km_er_p_size) then ("--realn-kmer-psize " +  '"' + real_n_km_er_p_size + '"') else ""} \
      ~{if defined(real_n_km_er_subsampling) then ("--realn-kmer-subsampling " +  '"' + real_n_km_er_subsampling + '"') else ""} \
      ~{if defined(real_n_min_length) then ("--realn-min-length " +  '"' + real_n_min_length + '"') else ""} \
      ~{if defined(real_n_min_match) then ("--realn-min-match " +  '"' + real_n_min_match + '"') else ""} \
      ~{if defined(real_n_min_similarity) then ("--realn-min-similarity " +  '"' + real_n_min_similarity + '"') else ""} \
      ~{if defined(real_n_max_var) then ("--realn-max-var " +  '"' + real_n_max_var + '"') else ""} \
      ~{if (aln_no_skip) then "--aln-noskip" else ""} \
      ~{if (keep_multiple_alignment_parts) then "--keep-multiple-alignment-parts" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(limit_input) then ("--limit-input " +  '"' + limit_input + '"') else ""} \
      ~{if defined(tidy_reads) then ("--tidy-reads " +  '"' + tidy_reads + '"') else ""} \
      ~{if (tidy_name) then "--tidy-name" else ""} \
      ~{if defined(rd_name_filter) then ("--rdname-filter " +  '"' + rd_name_filter + '"') else ""} \
      ~{if defined(rd_name_include_only) then ("--rdname-includeonly " +  '"' + rd_name_include_only + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(rd_cov_cut_off) then ("--rdcov-cutoff " +  '"' + rd_cov_cut_off + '"') else ""} \
      ~{if (rd_cov_filter) then "--rdcov-filter" else ""} \
      ~{if (err_free_nodes) then "--err-free-nodes" else ""} \
      ~{if defined(node_len) then ("--node-len " +  '"' + node_len + '"') else ""} \
      ~{if defined(node_matched_bins) then ("--node-matched-bins " +  '"' + node_matched_bins + '"') else ""} \
      ~{if defined(node_ovl) then ("--node-ovl " +  '"' + node_ovl + '"') else ""} \
      ~{if defined(node_drop) then ("--node-drop " +  '"' + node_drop + '"') else ""} \
      ~{if defined(edge_min) then ("--edge-min " +  '"' + edge_min + '"') else ""} \
      ~{if defined(edge_max_span) then ("--edge-max-span " +  '"' + edge_max_span + '"') else ""} \
      ~{if (drop_low_cov_edges) then "--drop-low-cov-edges" else ""} \
      ~{if defined(node_min) then ("--node-min " +  '"' + node_min + '"') else ""} \
      ~{if defined(node_max) then ("--node-max " +  '"' + node_max + '"') else ""} \
      ~{if defined(ttr_cut_off_ratio) then ("--ttr-cutoff-ratio " +  '"' + ttr_cut_off_ratio + '"') else ""} \
      ~{if defined(dump_kbm) then ("--dump-kbm " +  '"' + dump_kbm + '"') else ""} \
      ~{if defined(dump_seqs) then ("--dump-seqs " +  '"' + dump_seqs + '"') else ""} \
      ~{if defined(load_kbm) then ("--load-kbm " +  '"' + load_kbm + '"') else ""} \
      ~{if defined(load_seqs) then ("--load-seqs " +  '"' + load_seqs + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    long_reads_file: "Long reads sequences file (REQUIRED; can be multiple), []"
    prefix_output_required: "Prefix of output files (REQUIRED), []"
    number_threads_cores: "Number of threads, 0 for all cores, [4]"
    force_overwrite_files: "Force to overwrite output files"
    presets_comma_delimited: "Presets, comma delimited, []\\npreset1/rsII/rs: -p 21 -S 4 -s 0.05 -L 5000\\npreset2: -p 0 -k 15 -AS 2 -s 0.05 -L 5000\\npreset3: -p 19 -AS 2 -s 0.05 -L 5000\\nsequel/sq\\nnanopore/ont:\\n(genome size < 1G: preset2) -p 0 -k 15 -AS 2 -s 0.05 -L 5000\\n(genome size >= 1G: preset3) -p 19 -AS 2 -s 0.05 -L 5000\\npreset4/corrected/ccs: -p 21 -k 0 -AS 4 -K 0.05 -s 0.5"
    approximate_genome_size: "Approximate genome size (k/m/g suffix allowed) [0]"
    choose_best_depth: "Choose the best <float> depth from input reads(effective with -g) [50.0]"
    choose_longest_subread: "Choose the longest subread and drop reads shorter than <int> (5000 recommended for PacBio) [0]\\nNegative integer indicate tidying read names too, e.g. -5000."
    kmer_psize_seed: "Kmer psize, 0 <= p <= 23, [21]\\nk + p <= 25, seed is <k-mer>+<p-homopolymer-compressed>"
    filter_high_frequency: "Filter high frequency kmers, maybe repetitive, [1000.05]\\n>= 1000 and indexing >= (1 - 0.05) * total_kmers_count"
    min_length_alignment: "Min length of alignment, [2048]"
    min_matched_length: "Min matched length by kmer matching, [200]"
    enable_realignment_mode: "Enable realignment mode"
    keep_contained_reads: "Keep contained reads during alignment"
    min_similarity_calculated: "Min similarity, calculated by kmer matched length / aligned length, [0.05]"
    min_read_depth: "Min read depth of a valid edge, [3]"
    quiet: "See -q"
    verbose_be_multiple: "Verbose (can be multiple)"
    print_version_information: "Print version information and then exit"
    cpu: "See -t 0, default: all cores"
    see_i: "+\\nSee -i"
    force: "See -f"
    prefix: "See -o"
    preset: "See -x"
    km_er_f_size: "See -k 0"
    km_er_p_size: "See -p 21"
    km_er_depth_max: "See -K 1000.05"
    km_er_depth_min: "Min kmer frequency, [2]"
    km_er_subsampling: "See -S 4.0"
    kbm_parts: "Split total reads into multiple parts, index one part by one to save memory, [1]"
    aln_km_er_sampling: "Select no more than n seeds in a query bin, default: 256"
    dp_max_gap: "Max number of bin(256bp) in one gap, [4]"
    dp_max_var: "Max number of bin(256bp) in one deviation, [4]"
    dp_penalty_gap: "Penalty for BIN gap, [-7]"
    dp_penalty_var: "Penalty for BIN deviation, [-21]"
    aln_min_length: "See -l 2048"
    aln_min_match: "See -m 200. Here the num of matches counting basepair of the matched kmer's regions"
    aln_min_similarity: "See -s 0.05"
    aln_max_var: "Max length variation of two aligned fragments, default: 0.25"
    aln_dovetail: "Retain dovetail overlaps only, the max overhang size is <--aln-dovetail>, the value should be times of 256, -1 to disable filtering, default: 256"
    aln_strand: "1: forward, 2: reverse, 3: both. Please don't change the deault vaule 3, unless you exactly know what you are doing"
    aln_max_hit: "Max n hits for each read in build graph, default: 1000"
    aln_best_n: "Use best n hits for each read in build graph, 0: keep all, default: 500\\n<prefix>.alignments always store all alignments"
    realign: "Enable re-alignment, see --realn-kmer-psize=15, --realn-kmer-subsampling=1, --realn-min-length=2048, --realn-min-match=200, --realn-min-similarity=0.1, --realn-max-var=0.25"
    real_n_km_er_p_size: "Set kmer-psize in realignment, (kmer-ksize always eq 0), default:15"
    real_n_km_er_subsampling: "Set kmer-subsampling in realignment, default:1"
    real_n_min_length: "Set aln-min-length in realignment, default: 2048"
    real_n_min_match: "Set aln-min-match in realignment, default: 200"
    real_n_min_similarity: "Set aln-min-similarity in realignment, default: 0.1"
    real_n_max_var: "Set aln-max-var in realignment, default: 0.25"
    aln_no_skip: "Even a read was contained in previous alignment, still align it against other reads"
    keep_multiple_alignment_parts: "By default, wtdbg will keep only the best alignment between two reads after chainning. This option will disable it, and keep multiple"
    verbose: "+\\nSee -v. -vvvv will display the most detailed information"
    limit_input: "Limit the input sequences to at most <int> M bp. Usually for test"
    tidy_reads: "Default: 0. Pick longest subreads if possible. Filter reads less than <--tidy-reads>. Please add --tidy-name or set --tidy-reads to nagetive value\\nif want to rename reads. Set to 0 bp to disable tidy. Suggested value is 5000 for pacbio RSII reads"
    tidy_name: "Rename reads into 'S%010d' format. The first read is named as S0000000001"
    rd_name_filter: "A file contains lines of reads name to be discarded in loading. If you want to filter reads by yourself, please also set -X 0"
    rd_name_include_only: "Reverse manner with --rdname-filter"
    genome_size: "Provide genome size, e.g. 100.4m, 2.3g. In this version, it is used with -X/--rdcov-cutoff in selecting reads just after readed all."
    rd_cov_cut_off: "Default: 50.0. Retaining 50.0 folds of genome coverage, combined with -g and --rdcov-filter."
    rd_cov_filter: "[0|1]\\nDefault 0. Strategy 0: retaining longest reads. Strategy 1: retaining medain length reads."
    err_free_nodes: "Select nodes from error-free-sequences only. E.g. you have contigs assembled from NGS-WGS reads, and long noisy reads.\\nYou can type '--err-free-seq your_ctg.fa --input your_long_reads.fa --err-free-nodes' to perform assembly somehow act as long-reads scaffolding"
    node_len: "The default value is 1024, which is times of KBM_BIN_SIZE(always equals 256 bp). It specifies the length of intervals (or call nodes after selecting).\\nkbm indexs sequences into BINs of 256 bp in size, so that many parameter should be times of 256 bp. There are: --node-len, --node-ovl, --aln-min-length, --aln-dovetail .   Other parameters are counted in BINs, --dp-max-gap, --dp-max-var ."
    node_matched_bins: "Min matched bins in a node, default:1"
    node_ovl: "Default: 256. Max overlap size between two adjacent intervals in any read. It is used in selecting best nodes representing reads in graph"
    node_drop: "Default: 0.25. Will discard an node when has more this ratio intervals are conflicted with previous generated node"
    edge_min: "Default: 3. The minimal depth of a valid edge is set to 3. In another word, Valid edges must be supported by at least 3 reads\\nWhen the sequence depth is low, have a try with --edge-min 2. Or very high, try --edge-min 4"
    edge_max_span: "Default: 1024 BINs. Program will build edges of length no large than 1024"
    drop_low_cov_edges: "Don't attempt to rescue low coverage edges"
    node_min: "Min depth of an interval to be selected as valid node. Defaultly, this value is automaticly the same with --edge-min."
    node_max: "Nodes with too high depth will be regarded as repetitive, and be masked. Default: 200, more than 200 reads contain this node"
    ttr_cut_off_ratio: ", 0.5\\nTiny Tandom Repeat. A node located inside ttr will bring noisy in graph, should be masked. The pattern of such nodes is:\\ndepth >= <--ttr-cutoff-depth>, and none of their edges have depth greater than depth * <--ttr-cutoff-ratio 0.5>\\nset --ttr-cutoff-depth 0 to disable ttr masking"
    dump_kbm: "Dump kbm index into file for loaded by `kbm` or `wtdbg`"
    dump_seqs: "Dump kbm index (only sequences, no k-mer index) into file for loaded by `kbm` or `wtdbg`\\nPlease note: normally load it with --load-kbm, not with --load-seqs"
    load_kbm: "Instead of reading sequences and building kbm index, which is time-consumed, loading kbm-index from already dumped file.\\nPlease note that, once kbm-index is mmaped by kbm -R <kbm-index> start, will just get the shared memory in minute time.\\nSee `kbm` -R <your_seqs.kbmidx> [start | stop]"
    load_seqs: "Similar with --load-kbm, but only use the sequences in kbmidx, and rebuild index in process's RAM."
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
    reads_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    File out_load_alignments = "${in_load_alignments}"
  }
}