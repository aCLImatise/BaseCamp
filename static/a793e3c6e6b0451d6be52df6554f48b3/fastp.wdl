version 1.0

task Fastp {
  input {
    Boolean? unpaired_one
    Boolean? unpaired_two
    Boolean? failed_out
    Boolean? merge
    Boolean? merged_out
    Boolean? include_un_merged
    Boolean? phred_six_four
    Boolean? compression
    Boolean? stdin
    Boolean? stdout
    Boolean? interleaved_in
    Boolean? reads_to_process
    Boolean? dont_overwrite
    Boolean? fix_mgi_id
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
    Boolean? trim_poly_g
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
    Boolean? filter_by_index_one
    Boolean? filter_by_index_two
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
    Boolean? overrepresentation_analysis
    Boolean? overrepresentation_sampling
    Boolean? json
    Boolean? report_title
    Boolean? thread
    Boolean? split
    Boolean? split_by_lines
    Boolean? split_prefix_digits
    Boolean? cut_by_quality_five
    Boolean? cut_by_quality_three
    Boolean? cut_by_quality_aggressive
    Boolean? discard_un_merged
  }
  command <<<
    fastp \
      ~{true="--unpaired1" false="" unpaired_one} \
      ~{true="--unpaired2" false="" unpaired_two} \
      ~{true="--failed_out" false="" failed_out} \
      ~{true="--merge" false="" merge} \
      ~{true="--merged_out" false="" merged_out} \
      ~{true="--include_unmerged" false="" include_un_merged} \
      ~{true="--phred64" false="" phred_six_four} \
      ~{true="--compression" false="" compression} \
      ~{true="--stdin" false="" stdin} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--interleaved_in" false="" interleaved_in} \
      ~{true="--reads_to_process" false="" reads_to_process} \
      ~{true="--dont_overwrite" false="" dont_overwrite} \
      ~{true="--fix_mgi_id" false="" fix_mgi_id} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--disable_adapter_trimming" false="" disable_adapter_trimming} \
      ~{true="--adapter_sequence" false="" adapter_sequence} \
      ~{true="--adapter_sequence_r2" false="" adapter_sequence_r_two} \
      ~{true="--adapter_fasta" false="" adapter_fast_a} \
      ~{true="--detect_adapter_for_pe" false="" detect_adapter_for_pe} \
      ~{true="--trim_front1" false="" trim_front_one} \
      ~{true="--trim_tail1" false="" trim_tail_one} \
      ~{true="--max_len1" false="" max_len_one} \
      ~{true="--trim_front2" false="" trim_front_two} \
      ~{true="--trim_tail2" false="" trim_tail_two} \
      ~{true="--max_len2" false="" max_len_two} \
      ~{true="--trim_poly_g" false="" trim_poly_g} \
      ~{true="--poly_g_min_len" false="" poly_g_min_len} \
      ~{true="--disable_trim_poly_g" false="" disable_trim_poly_g} \
      ~{true="--trim_poly_x" false="" trim_poly_x} \
      ~{true="--poly_x_min_len" false="" poly_x_min_len} \
      ~{true="--cut_front" false="" cut_front} \
      ~{true="--cut_tail" false="" cut_tail} \
      ~{true="--cut_right" false="" cut_right} \
      ~{true="--cut_window_size" false="" cut_window_size} \
      ~{true="--cut_mean_quality" false="" cut_mean_quality} \
      ~{true="--cut_front_window_size" false="" cut_front_window_size} \
      ~{true="--cut_front_mean_quality" false="" cut_front_mean_quality} \
      ~{true="--cut_tail_window_size" false="" cut_tail_window_size} \
      ~{true="--cut_tail_mean_quality" false="" cut_tail_mean_quality} \
      ~{true="--cut_right_window_size" false="" cut_right_window_size} \
      ~{true="--cut_right_mean_quality" false="" cut_right_mean_quality} \
      ~{true="--disable_quality_filtering" false="" disable_quality_filtering} \
      ~{true="--qualified_quality_phred" false="" qualified_quality_phred} \
      ~{true="--unqualified_percent_limit" false="" unqualified_percent_limit} \
      ~{true="--n_base_limit" false="" n_base_limit} \
      ~{true="--average_qual" false="" average_qual} \
      ~{true="--disable_length_filtering" false="" disable_length_filtering} \
      ~{true="--length_required" false="" length_required} \
      ~{true="--length_limit" false="" length_limit} \
      ~{true="--low_complexity_filter" false="" low_complexity_filter} \
      ~{true="--complexity_threshold" false="" complexity_threshold} \
      ~{true="--filter_by_index1" false="" filter_by_index_one} \
      ~{true="--filter_by_index2" false="" filter_by_index_two} \
      ~{true="--filter_by_index_threshold" false="" filter_by_index_threshold} \
      ~{true="--correction" false="" correction} \
      ~{true="--overlap_len_require" false="" overlap_len_require} \
      ~{true="--overlap_diff_limit" false="" overlap_diff_limit} \
      ~{true="--overlap_diff_percent_limit" false="" overlap_diff_percent_limit} \
      ~{true="--umi" false="" umi} \
      ~{true="--umi_loc" false="" umi_loc} \
      ~{true="--umi_len" false="" umi_len} \
      ~{true="--umi_prefix" false="" umi_prefix} \
      ~{true="--umi_skip" false="" umi_skip} \
      ~{true="--overrepresentation_analysis" false="" overrepresentation_analysis} \
      ~{true="--overrepresentation_sampling" false="" overrepresentation_sampling} \
      ~{true="--json" false="" json} \
      ~{true="--report_title" false="" report_title} \
      ~{true="--thread" false="" thread} \
      ~{true="--split" false="" split} \
      ~{true="--split_by_lines" false="" split_by_lines} \
      ~{true="--split_prefix_digits" false="" split_prefix_digits} \
      ~{true="--cut_by_quality5" false="" cut_by_quality_five} \
      ~{true="--cut_by_quality3" false="" cut_by_quality_three} \
      ~{true="--cut_by_quality_aggressive" false="" cut_by_quality_aggressive} \
      ~{true="--discard_unmerged" false="" discard_un_merged}
  >>>
  parameter_meta {
    unpaired_one: "for PE input, if read1 passed QC but read2 not, it will be written to unpaired1. Default is to discard it. (string [=])"
    unpaired_two: "for PE input, if read2 passed QC but read1 not, it will be written to unpaired2. If --unpaired2 is same as --unpaired1 (default mode), both unpaired reads will be written to this same file. (string [=])"
    failed_out: "specify the file to store reads that cannot pass the filters. (string [=])"
    merge: "for paired-end input, merge each pair of reads into a single read if they are overlapped. The merged reads will be written to the file given by --merged_out, the unmerged reads will be written to the files specified by --out1 and --out2. The merging mode is disabled by default."
    merged_out: "in the merging mode, specify the file name to store merged output, or specify --stdout to stream the merged output (string [=])"
    include_un_merged: "in the merging mode, write the unmerged or unpaired reads to the file specified by --merge. Disabled by default."
    phred_six_four: "indicate the input is using phred64 scoring (it'll be converted to phred33, so the output will still be phred33)"
    compression: "compression level for gzip output (1 ~ 9). 1 is fastest, 9 is smallest, default is 4. (int [=4])"
    stdin: "input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also add --interleaved_in."
    stdout: "stream passing-filters reads to STDOUT. This option will result in interleaved FASTQ output for paired-end output. Disabled by default."
    interleaved_in: "indicate that <in1> is an interleaved FASTQ which contains both read1 and read2. Disabled by default."
    reads_to_process: "specify how many reads/pairs to be processed. Default 0 means process all reads. (int [=0])"
    dont_overwrite: "don't overwrite existing files. Overwritting is allowed by default."
    fix_mgi_id: "the MGI FASTQ ID format is not compatible with many BAM operation tools, enable this option to fix it."
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
    trim_poly_g: "force polyG tail trimming, by default trimming is automatically enabled for Illumina NextSeq/NovaSeq data"
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
    umi_skip: "if the UMI is in read1/read2, fastp can skip several bases following UMI, default is 0 (int [=0])"
    overrepresentation_analysis: "enable overrepresented sequence analysis."
    overrepresentation_sampling: "one in (--overrepresentation_sampling) reads will be computed for overrepresentation analysis (1~10000), smaller is slower, default is 20. (int [=20])"
    json: "the json format report file name (string [=fastp.json])"
    report_title: "should be quoted with ' or \", default is \"fastp report\" (string [=fastp report])"
    thread: "worker thread number, default is 2 (int [=2])"
    split: "split output by limiting total split file number with this option (2~999), a sequential number prefix will be added to output name ( 0001.out.fq, 0002.out.fq...), disabled by default (int [=0])"
    split_by_lines: "split output by limiting lines of each file with this option(>=1000), a sequential number prefix will be added to output name ( 0001.out.fq, 0002.out.fq...), disabled by default (long [=0])"
    split_prefix_digits: "the digits for the sequential number padding (1~10), default is 4, so the filename will be padded as 0001.xxx, 0 to disable padding (int [=4])"
    cut_by_quality_five: "DEPRECATED, use --cut_front instead."
    cut_by_quality_three: "DEPRECATED, use --cut_tail instead."
    cut_by_quality_aggressive: "DEPRECATED, use --cut_right instead."
    discard_un_merged: "DEPRECATED, no effect now, see the introduction for merging."
  }
}