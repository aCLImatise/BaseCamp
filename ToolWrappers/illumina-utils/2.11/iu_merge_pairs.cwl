class: CommandLineTool
id: iu_merge_pairs.cwl
inputs:
- id: in_output_file_prefix
  doc: "Output file prefix (which will be used as a prefix for\nfiles that appear\
    \ in output directory)"
  type: File?
  inputBinding:
    prefix: --output_file_prefix
- id: in_min_overlap_size
  doc: Overlap size must exceed this value. Default is 15.
  type: long?
  inputBinding:
    prefix: --min-overlap-size
- id: in_max_num_mismatches
  doc: "Maximum number of mismatches at the overlapped region\nto retain the pair.\
    \ The default behavior relies on\n`-P` parameter and does not pay attention to\
    \ the\nnumber of mismatches at the overlapped region. As of\nnow, this parameter\
    \ must be set to 0 for forward and\nreverse reads of unequal length."
  type: long?
  inputBinding:
    prefix: --max-num-mismatches
- id: in_min_qual_score
  doc: "Minimum Q-score for a base to overwrite a mismatch at\nthe overlapped region.\
    \ If there is a mismatch at the\noverlapped region, the base with higher quality\
    \ is\nbeing used in the final sequence. Alternatively, if\nthe Q-score of the\
    \ base with higher quality is lower\nthan the Q-score declared with this parameter,\
    \ that\nbase is being marked as an ambiguous base, which may\nresult in the elimination\
    \ of the merged sequence\ndepending on the --ignore-Ns paranmeter. The default\n\
    value is 15."
  type: long?
  inputBinding:
    prefix: --min-qual-score
- id: in_merged_sequence_p
  doc: "Any merged sequence with P above the declared value is\ndiscarded and stored\
    \ in a separate file. P is computed\nby dividing the number of mismatches at the\
    \ overlapped\nregion by the length of the overlapped region. For\ninstance, if\
    \ the length of the overlapped region is 30\nnt long, and there are 3 mismatches\
    \ in the overlapped\nregion, P would be 3 / 30 = 0.1. The default value for\n\
    P is 0.300000, however it must be adjusted based on\nthe expected overlap in a\
    \ given study with respect to\ndesired stringency. Stringency can also be adjusted\n\
    using `--max-num-mismatches` parameter, or can be done\npost-merging, using the\
    \ program `filter-merged-reads`."
  type: double?
  inputBinding:
    prefix: -P
- id: in_enforce_q_three_zero_check
  doc: "By default, quality filtering is being done based only\non the mismatches\
    \ found in the overlapped region, and\nthe beginning and the end of merged reads\
    \ are not\nbeing checked. However a final control can be enforced\nusing this\
    \ flag. This flag turns on the Q30 check, as\nit was explained by Minoche et al.\
    \ in their 2012\npaper. Briefly, Q30-check eliminates pairs if the 66%\nof bases\
    \ in the first half of each read do not have\nQ-scores over Q30. Note that Q30\
    \ is applied only to\nthe parts of reads that did not overlap. If either of\n\
    reads fail Q30 check, merged sequence is discarded."
  type: boolean?
  inputBinding:
    prefix: --enforce-Q30-check
- id: in_compute_qual_dicts
  doc: "When set, qual dicts will be computed. May take a very\nlong time for datasets\
    \ with more than a million pairs."
  type: boolean?
  inputBinding:
    prefix: --compute-qual-dicts
- id: in_retain_only_overlap
  doc: "When set, merger will only return the parts of reads\nthat do overlap, and\
    \ parts of reads that do not\noverlap will be trimmed."
  type: boolean?
  inputBinding:
    prefix: --retain-only-overlap
- id: in_debug
  doc: When set, debug messages will be printed
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_ignore_def_lines
  doc: "If FASTQ files are not CASAVA outputs, parsing the\nheader info may go wrong.\
    \ This flag tells the software\nto skip parsing deflines."
  type: boolean?
  inputBinding:
    prefix: --ignore-deflines
- id: in_ignore_ns
  doc: "Merged sequences are being eliminated if they have any\nambiguous bases. If\
    \ this parameter is set merged pairs\nwith Ns stay in the merged pairs bin."
  type: boolean?
  inputBinding:
    prefix: --ignore-Ns
- id: in_marker_gene_stringent
  doc: "Finds the best merge going beyond expected \"partial\noverlap\" case for amplicons.\
    \ Please read the\ndescription at url https://github.com/meren/illumina-\nutils/issues/1\
    \ for details."
  type: boolean?
  inputBinding:
    prefix: --marker-gene-stringent
- id: in_skip_suffix_trimming
  doc: "Some datasets contain both partially and completely\noverlapping reads. `--marker-gene-stringent`\
    \ would be\nused in that case. Completely overlapping reads can\ncontain unwanted\
    \ adapter sequence at the ends of the\nreads (read 1 adapter at the end of read\
    \ 2 and read 2\nadapter at the end of read 1). By default, these\nadapter suffixes\
    \ are trimmed from merged reads, and\nnon-overlapping parts of the insert are\
    \ left untouched\nin partially overlapping reads (`--retain-only-\noverlap` trims\
    \ partially overlapping merges). Setting\nthis flag leaves adapter suffixes untrimmed."
  type: boolean?
  inputBinding:
    prefix: --skip-suffix-trimming
- id: in_report_r_one_prefix
  doc: "If there is a prefix to read 1 specified in the config\nfile, these sequences\
    \ will be reported for merged\nreads when this flag is set. This can be useful\
    \ if the\nprefix sequence has variable bases, such as in a\nunique molecular identifier\
    \ (UMI)."
  type: boolean?
  inputBinding:
    prefix: --report-r1-prefix
- id: in_report_r_two_prefix
  doc: "If there is a prefix to read 2 specified in the config\nfile, these sequences\
    \ will be reported for merged\nreads when this flag is set. This can be useful\
    \ if the\nprefix sequence has variable bases, such as in a\nunique molecular identifier\
    \ (UMI)."
  type: boolean?
  inputBinding:
    prefix: --report-r2-prefix
- id: in_num_threads
  doc: "This triggers a faster algorithm for merging reads\nwith no mismatches in\
    \ the overlapping region. This can\nonly be used in combination with `--max-num-mismatches\n\
    0`. Specify the number of CPU cores that you wish to\nuse."
  type: long?
  inputBinding:
    prefix: --num-threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: "Output file prefix (which will be used as a prefix for\nfiles that appear\
    \ in output directory)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-utils:2.11--py_0
cwlVersion: v1.1
baseCommand:
- iu-merge-pairs
