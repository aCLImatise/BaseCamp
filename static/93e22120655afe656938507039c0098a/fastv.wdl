version 1.0

task Fastv {
  input {
    Boolean? in_one
    Boolean? in_two
    Boolean? out_one
    Boolean? out_two
    Boolean? km_er_collection
    Boolean? km_er
    Boolean? genomes
    Boolean? positive_threshold
    Boolean? depth_threshold
    Boolean? ed_threshold
    Boolean? long_read_threshold
    Boolean? read_segment_len
    Boolean? bin_size
    Boolean? json
    Boolean? report_title
    Boolean? thread
    Boolean? phred_six_four
    Boolean? compression
    Boolean? stdin
    Boolean? stdout
    Boolean? interleaved_in
    Boolean? reads_to_process
    Boolean? dont_overwrite
    Boolean? verbose
    Boolean? disable_adapter_trimming
    Boolean? adapter_sequence
    Boolean? adapter_sequence_r_two
    Boolean? adapter_fast_a
    Boolean? detect_adapter_for_pe
    Boolean? trim_front_one
    Boolean? trim_tail_one
    Boolean? max_len_one
    Boolean? trim_front_two
    Boolean? trim_tail_two
    Boolean? max_len_two
    Boolean? poly_g_min_len
    Boolean? disable_trim_poly_g
    Boolean? trim_poly_x
    Boolean? poly_x_min_len
    Boolean? cut_front
    Boolean? cut_tail
    Boolean? cut_right
    Boolean? cut_window_size
    Boolean? cut_mean_quality
    Boolean? cut_front_window_size
    Boolean? cut_front_mean_quality
    Boolean? cut_tail_window_size
    Boolean? cut_tail_mean_quality
    Boolean? cut_right_window_size
    Boolean? cut_right_mean_quality
    Boolean? disable_quality_filtering
    Boolean? qualified_quality_phred
    Boolean? unqualified_percent_limit
    Boolean? n_base_limit
    Boolean? average_qual
    Boolean? disable_length_filtering
    Boolean? length_required
    Boolean? length_limit
    Boolean? low_complexity_filter
    Boolean? complexity_threshold
    File? filter_by_index_one
    File? filter_by_index_two
    Boolean? filter_by_index_threshold
    Boolean? correction
    Boolean? overlap_len_require
    Boolean? overlap_diff_limit
    Boolean? overlap_diff_percent_limit
    Boolean? umi
    Boolean? umi_loc
    Boolean? umi_len
    Boolean? umi_prefix
    Boolean? umi_skip
  }
  command <<<
    fastv \
      ~{if (in_one) then "--in1" else ""} \
      ~{if (in_two) then "--in2" else ""} \
      ~{if (out_one) then "--out1" else ""} \
      ~{if (out_two) then "--out2" else ""} \
      ~{if (km_er_collection) then "--kmer_collection" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if (genomes) then "--genomes" else ""} \
      ~{if (positive_threshold) then "--positive_threshold" else ""} \
      ~{if (depth_threshold) then "--depth_threshold" else ""} \
      ~{if (ed_threshold) then "--ed_threshold" else ""} \
      ~{if (long_read_threshold) then "--long_read_threshold" else ""} \
      ~{if (read_segment_len) then "--read_segment_len" else ""} \
      ~{if (bin_size) then "--bin_size" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (report_title) then "--report_title" else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (compression) then "--compression" else ""} \
      ~{if (stdin) then "--stdin" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (interleaved_in) then "--interleaved_in" else ""} \
      ~{if (reads_to_process) then "--reads_to_process" else ""} \
      ~{if (dont_overwrite) then "--dont_overwrite" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (disable_adapter_trimming) then "--disable_adapter_trimming" else ""} \
      ~{if (adapter_sequence) then "--adapter_sequence" else ""} \
      ~{if (adapter_sequence_r_two) then "--adapter_sequence_r2" else ""} \
      ~{if (adapter_fast_a) then "--adapter_fasta" else ""} \
      ~{if (detect_adapter_for_pe) then "--detect_adapter_for_pe" else ""} \
      ~{if (trim_front_one) then "--trim_front1" else ""} \
      ~{if (trim_tail_one) then "--trim_tail1" else ""} \
      ~{if (max_len_one) then "--max_len1" else ""} \
      ~{if (trim_front_two) then "--trim_front2" else ""} \
      ~{if (trim_tail_two) then "--trim_tail2" else ""} \
      ~{if (max_len_two) then "--max_len2" else ""} \
      ~{if (poly_g_min_len) then "--poly_g_min_len" else ""} \
      ~{if (disable_trim_poly_g) then "--disable_trim_poly_g" else ""} \
      ~{if (trim_poly_x) then "--trim_poly_x" else ""} \
      ~{if (poly_x_min_len) then "--poly_x_min_len" else ""} \
      ~{if (cut_front) then "--cut_front" else ""} \
      ~{if (cut_tail) then "--cut_tail" else ""} \
      ~{if (cut_right) then "--cut_right" else ""} \
      ~{if (cut_window_size) then "--cut_window_size" else ""} \
      ~{if (cut_mean_quality) then "--cut_mean_quality" else ""} \
      ~{if (cut_front_window_size) then "--cut_front_window_size" else ""} \
      ~{if (cut_front_mean_quality) then "--cut_front_mean_quality" else ""} \
      ~{if (cut_tail_window_size) then "--cut_tail_window_size" else ""} \
      ~{if (cut_tail_mean_quality) then "--cut_tail_mean_quality" else ""} \
      ~{if (cut_right_window_size) then "--cut_right_window_size" else ""} \
      ~{if (cut_right_mean_quality) then "--cut_right_mean_quality" else ""} \
      ~{if (disable_quality_filtering) then "--disable_quality_filtering" else ""} \
      ~{if (qualified_quality_phred) then "--qualified_quality_phred" else ""} \
      ~{if (unqualified_percent_limit) then "--unqualified_percent_limit" else ""} \
      ~{if (n_base_limit) then "--n_base_limit" else ""} \
      ~{if (average_qual) then "--average_qual" else ""} \
      ~{if (disable_length_filtering) then "--disable_length_filtering" else ""} \
      ~{if (length_required) then "--length_required" else ""} \
      ~{if (length_limit) then "--length_limit" else ""} \
      ~{if (low_complexity_filter) then "--low_complexity_filter" else ""} \
      ~{if (complexity_threshold) then "--complexity_threshold" else ""} \
      ~{if (filter_by_index_one) then "--filter_by_index1" else ""} \
      ~{if (filter_by_index_two) then "--filter_by_index2" else ""} \
      ~{if (filter_by_index_threshold) then "--filter_by_index_threshold" else ""} \
      ~{if (correction) then "--correction" else ""} \
      ~{if (overlap_len_require) then "--overlap_len_require" else ""} \
      ~{if (overlap_diff_limit) then "--overlap_diff_limit" else ""} \
      ~{if (overlap_diff_percent_limit) then "--overlap_diff_percent_limit" else ""} \
      ~{if (umi) then "--umi" else ""} \
      ~{if (umi_loc) then "--umi_loc" else ""} \
      ~{if (umi_len) then "--umi_len" else ""} \
      ~{if (umi_prefix) then "--umi_prefix" else ""} \
      ~{if (umi_skip) then "--umi_skip" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastv:0.8.1--he513fc3_0"
  }
  parameter_meta {
    in_one: "read1 input file name (string [=])"
    in_two: "read2 input file name (string [=])"
    out_one: "file name to store read1 with on-target sequences (string [=])"
    out_two: "file name to store read2 with on-target sequences (string [=])"
    km_er_collection: "the unique k-mer collection file in fasta format, see an example: http://opengene.org/kmer_collection.fasta (string [=])"
    km_er: "the unique k-mer file of the detection target in fasta format. data/SARS-CoV-2.kmer.fa will be used if none of k-mer/Genomes/k-mer_Collection file is specified (string [=])"
    genomes: "the genomes file of the detection target in fasta format. data/SARS-CoV-2.genomes.fa will be used if none of k-mer/Genomes/k-mer_Collection file is specified (string [=])"
    positive_threshold: "the data is considered as POSITIVE, when its mean coverage of unique kmer >= positive_threshold (0.001 ~ 100). 0.1 by default. (float [=0.1])"
    depth_threshold: "For coverage calculation. A region is considered covered when its mean depth >= depth_threshold (0.001 ~ 1000). 1.0 by default. (float [=1])"
    ed_threshold: "If the edit distance of a sequence and a genome region is <=ed_threshold, then consider it a match (0 ~ 50). 8 by default. (int [=8])"
    long_read_threshold: "A read will be considered as long read if its length >= long_read_threshold (100 ~ 10000). 200 by default. (int [=200])"
    read_segment_len: "A long read will be splitted to read segments, with each <= read_segment_len (50 ~ 5000, should be < long_read_threshold). 100 by default. (int [=100])"
    bin_size: "For coverage calculation. The genome is splitted to many bins, with each bin has a length of bin_size (1 ~ 100000), default 0 means adaptive. (int [=0])"
    json: "the json format report file name (string [=fastv.json])"
    report_title: "should be quoted with ' or \\\", default is \\\"fastv report\\\" (string [=fastv report])"
    thread: "worker thread number, default is 4 (int [=4])"
    phred_six_four: "indicate the input is using phred64 scoring (it'll be converted to phred33, so the output will still be phred33)"
    compression: "compression level for gzip output (1 ~ 9). 1 is fastest, 9 is smallest, default is 4. (int [=4])"
    stdin: "input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also add --interleaved_in."
    stdout: "stream passing-filters reads to STDOUT. This option will result in interleaved FASTQ output for paired-end output. Disabled by default."
    interleaved_in: "indicate that <in1> is an interleaved FASTQ which contains both read1 and read2. Disabled by default."
    reads_to_process: "specify how many reads/pairs to be processed. Default 0 means process all reads. (int [=0])"
    dont_overwrite: "don't overwrite existing files. Overwritting is allowed by default."
    verbose: "output verbose log information (i.e. when every 1M reads are processed)."
    disable_adapter_trimming: "adapter trimming is enabled by default. If this option is specified, adapter trimming is disabled"
    adapter_sequence: "the adapter for read1. For SE data, if not specified, the adapter will be auto-detected. For PE data, this is used if R1/R2 are found not overlapped. (string [=auto])"
    adapter_sequence_r_two: "the adapter for read2 (PE data only). This is used if R1/R2 are found not overlapped. If not specified, it will be the same as <adapter_sequence> (string [=auto])"
    adapter_fast_a: "specify a FASTA file to trim both read1 and read2 (if PE) by all the sequences in this FASTA file (string [=])"
    detect_adapter_for_pe: "by default, the auto-detection for adapter is for SE data input only, turn on this option to enable it for PE data."
    trim_front_one: "trimming how many bases in front for read1, default is 0 (int [=0])"
    trim_tail_one: "trimming how many bases in tail for read1, default is 0 (int [=0])"
    max_len_one: "if read1 is longer than max_len1, then trim read1 at its tail to make it as long as max_len1. Default 0 means no limitation (int [=0])"
    trim_front_two: "trimming how many bases in front for read2. If it's not specified, it will follow read1's settings (int [=0])"
    trim_tail_two: "trimming how many bases in tail for read2. If it's not specified, it will follow read1's settings (int [=0])"
    max_len_two: "if read2 is longer than max_len2, then trim read2 at its tail to make it as long as max_len2. Default 0 means no limitation. If it's not specified, it will follow read1's settings (int [=0])"
    poly_g_min_len: "the minimum length to detect polyG in the read tail. 10 by default. (int [=10])"
    disable_trim_poly_g: "disable polyG tail trimming, by default trimming is automatically enabled for Illumina NextSeq/NovaSeq data"
    trim_poly_x: "enable polyX trimming in 3' ends."
    poly_x_min_len: "the minimum length to detect polyX in the read tail. 10 by default. (int [=10])"
    cut_front: "move a sliding window from front (5') to tail, drop the bases in the window if its mean quality < threshold, stop otherwise."
    cut_tail: "move a sliding window from tail (3') to front, drop the bases in the window if its mean quality < threshold, stop otherwise."
    cut_right: "move a sliding window from front to tail, if meet one window with mean quality < threshold, drop the bases in the window and the right part, and then stop."
    cut_window_size: "the window size option shared by cut_front, cut_tail or cut_sliding. Range: 1~1000, default: 4 (int [=4])"
    cut_mean_quality: "the mean quality requirement option shared by cut_front, cut_tail or cut_sliding. Range: 1~36 default: 20 (Q20) (int [=20])"
    cut_front_window_size: "the window size option of cut_front, default to cut_window_size if not specified (int [=4])"
    cut_front_mean_quality: "the mean quality requirement option for cut_front, default to cut_mean_quality if not specified (int [=20])"
    cut_tail_window_size: "the window size option of cut_tail, default to cut_window_size if not specified (int [=4])"
    cut_tail_mean_quality: "the mean quality requirement option for cut_tail, default to cut_mean_quality if not specified (int [=20])"
    cut_right_window_size: "the window size option of cut_right, default to cut_window_size if not specified (int [=4])"
    cut_right_mean_quality: "the mean quality requirement option for cut_right, default to cut_mean_quality if not specified (int [=20])"
    disable_quality_filtering: "quality filtering is enabled by default. If this option is specified, quality filtering is disabled"
    qualified_quality_phred: "the quality value that a base is qualified. Default 15 means phred quality >=Q15 is qualified. (int [=15])"
    unqualified_percent_limit: "how many percents of bases are allowed to be unqualified (0~100). Default 40 means 40% (int [=40])"
    n_base_limit: "if one read's number of N base is >n_base_limit, then this read/pair is discarded. Default is 5 (int [=5])"
    average_qual: "if one read's average quality score <avg_qual, then this read/pair is discarded. Default 0 means no requirement (int [=0])"
    disable_length_filtering: "length filtering is enabled by default. If this option is specified, length filtering is disabled"
    length_required: "reads shorter than length_required will be discarded, default is 15. (int [=15])"
    length_limit: "reads longer than length_limit will be discarded, default 0 means no limitation. (int [=0])"
    low_complexity_filter: "enable low complexity filter. The complexity is defined as the percentage of base that is different from its next base (base[i] != base[i+1])."
    complexity_threshold: "the threshold for low complexity filter (0~100). Default is 30, which means 30% complexity is required. (int [=30])"
    filter_by_index_one: "specify a file contains a list of barcodes of index1 to be filtered out, one barcode per line (string [=])"
    filter_by_index_two: "specify a file contains a list of barcodes of index2 to be filtered out, one barcode per line (string [=])"
    filter_by_index_threshold: "the allowed difference of index barcode for index filtering, default 0 means completely identical. (int [=0])"
    correction: "enable base correction in overlapped regions (only for PE data), default is disabled"
    overlap_len_require: "the minimum length to detect overlapped region of PE reads. This will affect overlap analysis based PE merge, adapter trimming and correction. 30 by default. (int [=30])"
    overlap_diff_limit: "the maximum number of mismatched bases to detect overlapped region of PE reads. This will affect overlap analysis based PE merge, adapter trimming and correction. 5 by default. (int [=5])"
    overlap_diff_percent_limit: "the maximum percentage of mismatched bases to detect overlapped region of PE reads. This will affect overlap analysis based PE merge, adapter trimming and correction. Default 20 means 20%. (int [=20])"
    umi: "enable unique molecular identifier (UMI) preprocessing"
    umi_loc: "specify the location of UMI, can be (index1/index2/read1/read2/per_index/per_read, default is none (string [=])"
    umi_len: "if the UMI is in read1/read2, its length should be provided (int [=0])"
    umi_prefix: "if specified, an underline will be used to connect prefix and UMI (i.e. prefix=UMI, UMI=AATTCG, final=UMI_AATTCG). No prefix by default (string [=])"
    umi_skip: "if the UMI is in read1/read2, fastv can skip several bases following UMI, default is 0 (int [=0])"
  }
  output {
    File out_stdout = stdout()
    File out_filter_by_index_one = "${in_filter_by_index_one}"
    File out_filter_by_index_two = "${in_filter_by_index_two}"
  }
}