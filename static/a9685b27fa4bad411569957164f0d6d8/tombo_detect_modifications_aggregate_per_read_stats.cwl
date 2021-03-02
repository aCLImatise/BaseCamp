class: CommandLineTool
id: tombo_detect_modifications_aggregate_per_read_stats.cwl
inputs:
- id: in_binary_file_containing
  doc: "Binary file containing per-read statistics from\nstatistical testing."
  type: File?
  inputBinding:
    prefix: --per-read-statistics-filename
- id: in_file_saveload_base
  doc: File to save/load genomic base anchored statistics.
  type: File?
  inputBinding:
    prefix: --statistics-filename
- id: in_single_read_threshold
  doc: "P-value or log likelihood ratio threshold when\ncomputing fraction of significant\
    \ reads at each\ngenomic position. If two values are provided,\nstatistics between\
    \ these values are not considered."
  type: string[]
  inputBinding:
    prefix: --single-read-threshold
- id: in_minimum_test_reads
  doc: "Number of reads required at a position to perform\nsignificance testing or\
    \ contribute to model\nestimation. Default: 1"
  type: long?
  inputBinding:
    prefix: --minimum-test-reads
- id: in_coverage_dampen_counts
  doc: "COVERAGE_DAMPEN_COUNTS\nDampen fraction modified estimates for low coverage\n\
    sites. Two parameters are unmodified and modified\npseudo read counts. This is\
    \ equivalent to a beta prior\non the fraction estimate. Set to \"0 0\" to disable\n\
    dampened fraction estimation. Default: [2, 0]"
  type: long?
  inputBinding:
    prefix: --coverage-dampen-counts
- id: in_num_most_significant_stored
  doc: "Number of the most significant sites to store for\nfaster access. If a longer\
    \ list of most significant\nsites is required the list must be re-computed from\n\
    all batches. Very large values can increase RAM usage.\nDefault: 100000"
  type: long?
  inputBinding:
    prefix: --num-most-significant-stored
- id: in_processes
  doc: 'Number of processes. Default: 1'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall-\ngroup]/) containing basecalls\
    \ and created within\n[--corrected-group] containing re-squiggle results.\nDefault:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in__statisticsfilename
  doc: --statistics-filename
  type: string
  inputBinding:
    position: 0
- id: in__singlereadthreshold
  doc: --single-read-threshold
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- detect_modifications
- aggregate_per_read_stats
