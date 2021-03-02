class: CommandLineTool
id: wtdbg2.cwl
inputs:
- id: in_long_reads_file
  doc: Long reads sequences file (REQUIRED; can be multiple), []
  type: File?
  inputBinding:
    prefix: -i
- id: in_prefix_output_required
  doc: Prefix of output files (REQUIRED), []
  type: string?
  inputBinding:
    prefix: -o
- id: in_number_threads_cores
  doc: Number of threads, 0 for all cores, [4]
  type: long?
  inputBinding:
    prefix: -t
- id: in_force_overwrite_files
  doc: Force to overwrite output files
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_presets_comma_delimited
  doc: "Presets, comma delimited, []\npreset1/rsII/rs: -p 21 -S 4 -s 0.05 -L 5000\n\
    preset2: -p 0 -k 15 -AS 2 -s 0.05 -L 5000\npreset3: -p 19 -AS 2 -s 0.05 -L 5000\n\
    sequel/sq\nnanopore/ont:\n(genome size < 1G: preset2) -p 0 -k 15 -AS 2 -s 0.05\
    \ -L 5000\n(genome size >= 1G: preset3) -p 19 -AS 2 -s 0.05 -L 5000\npreset4/corrected/ccs:\
    \ -p 21 -k 0 -AS 4 -K 0.05 -s 0.5"
  type: long?
  inputBinding:
    prefix: -x
- id: in_approximate_genome_size
  doc: Approximate genome size (k/m/g suffix allowed) [0]
  type: long?
  inputBinding:
    prefix: -g
- id: in_choose_best_depth
  doc: Choose the best <float> depth from input reads(effective with -g) [50.0]
  type: double?
  inputBinding:
    prefix: -X
- id: in_choose_longest_subread
  doc: "Choose the longest subread and drop reads shorter than <int> (5000 recommended\
    \ for PacBio) [0]\nNegative integer indicate tidying read names too, e.g. -5000."
  type: long?
  inputBinding:
    prefix: -L
- id: in_kmer_psize_seed
  doc: "Kmer psize, 0 <= p <= 23, [21]\nk + p <= 25, seed is <k-mer>+<p-homopolymer-compressed>"
  type: long?
  inputBinding:
    prefix: -p
- id: in_filter_high_frequency
  doc: "Filter high frequency kmers, maybe repetitive, [1000.05]\n>= 1000 and indexing\
    \ >= (1 - 0.05) * total_kmers_count"
  type: double?
  inputBinding:
    prefix: -K
- id: in_min_length_alignment
  doc: Min length of alignment, [2048]
  type: double?
  inputBinding:
    prefix: -l
- id: in_min_matched_length
  doc: Min matched length by kmer matching, [200]
  type: double?
  inputBinding:
    prefix: -m
- id: in_enable_realignment_mode
  doc: Enable realignment mode
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_keep_contained_reads
  doc: Keep contained reads during alignment
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_min_similarity_calculated
  doc: Min similarity, calculated by kmer matched length / aligned length, [0.05]
  type: double?
  inputBinding:
    prefix: -s
- id: in_min_read_depth
  doc: Min read depth of a valid edge, [3]
  type: long?
  inputBinding:
    prefix: -e
- id: in_quiet
  doc: Quiet
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_verbose_be_multiple
  doc: Verbose (can be multiple)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_version_information
  doc: Print version information and then exit
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_cpu
  doc: 'See -t 0, default: all cores'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_input
  doc: "+\nSee -i"
  type: string?
  inputBinding:
    prefix: --input
- id: in_force
  doc: See -f
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_prefix
  doc: See -o
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_preset
  doc: See -x
  type: string?
  inputBinding:
    prefix: --preset
- id: in_km_er_f_size
  doc: See -k 0
  type: long?
  inputBinding:
    prefix: --kmer-fsize
- id: in_km_er_p_size
  doc: See -p 21
  type: long?
  inputBinding:
    prefix: --kmer-psize
- id: in_km_er_depth_max
  doc: See -K 1000.05
  type: double?
  inputBinding:
    prefix: --kmer-depth-max
- id: in_km_er_depth_min
  doc: Min kmer frequency, [2]
  type: long?
  inputBinding:
    prefix: --kmer-depth-min
- id: in_km_er_subsampling
  doc: See -S 4.0
  type: double?
  inputBinding:
    prefix: --kmer-subsampling
- id: in_kbm_parts
  doc: Split total reads into multiple parts, index one part by one to save memory,
    [1]
  type: long?
  inputBinding:
    prefix: --kbm-parts
- id: in_aln_km_er_sampling
  doc: 'Select no more than n seeds in a query bin, default: 256'
  type: long?
  inputBinding:
    prefix: --aln-kmer-sampling
- id: in_dp_max_gap
  doc: Max number of bin(256bp) in one gap, [4]
  type: long?
  inputBinding:
    prefix: --dp-max-gap
- id: in_dp_max_var
  doc: Max number of bin(256bp) in one deviation, [4]
  type: long?
  inputBinding:
    prefix: --dp-max-var
- id: in_dp_penalty_gap
  doc: Penalty for BIN gap, [-7]
  type: long?
  inputBinding:
    prefix: --dp-penalty-gap
- id: in_dp_penalty_var
  doc: Penalty for BIN deviation, [-21]
  type: long?
  inputBinding:
    prefix: --dp-penalty-var
- id: in_aln_min_length
  doc: See -l 2048
  type: long?
  inputBinding:
    prefix: --aln-min-length
- id: in_aln_min_match
  doc: See -m 200. Here the num of matches counting basepair of the matched kmer's
    regions
  type: long?
  inputBinding:
    prefix: --aln-min-match
- id: in_aln_min_similarity
  doc: See -s 0.05
  type: double?
  inputBinding:
    prefix: --aln-min-similarity
- id: in_aln_max_var
  doc: 'Max length variation of two aligned fragments, default: 0.25'
  type: double?
  inputBinding:
    prefix: --aln-max-var
- id: in_aln_dovetail
  doc: 'Retain dovetail overlaps only, the max overhang size is <--aln-dovetail>,
    the value should be times of 256, -1 to disable filtering, default: 256'
  type: long?
  inputBinding:
    prefix: --aln-dovetail
- id: in_aln_strand
  doc: "1: forward, 2: reverse, 3: both. Please don't change the deault vaule 3, unless\
    \ you exactly know what you are doing"
  type: long?
  inputBinding:
    prefix: --aln-strand
- id: in_aln_max_hit
  doc: 'Max n hits for each read in build graph, default: 1000'
  type: long?
  inputBinding:
    prefix: --aln-maxhit
- id: in_aln_best_n
  doc: "Use best n hits for each read in build graph, 0: keep all, default: 500\n\
    <prefix>.alignments always store all alignments"
  type: long?
  inputBinding:
    prefix: --aln-bestn
- id: in_realign
  doc: Enable re-alignment, see --realn-kmer-psize=15, --realn-kmer-subsampling=1,
    --realn-min-length=2048, --realn-min-match=200, --realn-min-similarity=0.1, --realn-max-var=0.25
  type: boolean?
  inputBinding:
    prefix: --realign
- id: in_real_n_km_er_p_size
  doc: Set kmer-psize in realignment, (kmer-ksize always eq 0), default:15
  type: long?
  inputBinding:
    prefix: --realn-kmer-psize
- id: in_real_n_km_er_subsampling
  doc: Set kmer-subsampling in realignment, default:1
  type: long?
  inputBinding:
    prefix: --realn-kmer-subsampling
- id: in_real_n_min_length
  doc: 'Set aln-min-length in realignment, default: 2048'
  type: long?
  inputBinding:
    prefix: --realn-min-length
- id: in_real_n_min_match
  doc: 'Set aln-min-match in realignment, default: 200'
  type: long?
  inputBinding:
    prefix: --realn-min-match
- id: in_real_n_min_similarity
  doc: 'Set aln-min-similarity in realignment, default: 0.1'
  type: double?
  inputBinding:
    prefix: --realn-min-similarity
- id: in_real_n_max_var
  doc: 'Set aln-max-var in realignment, default: 0.25'
  type: double?
  inputBinding:
    prefix: --realn-max-var
- id: in_aln_no_skip
  doc: Even a read was contained in previous alignment, still align it against other
    reads
  type: boolean?
  inputBinding:
    prefix: --aln-noskip
- id: in_keep_multiple_alignment_parts
  doc: By default, wtdbg will keep only the best alignment between two reads after
    chainning. This option will disable it, and keep multiple
  type: boolean?
  inputBinding:
    prefix: --keep-multiple-alignment-parts
- id: in_verbose
  doc: "+\nSee -v. -vvvv will display the most detailed information"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: See -q
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_limit_input
  doc: Limit the input sequences to at most <int> M bp. Usually for test
  type: long?
  inputBinding:
    prefix: --limit-input
- id: in_tidy_reads
  doc: "Default: 0. Pick longest subreads if possible. Filter reads less than <--tidy-reads>.\
    \ Please add --tidy-name or set --tidy-reads to nagetive value\nif want to rename\
    \ reads. Set to 0 bp to disable tidy. Suggested value is 5000 for pacbio RSII\
    \ reads"
  type: long?
  inputBinding:
    prefix: --tidy-reads
- id: in_tidy_name
  doc: Rename reads into 'S%010d' format. The first read is named as S0000000001
  type: boolean?
  inputBinding:
    prefix: --tidy-name
- id: in_rd_name_filter
  doc: A file contains lines of reads name to be discarded in loading. If you want
    to filter reads by yourself, please also set -X 0
  type: File?
  inputBinding:
    prefix: --rdname-filter
- id: in_rd_name_include_only
  doc: Reverse manner with --rdname-filter
  type: string?
  inputBinding:
    prefix: --rdname-includeonly
- id: in_genome_size
  doc: Provide genome size, e.g. 100.4m, 2.3g. In this version, it is used with -X/--rdcov-cutoff
    in selecting reads just after readed all.
  type: long?
  inputBinding:
    prefix: --genome-size
- id: in_rd_cov_cut_off
  doc: 'Default: 50.0. Retaining 50.0 folds of genome coverage, combined with -g and
    --rdcov-filter.'
  type: double?
  inputBinding:
    prefix: --rdcov-cutoff
- id: in_rd_cov_filter
  doc: "[0|1]\nDefault 0. Strategy 0: retaining longest reads. Strategy 1: retaining\
    \ medain length reads."
  type: boolean?
  inputBinding:
    prefix: --rdcov-filter
- id: in_err_free_nodes
  doc: "Select nodes from error-free-sequences only. E.g. you have contigs assembled\
    \ from NGS-WGS reads, and long noisy reads.\nYou can type '--err-free-seq your_ctg.fa\
    \ --input your_long_reads.fa --err-free-nodes' to perform assembly somehow act\
    \ as long-reads scaffolding"
  type: boolean?
  inputBinding:
    prefix: --err-free-nodes
- id: in_node_len
  doc: "The default value is 1024, which is times of KBM_BIN_SIZE(always equals 256\
    \ bp). It specifies the length of intervals (or call nodes after selecting).\n\
    kbm indexs sequences into BINs of 256 bp in size, so that many parameter should\
    \ be times of 256 bp. There are: --node-len, --node-ovl, --aln-min-length, --aln-dovetail\
    \ .   Other parameters are counted in BINs, --dp-max-gap, --dp-max-var ."
  type: long?
  inputBinding:
    prefix: --node-len
- id: in_node_matched_bins
  doc: Min matched bins in a node, default:1
  type: long?
  inputBinding:
    prefix: --node-matched-bins
- id: in_node_ovl
  doc: 'Default: 256. Max overlap size between two adjacent intervals in any read.
    It is used in selecting best nodes representing reads in graph'
  type: long?
  inputBinding:
    prefix: --node-ovl
- id: in_node_drop
  doc: 'Default: 0.25. Will discard an node when has more this ratio intervals are
    conflicted with previous generated node'
  type: double?
  inputBinding:
    prefix: --node-drop
- id: in_edge_min
  doc: "Default: 3. The minimal depth of a valid edge is set to 3. In another word,\
    \ Valid edges must be supported by at least 3 reads\nWhen the sequence depth is\
    \ low, have a try with --edge-min 2. Or very high, try --edge-min 4"
  type: long?
  inputBinding:
    prefix: --edge-min
- id: in_edge_max_span
  doc: 'Default: 1024 BINs. Program will build edges of length no large than 1024'
  type: long?
  inputBinding:
    prefix: --edge-max-span
- id: in_drop_low_cov_edges
  doc: Don't attempt to rescue low coverage edges
  type: boolean?
  inputBinding:
    prefix: --drop-low-cov-edges
- id: in_node_min
  doc: Min depth of an interval to be selected as valid node. Defaultly, this value
    is automaticly the same with --edge-min.
  type: long?
  inputBinding:
    prefix: --node-min
- id: in_node_max
  doc: 'Nodes with too high depth will be regarded as repetitive, and be masked. Default:
    200, more than 200 reads contain this node'
  type: long?
  inputBinding:
    prefix: --node-max
- id: in_ttr_cut_off_ratio
  doc: ", 0.5\nTiny Tandom Repeat. A node located inside ttr will bring noisy in graph,\
    \ should be masked. The pattern of such nodes is:\ndepth >= <--ttr-cutoff-depth>,\
    \ and none of their edges have depth greater than depth * <--ttr-cutoff-ratio\
    \ 0.5>\nset --ttr-cutoff-depth 0 to disable ttr masking"
  type: double?
  inputBinding:
    prefix: --ttr-cutoff-ratio
- id: in_dump_kbm
  doc: Dump kbm index into file for loaded by `kbm` or `wtdbg`
  type: File?
  inputBinding:
    prefix: --dump-kbm
- id: in_dump_seqs
  doc: "Dump kbm index (only sequences, no k-mer index) into file for loaded by `kbm`\
    \ or `wtdbg`\nPlease note: normally load it with --load-kbm, not with --load-seqs"
  type: File?
  inputBinding:
    prefix: --dump-seqs
- id: in_load_kbm
  doc: "Instead of reading sequences and building kbm index, which is time-consumed,\
    \ loading kbm-index from already dumped file.\nPlease note that, once kbm-index\
    \ is mmaped by kbm -R <kbm-index> start, will just get the shared memory in minute\
    \ time.\nSee `kbm` -R <your_seqs.kbmidx> [start | stop]"
  type: File?
  inputBinding:
    prefix: --load-kbm
- id: in_load_seqs
  doc: Similar with --load-kbm, but only use the sequences in kbmidx, and rebuild
    index in process's RAM.
  type: string?
  inputBinding:
    prefix: --load-seqs
- id: in_load_alignments
  doc: "+\n`wtdbg` output reads' alignments into <--prefix>.alignments, program can\
    \ load them to fastly build assembly graph. Or you can offer\nother source of\
    \ alignments to `wtdbg`. When --load-alignment, will only reading long sequences\
    \ but skip building kbm index\nYou can type --load-alignments <file> more than\
    \ once to load alignments from many files"
  type: File?
  inputBinding:
    prefix: --load-alignments
- id: in_load_clips
  doc: Combined with --load-nodes. Load reads clips. You can find it in `wtdbg`'s
    <--prefix>.clps
  type: string?
  inputBinding:
    prefix: --load-clips
- id: in_load_nodes
  doc: Load dumped nodes from previous execution for fast construct the assembly graph,
    should be combined with --load-clips. You can find it in `wtdbg`'s <--prefix>.1.nodes
  type: double?
  inputBinding:
    prefix: --load-nodes
- id: in_bubble_step
  doc: 'Max step to search a bubble, meaning the max step from the starting node to
    the ending node. Default: 40'
  type: long?
  inputBinding:
    prefix: --bubble-step
- id: in_tip_step
  doc: Max step to search a tip, 10
  type: long?
  inputBinding:
    prefix: --tip-step
- id: in_ctg_min_length
  doc: Min length of contigs to be output, 5000
  type: long?
  inputBinding:
    prefix: --ctg-min-length
- id: in_ctg_min_nodes
  doc: Min num of nodes in a contig to be ouput, 3
  type: long?
  inputBinding:
    prefix: --ctg-min-nodes
- id: in_minimal_output
  doc: Will generate as less output files (<--prefix>.*) as it can
  type: boolean?
  inputBinding:
    prefix: --minimal-output
- id: in_bin_complexity_cut_off
  doc: Used in filtering BINs. If a BIN has less indexed valid kmers than <--bin-complexity-cutoff
    2>, masks it.
  type: long?
  inputBinding:
    prefix: --bin-complexity-cutoff
- id: in_no_local_graph_analysis
  doc: "Before building edges, for each node, local-graph-analysis reads all related\
    \ reads and according nodes, and builds a local graph to judge whether to mask\
    \ it\nThe analysis aims to find repetitive nodes"
  type: boolean?
  inputBinding:
    prefix: --no-local-graph-analysis
- id: in_no_read_length_sort
  doc: Defaultly, `wtdbg` sorts input sequences by length DSC. The order of reads
    affects the generating of nodes in selecting important intervals
  type: boolean?
  inputBinding:
    prefix: --no-read-length-sort
- id: in_keep_isolated_nodes
  doc: In graph clean, `wtdbg` normally masks isolated (orphaned) nodes
  type: boolean?
  inputBinding:
    prefix: --keep-isolated-nodes
- id: in_no_read_clip
  doc: "Defaultly, `wtdbg` clips a input sequence by analyzing its overlaps to remove\
    \ high error endings, rolling-circle repeats (see PacBio CCS), and chimera.\n\
    When building edges, clipped region won't contribute. However, `wtdbg` will use\
    \ them in the final linking of unitigs"
  type: boolean?
  inputBinding:
    prefix: --no-read-clip
- id: in_no_chain_ning_clip
  doc: "Defaultly, performs alignments chainning in read clipping\n** If '--aln-bestn\
    \ 0 --no-read-clip', alignments will be parsed directly, and less RAM spent on\
    \ recording alignments\n"
  type: boolean?
  inputBinding:
    prefix: --no-chainning-clip
- id: in_reads_dot_fa
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_load_alignments
  doc: "+\n`wtdbg` output reads' alignments into <--prefix>.alignments, program can\
    \ load them to fastly build assembly graph. Or you can offer\nother source of\
    \ alignments to `wtdbg`. When --load-alignment, will only reading long sequences\
    \ but skip building kbm index\nYou can type --load-alignments <file> more than\
    \ once to load alignments from many files"
  type: File?
  outputBinding:
    glob: $(inputs.in_load_alignments)
hints: []
cwlVersion: v1.1
baseCommand:
- wtdbg2
