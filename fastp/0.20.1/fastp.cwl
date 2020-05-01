#!/usr/bin/env cwl-runner

baseCommand:
- fastp
class: CommandLineTool
cwlVersion: v1.0
id: fastp
inputs:
- doc: for PE input, if read1 passed QC but read2 not, it will be written to unpaired1.
    Default is to discard it. (string [=])
  id: unpaired_1
  inputBinding:
    prefix: --unpaired1
  type: boolean
- doc: for PE input, if read2 passed QC but read1 not, it will be written to unpaired2.
    If --unpaired2 is same as --unpaired1 (default mode), both unpaired reads will
    be written to this same file. (string [=])
  id: unpaired_2
  inputBinding:
    prefix: --unpaired2
  type: boolean
- doc: specify the file to store reads that cannot pass the filters. (string [=])
  id: failed_out
  inputBinding:
    prefix: --failed_out
  type: boolean
- doc: for paired-end input, merge each pair of reads into a single read if they are
    overlapped. The merged reads will be written to the file given by --merged_out,
    the unmerged reads will be written to the files specified by --out1 and --out2.
    The merging mode is disabled by default.
  id: merge
  inputBinding:
    prefix: --merge
  type: boolean
- doc: in the merging mode, specify the file name to store merged output, or specify
    --stdout to stream the merged output (string [=])
  id: merged_out
  inputBinding:
    prefix: --merged_out
  type: boolean
- doc: in the merging mode, write the unmerged or unpaired reads to the file specified
    by --merge. Disabled by default.
  id: include_un_merged
  inputBinding:
    prefix: --include_unmerged
  type: boolean
- doc: input from STDIN. If the STDIN is interleaved paired-end FASTQ, please also
    add --interleaved_in.
  id: stdin
  inputBinding:
    prefix: --stdin
  type: boolean
- doc: stream passing-filters reads to STDOUT. This option will result in interleaved
    FASTQ output for paired-end output. Disabled by default.
  id: stdout
  inputBinding:
    prefix: --stdout
  type: boolean
- doc: indicate that <in1> is an interleaved FASTQ which contains both read1 and read2.
    Disabled by default.
  id: interleaved_in
  inputBinding:
    prefix: --interleaved_in
  type: boolean
- doc: specify how many reads/pairs to be processed. Default 0 means process all reads.
    (int [=0])
  id: reads_to_process
  inputBinding:
    prefix: --reads_to_process
  type: boolean
- doc: don't overwrite existing files. Overwritting is allowed by default.
  id: dont_overwrite
  inputBinding:
    prefix: --dont_overwrite
  type: boolean
- doc: the MGI FASTQ ID format is not compatible with many BAM operation tools, enable
    this option to fix it.
  id: fix_mgi_id
  inputBinding:
    prefix: --fix_mgi_id
  type: boolean
- doc: output verbose log information (i.e. when every 1M reads are processed).
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: adapter trimming is enabled by default. If this option is specified, adapter
    trimming is disabled
  id: disable_adapter_trimming
  inputBinding:
    prefix: --disable_adapter_trimming
  type: boolean
- doc: the adapter for read1. For SE data, if not specified, the adapter will be auto-detected.
    For PE data, this is used if R1/R2 are found not overlapped. (string [=auto])
  id: adapter_sequence
  inputBinding:
    prefix: --adapter_sequence
  type: boolean
- doc: the adapter for read2 (PE data only). This is used if R1/R2 are found not overlapped.
    If not specified, it will be the same as <adapter_sequence> (string [=auto])
  id: adapter_sequence_r2
  inputBinding:
    prefix: --adapter_sequence_r2
  type: boolean
- doc: specify a FASTA file to trim both read1 and read2 (if PE) by all the sequences
    in this FASTA file (string [=])
  id: adapter_fast_a
  inputBinding:
    prefix: --adapter_fasta
  type: boolean
- doc: by default, the auto-detection for adapter is for SE data input only, turn
    on this option to enable it for PE data.
  id: detect_adapter_for_pe
  inputBinding:
    prefix: --detect_adapter_for_pe
  type: boolean
- doc: trimming how many bases in front for read1, default is 0 (int [=0])
  id: trim_front_1
  inputBinding:
    prefix: --trim_front1
  type: boolean
- doc: trimming how many bases in tail for read1, default is 0 (int [=0])
  id: trim_tail1
  inputBinding:
    prefix: --trim_tail1
  type: boolean
- doc: if read1 is longer than max_len1, then trim read1 at its tail to make it as
    long as max_len1. Default 0 means no limitation (int [=0])
  id: max_len1
  inputBinding:
    prefix: --max_len1
  type: boolean
- doc: trimming how many bases in front for read2. If it's not specified, it will
    follow read1's settings (int [=0])
  id: trim_front_2
  inputBinding:
    prefix: --trim_front2
  type: boolean
- doc: trimming how many bases in tail for read2. If it's not specified, it will follow
    read1's settings (int [=0])
  id: trim_tail2
  inputBinding:
    prefix: --trim_tail2
  type: boolean
- doc: if read2 is longer than max_len2, then trim read2 at its tail to make it as
    long as max_len2. Default 0 means no limitation. If it's not specified, it will
    follow read1's settings (int [=0])
  id: max_len2
  inputBinding:
    prefix: --max_len2
  type: boolean
- doc: force polyG tail trimming, by default trimming is automatically enabled for
    Illumina NextSeq/NovaSeq data
  id: trim_poly_g
  inputBinding:
    prefix: --trim_poly_g
  type: boolean
- doc: the minimum length to detect polyG in the read tail. 10 by default. (int [=10])
  id: poly_g_min_len
  inputBinding:
    prefix: --poly_g_min_len
  type: boolean
- doc: disable polyG tail trimming, by default trimming is automatically enabled for
    Illumina NextSeq/NovaSeq data
  id: disable_trim_poly_g
  inputBinding:
    prefix: --disable_trim_poly_g
  type: boolean
- doc: enable polyX trimming in 3' ends.
  id: trim_poly_x
  inputBinding:
    prefix: --trim_poly_x
  type: boolean
- doc: the minimum length to detect polyX in the read tail. 10 by default. (int [=10])
  id: poly_x_min_len
  inputBinding:
    prefix: --poly_x_min_len
  type: boolean
- doc: the window size option of cut_front, default to cut_window_size if not specified
    (int [=4])
  id: cut_front_window_size
  inputBinding:
    prefix: --cut_front_window_size
  type: boolean
- doc: the mean quality requirement option for cut_front, default to cut_mean_quality
    if not specified (int [=20])
  id: cut_front_mean_quality
  inputBinding:
    prefix: --cut_front_mean_quality
  type: boolean
- doc: the window size option of cut_tail, default to cut_window_size if not specified
    (int [=4])
  id: cut_tail_window_size
  inputBinding:
    prefix: --cut_tail_window_size
  type: boolean
- doc: the mean quality requirement option for cut_tail, default to cut_mean_quality
    if not specified (int [=20])
  id: cut_tail_mean_quality
  inputBinding:
    prefix: --cut_tail_mean_quality
  type: boolean
- doc: the window size option of cut_right, default to cut_window_size if not specified
    (int [=4])
  id: cut_right_window_size
  inputBinding:
    prefix: --cut_right_window_size
  type: boolean
- doc: the mean quality requirement option for cut_right, default to cut_mean_quality
    if not specified (int [=20])
  id: cut_right_mean_quality
  inputBinding:
    prefix: --cut_right_mean_quality
  type: boolean
- doc: quality filtering is enabled by default. If this option is specified, quality
    filtering is disabled
  id: disable_quality_filtering
  inputBinding:
    prefix: --disable_quality_filtering
  type: boolean
- doc: the quality value that a base is qualified. Default 15 means phred quality
    >=Q15 is qualified. (int [=15])
  id: qualified_quality_phred
  inputBinding:
    prefix: --qualified_quality_phred
  type: boolean
- doc: how many percents of bases are allowed to be unqualified (0~100). Default 40
    means 40% (int [=40])
  id: unqualified_percent_limit
  inputBinding:
    prefix: --unqualified_percent_limit
  type: boolean
- doc: if one read's number of N base is >n_base_limit, then this read/pair is discarded.
    Default is 5 (int [=5])
  id: n_base_limit
  inputBinding:
    prefix: --n_base_limit
  type: boolean
- doc: if one read's average quality score <avg_qual, then this read/pair is discarded.
    Default 0 means no requirement (int [=0])
  id: average_qual
  inputBinding:
    prefix: --average_qual
  type: boolean
- doc: length filtering is enabled by default. If this option is specified, length
    filtering is disabled
  id: disable_length_filtering
  inputBinding:
    prefix: --disable_length_filtering
  type: boolean
- doc: reads shorter than length_required will be discarded, default is 15. (int [=15])
  id: length_required
  inputBinding:
    prefix: --length_required
  type: boolean
- doc: reads longer than length_limit will be discarded, default 0 means no limitation.
    (int [=0])
  id: length_limit
  inputBinding:
    prefix: --length_limit
  type: boolean
- doc: enable low complexity filter. The complexity is defined as the percentage of
    base that is different from its next base (base[i] != base[i+1]).
  id: low_complexity_filter
  inputBinding:
    prefix: --low_complexity_filter
  type: boolean
- doc: the threshold for low complexity filter (0~100). Default is 30, which means
    30% complexity is required. (int [=30])
  id: complexity_threshold
  inputBinding:
    prefix: --complexity_threshold
  type: boolean
- doc: specify a file contains a list of barcodes of index1 to be filtered out, one
    barcode per line (string [=])
  id: filter_by_index_1
  inputBinding:
    prefix: --filter_by_index1
  type: boolean
- doc: specify a file contains a list of barcodes of index2 to be filtered out, one
    barcode per line (string [=])
  id: filter_by_index_2
  inputBinding:
    prefix: --filter_by_index2
  type: boolean
- doc: the allowed difference of index barcode for index filtering, default 0 means
    completely identical. (int [=0])
  id: filter_by_index_threshold
  inputBinding:
    prefix: --filter_by_index_threshold
  type: boolean
- doc: enable base correction in overlapped regions (only for PE data), default is
    disabled
  id: correction
  inputBinding:
    prefix: --correction
  type: boolean
- doc: the minimum length to detect overlapped region of PE reads. This will affect
    overlap analysis based PE merge, adapter trimming and correction. 30 by default.
    (int [=30])
  id: overlap_len_require
  inputBinding:
    prefix: --overlap_len_require
  type: boolean
- doc: the maximum number of mismatched bases to detect overlapped region of PE reads.
    This will affect overlap analysis based PE merge, adapter trimming and correction.
    5 by default. (int [=5])
  id: overlap_diff_limit
  inputBinding:
    prefix: --overlap_diff_limit
  type: boolean
- doc: the maximum percentage of mismatched bases to detect overlapped region of PE
    reads. This will affect overlap analysis based PE merge, adapter trimming and
    correction. Default 20 means 20%. (int [=20])
  id: overlap_diff_percent_limit
  inputBinding:
    prefix: --overlap_diff_percent_limit
  type: boolean
- doc: enable unique molecular identifier (UMI) preprocessing
  id: umi
  inputBinding:
    prefix: --umi
  type: boolean
- doc: specify the location of UMI, can be (index1/index2/read1/read2/per_index/per_read,
    default is none (string [=])
  id: umi_loc
  inputBinding:
    prefix: --umi_loc
  type: boolean
- doc: if the UMI is in read1/read2, its length should be provided (int [=0])
  id: umi_len
  inputBinding:
    prefix: --umi_len
  type: boolean
- doc: if specified, an underline will be used to connect prefix and UMI (i.e. prefix=UMI,
    UMI=AATTCG, final=UMI_AATTCG). No prefix by default (string [=])
  id: umi_prefix
  inputBinding:
    prefix: --umi_prefix
  type: boolean
- doc: if the UMI is in read1/read2, fastp can skip several bases following UMI, default
    is 0 (int [=0])
  id: umi_skip
  inputBinding:
    prefix: --umi_skip
  type: boolean
- doc: enable overrepresented sequence analysis.
  id: overrepresentation_analysis
  inputBinding:
    prefix: --overrepresentation_analysis
  type: boolean
- doc: one in (--overrepresentation_sampling) reads will be computed for overrepresentation
    analysis (1~10000), smaller is slower, default is 20. (int [=20])
  id: overrepresentation_sampling
  inputBinding:
    prefix: --overrepresentation_sampling
  type: boolean
- doc: the json format report file name (string [=fastp.json])
  id: json
  inputBinding:
    prefix: --json
  type: boolean
- doc: should be quoted with ' or ", default is "fastp report" (string [=fastp report])
  id: report_title
  inputBinding:
    prefix: --report_title
  type: boolean
- doc: worker thread number, default is 2 (int [=2])
  id: thread
  inputBinding:
    prefix: --thread
  type: boolean
- doc: split output by limiting total split file number with this option (2~999),
    a sequential number prefix will be added to output name ( 0001.out.fq, 0002.out.fq...),
    disabled by default (int [=0])
  id: split
  inputBinding:
    prefix: --split
  type: boolean
- doc: split output by limiting lines of each file with this option(>=1000), a sequential
    number prefix will be added to output name ( 0001.out.fq, 0002.out.fq...), disabled
    by default (long [=0])
  id: split_by_lines
  inputBinding:
    prefix: --split_by_lines
  type: boolean
- doc: the digits for the sequential number padding (1~10), default is 4, so the filename
    will be padded as 0001.xxx, 0 to disable padding (int [=4])
  id: split_prefix_digits
  inputBinding:
    prefix: --split_prefix_digits
  type: boolean
- doc: DEPRECATED, use --cut_front instead.
  id: cut_by_quality_5
  inputBinding:
    prefix: --cut_by_quality5
  type: boolean
- doc: DEPRECATED, use --cut_tail instead.
  id: cut_by_quality_3
  inputBinding:
    prefix: --cut_by_quality3
  type: boolean
- doc: DEPRECATED, use --cut_right instead.
  id: cut_by_quality_aggressive
  inputBinding:
    prefix: --cut_by_quality_aggressive
  type: boolean
- doc: DEPRECATED, no effect now, see the introduction for merging.
  id: discard_un_merged
  inputBinding:
    prefix: --discard_unmerged
  type: boolean
