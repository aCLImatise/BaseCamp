version 1.0

task Iumergepairs {
  input {
    File? output_file_prefix
    Int? min_overlap_size
    Int? max_num_mismatches
    Int? min_qual_score
    Float? merged_sequence_p
    Boolean? enforce_q_three_zero_check
    Boolean? compute_qual_dicts
    Boolean? retain_only_overlap
    Boolean? debug
    Boolean? ignore_def_lines
    Boolean? ignore_ns
    Boolean? marker_gene_stringent
    Boolean? skip_suffix_trimming
    Boolean? report_r_one_prefix
    Boolean? report_r_two_prefix
    Int? num_threads
  }
  command <<<
    iu_merge_pairs \
      ~{if defined(output_file_prefix) then ("--output_file_prefix " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(min_overlap_size) then ("--min-overlap-size " +  '"' + min_overlap_size + '"') else ""} \
      ~{if defined(max_num_mismatches) then ("--max-num-mismatches " +  '"' + max_num_mismatches + '"') else ""} \
      ~{if defined(min_qual_score) then ("--min-qual-score " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(merged_sequence_p) then ("-P " +  '"' + merged_sequence_p + '"') else ""} \
      ~{if (enforce_q_three_zero_check) then "--enforce-Q30-check" else ""} \
      ~{if (compute_qual_dicts) then "--compute-qual-dicts" else ""} \
      ~{if (retain_only_overlap) then "--retain-only-overlap" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (ignore_def_lines) then "--ignore-deflines" else ""} \
      ~{if (ignore_ns) then "--ignore-Ns" else ""} \
      ~{if (marker_gene_stringent) then "--marker-gene-stringent" else ""} \
      ~{if (skip_suffix_trimming) then "--skip-suffix-trimming" else ""} \
      ~{if (report_r_one_prefix) then "--report-r1-prefix" else ""} \
      ~{if (report_r_two_prefix) then "--report-r2-prefix" else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.11--py_0"
  }
  parameter_meta {
    output_file_prefix: "Output file prefix (which will be used as a prefix for\\nfiles that appear in output directory)"
    min_overlap_size: "Overlap size must exceed this value. Default is 15."
    max_num_mismatches: "Maximum number of mismatches at the overlapped region\\nto retain the pair. The default behavior relies on\\n`-P` parameter and does not pay attention to the\\nnumber of mismatches at the overlapped region. As of\\nnow, this parameter must be set to 0 for forward and\\nreverse reads of unequal length."
    min_qual_score: "Minimum Q-score for a base to overwrite a mismatch at\\nthe overlapped region. If there is a mismatch at the\\noverlapped region, the base with higher quality is\\nbeing used in the final sequence. Alternatively, if\\nthe Q-score of the base with higher quality is lower\\nthan the Q-score declared with this parameter, that\\nbase is being marked as an ambiguous base, which may\\nresult in the elimination of the merged sequence\\ndepending on the --ignore-Ns paranmeter. The default\\nvalue is 15."
    merged_sequence_p: "Any merged sequence with P above the declared value is\\ndiscarded and stored in a separate file. P is computed\\nby dividing the number of mismatches at the overlapped\\nregion by the length of the overlapped region. For\\ninstance, if the length of the overlapped region is 30\\nnt long, and there are 3 mismatches in the overlapped\\nregion, P would be 3 / 30 = 0.1. The default value for\\nP is 0.300000, however it must be adjusted based on\\nthe expected overlap in a given study with respect to\\ndesired stringency. Stringency can also be adjusted\\nusing `--max-num-mismatches` parameter, or can be done\\npost-merging, using the program `filter-merged-reads`."
    enforce_q_three_zero_check: "By default, quality filtering is being done based only\\non the mismatches found in the overlapped region, and\\nthe beginning and the end of merged reads are not\\nbeing checked. However a final control can be enforced\\nusing this flag. This flag turns on the Q30 check, as\\nit was explained by Minoche et al. in their 2012\\npaper. Briefly, Q30-check eliminates pairs if the 66%\\nof bases in the first half of each read do not have\\nQ-scores over Q30. Note that Q30 is applied only to\\nthe parts of reads that did not overlap. If either of\\nreads fail Q30 check, merged sequence is discarded."
    compute_qual_dicts: "When set, qual dicts will be computed. May take a very\\nlong time for datasets with more than a million pairs."
    retain_only_overlap: "When set, merger will only return the parts of reads\\nthat do overlap, and parts of reads that do not\\noverlap will be trimmed."
    debug: "When set, debug messages will be printed"
    ignore_def_lines: "If FASTQ files are not CASAVA outputs, parsing the\\nheader info may go wrong. This flag tells the software\\nto skip parsing deflines."
    ignore_ns: "Merged sequences are being eliminated if they have any\\nambiguous bases. If this parameter is set merged pairs\\nwith Ns stay in the merged pairs bin."
    marker_gene_stringent: "Finds the best merge going beyond expected \\\"partial\\noverlap\\\" case for amplicons. Please read the\\ndescription at url https://github.com/meren/illumina-\\nutils/issues/1 for details."
    skip_suffix_trimming: "Some datasets contain both partially and completely\\noverlapping reads. `--marker-gene-stringent` would be\\nused in that case. Completely overlapping reads can\\ncontain unwanted adapter sequence at the ends of the\\nreads (read 1 adapter at the end of read 2 and read 2\\nadapter at the end of read 1). By default, these\\nadapter suffixes are trimmed from merged reads, and\\nnon-overlapping parts of the insert are left untouched\\nin partially overlapping reads (`--retain-only-\\noverlap` trims partially overlapping merges). Setting\\nthis flag leaves adapter suffixes untrimmed."
    report_r_one_prefix: "If there is a prefix to read 1 specified in the config\\nfile, these sequences will be reported for merged\\nreads when this flag is set. This can be useful if the\\nprefix sequence has variable bases, such as in a\\nunique molecular identifier (UMI)."
    report_r_two_prefix: "If there is a prefix to read 2 specified in the config\\nfile, these sequences will be reported for merged\\nreads when this flag is set. This can be useful if the\\nprefix sequence has variable bases, such as in a\\nunique molecular identifier (UMI)."
    num_threads: "This triggers a faster algorithm for merging reads\\nwith no mismatches in the overlapping region. This can\\nonly be used in combination with `--max-num-mismatches\\n0`. Specify the number of CPU cores that you wish to\\nuse."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}