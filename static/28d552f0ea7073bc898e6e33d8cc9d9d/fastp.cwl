class: CommandLineTool
id: fastp.cwl
inputs:
- id: unpaired_1
  doc: for PE input, if read1 passed QC but read2 not, it will be written to unpaired1.
    Default is to discard it. (string [=])
  type: boolean
  inputBinding:
    prefix: --unpaired1
- id: unpaired_2
  doc: for PE input, if read2 passed QC but read1 not, it will be written to unpaired2.
    If --unpaired2 is same as --unpaired1 (default mode), both unpaired reads will
    be written to this same file. (string [=])
  type: boolean
  inputBinding:
    prefix: --unpaired2
- id: failed_out
  doc: specify the file to store reads that cannot pass the filters. (string [=])
  type: boolean
  inputBinding:
    prefix: --failed_out
- id: merge
  doc: for paired-end input, merge each pair of reads into a single read if they are
    overlapped. The merged reads will be written to the file given by --merged_out,
    the unmerged reads will be written to the files specified by --out1 and --out2.
    The merging mode is disabled by default.
  type: boolean
  inputBinding:
    prefix: --merge
- id: merged_out
  doc: in the merging mode, specify the file name to store merged output, or specify
    --stdout to stream the merged output (string [=])
  type: boolean
  inputBinding:
    prefix: --merged_out
- id: include_un_merged
  doc: in the merging mode, write the unmerged or unpaired reads to the file specified
    by --merge. Disabled by default.
  type: boolean
  inputBinding:
    prefix: --include_unmerged
- id: stdin
  doc: input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also
    add --interleaved_in.
  type: boolean
  inputBinding:
    prefix: --stdin
- id: stdout
  doc: stream passing-filters reads to STDOUT. This option will result in interleaved
    FASTQ output for paired-end output. Disabled by default.
  type: boolean
  inputBinding:
    prefix: --stdout
- id: interleaved_in
  doc: indicate that <in1> is an interleaved FASTQ which contains both read1 and read2.
    Disabled by default.
  type: boolean
  inputBinding:
    prefix: --interleaved_in
- id: reads_to_process
  doc: specify how many reads/pairs to be processed. Default 0 means process all reads.
    (int [=0])
  type: boolean
  inputBinding:
    prefix: --reads_to_process
- id: dont_overwrite
  doc: don't overwrite existing files. Overwritting is allowed by default.
  type: boolean
  inputBinding:
    prefix: --dont_overwrite
- id: fix_mgi_id
  doc: the MGI FASTQ ID format is not compatible with many BAM operation tools, enable
    this option to fix it.
  type: boolean
  inputBinding:
    prefix: --fix_mgi_id
- id: verbose
  doc: output verbose log information (i.e. when every 1M reads are processed).
  type: boolean
  inputBinding:
    prefix: --verbose
- id: disable_adapter_trimming
  doc: adapter trimming is enabled by default. If this option is specified, adapter
    trimming is disabled
  type: boolean
  inputBinding:
    prefix: --disable_adapter_trimming
- id: adapter_sequence
  doc: the adapter for read1. For SE data, if not specified, the adapter will be auto-detected.
    For PE data, this is used if R1/R2 are found not overlapped. (string [=auto])
  type: boolean
  inputBinding:
    prefix: --adapter_sequence
- id: adapter_sequence_r2
  doc: the adapter for read2 (PE data only). This is used if R1/R2 are found not overlapped.
    If not specified, it will be the same as <adapter_sequence> (string [=auto])
  type: boolean
  inputBinding:
    prefix: --adapter_sequence_r2
- id: adapter_fast_a
  doc: specify a FASTA file to trim both read1 and read2 (if PE) by all the sequences
    in this FASTA file (string [=])
  type: boolean
  inputBinding:
    prefix: --adapter_fasta
- id: detect_adapter_for_pe
  doc: by default, the auto-detection for adapter is for SE data input only, turn
    on this option to enable it for PE data.
  type: boolean
  inputBinding:
    prefix: --detect_adapter_for_pe
- id: trim_front_1
  doc: trimming how many bases in front for read1, default is 0 (int [=0])
  type: boolean
  inputBinding:
    prefix: --trim_front1
- id: trim_tail1
  doc: trimming how many bases in tail for read1, default is 0 (int [=0])
  type: boolean
  inputBinding:
    prefix: --trim_tail1
- id: max_len1
  doc: if read1 is longer than max_len1, then trim read1 at its tail to make it as
    long as max_len1. Default 0 means no limitation (int [=0])
  type: boolean
  inputBinding:
    prefix: --max_len1
- id: trim_front_2
  doc: trimming how many bases in front for read2. If it's not specified, it will
    follow read1's settings (int [=0])
  type: boolean
  inputBinding:
    prefix: --trim_front2
- id: trim_tail2
  doc: trimming how many bases in tail for read2. If it's not specified, it will follow
    read1's settings (int [=0])
  type: boolean
  inputBinding:
    prefix: --trim_tail2
- id: max_len2
  doc: if read2 is longer than max_len2, then trim read2 at its tail to make it as
    long as max_len2. Default 0 means no limitation. If it's not specified, it will
    follow read1's settings (int [=0])
  type: boolean
  inputBinding:
    prefix: --max_len2
- id: trim_poly_g
  doc: force polyG tail trimming, by default trimming is automatically enabled for
    Illumina NextSeq/NovaSeq data
  type: boolean
  inputBinding:
    prefix: --trim_poly_g
- id: poly_g_min_len
  doc: the minimum length to detect polyG in the read tail. 10 by default. (int [=10])
  type: boolean
  inputBinding:
    prefix: --poly_g_min_len
- id: disable_trim_poly_g
  doc: disable polyG tail trimming, by default trimming is automatically enabled for
    Illumina NextSeq/NovaSeq data
  type: boolean
  inputBinding:
    prefix: --disable_trim_poly_g
- id: trim_poly_x
  doc: enable polyX trimming in 3' ends.
  type: boolean
  inputBinding:
    prefix: --trim_poly_x
- id: poly_x_min_len
  doc: the minimum length to detect polyX in the read tail. 10 by default. (int [=10])
  type: boolean
  inputBinding:
    prefix: --poly_x_min_len
- id: cut_front_window_size
  doc: the window size option of cut_front, default to cut_window_size if not specified
    (int [=4])
  type: boolean
  inputBinding:
    prefix: --cut_front_window_size
- id: cut_front_mean_quality
  doc: the mean quality requirement option for cut_front, default to cut_mean_quality
    if not specified (int [=20])
  type: boolean
  inputBinding:
    prefix: --cut_front_mean_quality
- id: cut_tail_window_size
  doc: the window size option of cut_tail, default to cut_window_size if not specified
    (int [=4])
  type: boolean
  inputBinding:
    prefix: --cut_tail_window_size
- id: cut_tail_mean_quality
  doc: the mean quality requirement option for cut_tail, default to cut_mean_quality
    if not specified (int [=20])
  type: boolean
  inputBinding:
    prefix: --cut_tail_mean_quality
- id: cut_right_window_size
  doc: the window size option of cut_right, default to cut_window_size if not specified
    (int [=4])
  type: boolean
  inputBinding:
    prefix: --cut_right_window_size
- id: cut_right_mean_quality
  doc: the mean quality requirement option for cut_right, default to cut_mean_quality
    if not specified (int [=20])
  type: boolean
  inputBinding:
    prefix: --cut_right_mean_quality
- id: disable_quality_filtering
  doc: quality filtering is enabled by default. If this option is specified, quality
    filtering is disabled
  type: boolean
  inputBinding:
    prefix: --disable_quality_filtering
- id: qualified_quality_phred
  doc: the quality value that a base is qualified. Default 15 means phred quality
    >=Q15 is qualified. (int [=15])
  type: boolean
  inputBinding:
    prefix: --qualified_quality_phred
- id: unqualified_percent_limit
  doc: how many percents of bases are allowed to be unqualified (0~100). Default 40
    means 40% (int [=40])
  type: boolean
  inputBinding:
    prefix: --unqualified_percent_limit
- id: n_base_limit
  doc: if one read's number of N base is >n_base_limit, then this read/pair is discarded.
    Default is 5 (int [=5])
  type: boolean
  inputBinding:
    prefix: --n_base_limit
- id: average_qual
  doc: if one read's average quality score <avg_qual, then this read/pair is discarded.
    Default 0 means no requirement (int [=0])
  type: boolean
  inputBinding:
    prefix: --average_qual
- id: disable_length_filtering
  doc: length filtering is enabled by default. If this option is specified, length
    filtering is disabled
  type: boolean
  inputBinding:
    prefix: --disable_length_filtering
- id: length_required
  doc: reads shorter than length_required will be discarded, default is 15. (int [=15])
  type: boolean
  inputBinding:
    prefix: --length_required
- id: length_limit
  doc: reads longer than length_limit will be discarded, default 0 means no limitation.
    (int [=0])
  type: boolean
  inputBinding:
    prefix: --length_limit
- id: low_complexity_filter
  doc: enable low complexity filter. The complexity is defined as the percentage of
    base that is different from its next base (base[i] != base[i+1]).
  type: boolean
  inputBinding:
    prefix: --low_complexity_filter
- id: complexity_threshold
  doc: the threshold for low complexity filter (0~100). Default is 30, which means
    30% complexity is required. (int [=30])
  type: boolean
  inputBinding:
    prefix: --complexity_threshold
- id: filter_by_index_1
  doc: specify a file contains a list of barcodes of index1 to be filtered out, one
    barcode per line (string [=])
  type: boolean
  inputBinding:
    prefix: --filter_by_index1
- id: filter_by_index_2
  doc: specify a file contains a list of barcodes of index2 to be filtered out, one
    barcode per line (string [=])
  type: boolean
  inputBinding:
    prefix: --filter_by_index2
- id: filter_by_index_threshold
  doc: the allowed difference of index barcode for index filtering, default 0 means
    completely identical. (int [=0])
  type: boolean
  inputBinding:
    prefix: --filter_by_index_threshold
- id: correction
  doc: enable base correction in overlapped regions (only for PE data), default is
    disabled
  type: boolean
  inputBinding:
    prefix: --correction
- id: overlap_len_require
  doc: the minimum length to detect overlapped region of PE reads. This will affect
    overlap analysis based PE merge, adapter trimming and correction. 30 by default.
    (int [=30])
  type: boolean
  inputBinding:
    prefix: --overlap_len_require
- id: overlap_diff_limit
  doc: the maximum number of mismatched bases to detect overlapped region of PE reads.
    This will affect overlap analysis based PE merge, adapter trimming and correction.
    5 by default. (int [=5])
  type: boolean
  inputBinding:
    prefix: --overlap_diff_limit
- id: overlap_diff_percent_limit
  doc: the maximum percentage of mismatched bases to detect overlapped region of PE
    reads. This will affect overlap analysis based PE merge, adapter trimming and
    correction. Default 20 means 20%. (int [=20])
  type: boolean
  inputBinding:
    prefix: --overlap_diff_percent_limit
- id: umi
  doc: enable unique molecular identifier (UMI) preprocessing
  type: boolean
  inputBinding:
    prefix: --umi
- id: umi_loc
  doc: specify the location of UMI, can be (index1/index2/read1/read2/per_index/per_read,
    default is none (string [=])
  type: boolean
  inputBinding:
    prefix: --umi_loc
- id: umi_len
  doc: if the UMI is in read1/read2, its length should be provided (int [=0])
  type: boolean
  inputBinding:
    prefix: --umi_len
- id: umi_prefix
  doc: if specified, an underline will be used to connect prefix and UMI (i.e. prefix=UMI,
    UMI=AATTCG, final=UMI_AATTCG). No prefix by default (string [=])
  type: boolean
  inputBinding:
    prefix: --umi_prefix
- id: umi_skip
  doc: if the UMI is in read1/read2, fastp can skip several bases following UMI, default
    is 0 (int [=0])
  type: boolean
  inputBinding:
    prefix: --umi_skip
- id: overrepresentation_analysis
  doc: enable overrepresented sequence analysis.
  type: boolean
  inputBinding:
    prefix: --overrepresentation_analysis
- id: overrepresentation_sampling
  doc: one in (--overrepresentation_sampling) reads will be computed for overrepresentation
    analysis (1~10000), smaller is slower, default is 20. (int [=20])
  type: boolean
  inputBinding:
    prefix: --overrepresentation_sampling
- id: json
  doc: the json format report file name (string [=fastp.json])
  type: boolean
  inputBinding:
    prefix: --json
- id: report_title
  doc: should be quoted with ' or ", default is "fastp report" (string [=fastp report])
  type: boolean
  inputBinding:
    prefix: --report_title
- id: thread
  doc: worker thread number, default is 2 (int [=2])
  type: boolean
  inputBinding:
    prefix: --thread
- id: split
  doc: split output by limiting total split file number with this option (2~999),
    a sequential number prefix will be added to output name ( 0001.out.fq, 0002.out.fq...),
    disabled by default (int [=0])
  type: boolean
  inputBinding:
    prefix: --split
- id: split_by_lines
  doc: split output by limiting lines of each file with this option(>=1000), a sequential
    number prefix will be added to output name ( 0001.out.fq, 0002.out.fq...), disabled
    by default (long [=0])
  type: boolean
  inputBinding:
    prefix: --split_by_lines
- id: split_prefix_digits
  doc: the digits for the sequential number padding (1~10), default is 4, so the filename
    will be padded as 0001.xxx, 0 to disable padding (int [=4])
  type: boolean
  inputBinding:
    prefix: --split_prefix_digits
- id: cut_by_quality_5
  doc: DEPRECATED, use --cut_front instead.
  type: boolean
  inputBinding:
    prefix: --cut_by_quality5
- id: cut_by_quality_3
  doc: DEPRECATED, use --cut_tail instead.
  type: boolean
  inputBinding:
    prefix: --cut_by_quality3
- id: cut_by_quality_aggressive
  doc: DEPRECATED, use --cut_right instead.
  type: boolean
  inputBinding:
    prefix: --cut_by_quality_aggressive
- id: discard_un_merged
  doc: DEPRECATED, no effect now, see the introduction for merging.
  type: boolean
  inputBinding:
    prefix: --discard_unmerged
outputs: []
cwlVersion: v1.1
baseCommand:
- fastp
