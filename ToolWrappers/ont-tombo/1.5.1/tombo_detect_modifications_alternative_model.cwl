class: CommandLineTool
id: tombo_detect_modifications_alternative_model.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_statistics_file_basename
  doc: "File base name to save base by base statistics from\ntesting. Filenames will\
    \ be [--statistics-file-\nbasename].[--alternate-bases]?.tombo.stats"
  type: File?
  inputBinding:
    prefix: --statistics-file-basename
- id: in_alternate_bases
  doc: "[{dcm,5mC,6mA,dam,CpG} ...]\nDefault non-standard base model for testing (not\n\
    required if user created --alternate-model-filenames\nis provided)."
  type: string?
  inputBinding:
    prefix: --alternate-bases
- id: in_print_available_models
  doc: Print available alternative models and exit.
  type: boolean?
  inputBinding:
    prefix: --print-available-models
- id: in_dna
  doc: "Explicitly select canonical DNA model. Default:\nAutomatically determine from\
    \ FAST5s"
  type: boolean?
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: "Explicitly select canonical RNA model. Default:\nAutomatically determine from\
    \ FAST5s"
  type: boolean?
  inputBinding:
    prefix: --rna
- id: in_minimum_test_reads
  doc: "Number of reads required at a position to perform\nsignificance testing or\
    \ contribute to model\nestimation. Default: 1"
  type: long?
  inputBinding:
    prefix: --minimum-test-reads
- id: in_single_read_threshold
  doc: "Log likelihood ratio threshold when computing fraction\nof significant reads\
    \ at each genomic position. If two\nvalues are provided, statistics between these\
    \ values\nare not considered. Default thresholds: DNA:-1.5-2.5 ,\nRNA:-2.5-2.5"
  type: string[]
  inputBinding:
    prefix: --single-read-threshold
- id: in_standard_log_likelihood_ratio
  doc: "Use a standard log likelihood ratio (LLR) statistic.\nDefault is to use an\
    \ outlier-robust LLR-like\nstatistic. Detail in full online documentation."
  type: boolean?
  inputBinding:
    prefix: --standard-log-likelihood-ratio
- id: in_coverage_dampen_counts
  doc: "COVERAGE_DAMPEN_COUNTS\nDampen fraction modified estimates for low coverage\n\
    sites. Two parameters are unmodified and modified\npseudo read counts. This is\
    \ equivalent to a beta prior\non the fraction estimate. Set to \"0 0\" to disable\n\
    dampened fraction estimation. Default: [2, 0]"
  type: long?
  inputBinding:
    prefix: --coverage-dampen-counts
- id: in_per_read_statistics_basename
  doc: "Base for binary files containing per-read statistics\nfrom statistical testing.\
    \ Filenames will be [--per-\nread-statistics-basename].[--alternate-\nbases]?.tombo.per_read_stats"
  type: string?
  inputBinding:
    prefix: --per-read-statistics-basename
- id: in_num_most_significant_stored
  doc: "Number of the most significant sites to store for\nfaster access. If a longer\
    \ list of most significant\nsites is required the list must be re-computed from\n\
    all batches. Very large values can increase RAM usage.\nDefault: 100000"
  type: long?
  inputBinding:
    prefix: --num-most-significant-stored
- id: in_multiprocess_region_size
  doc: "Size of regions over which to multiprocesses statistic\ncomputation. For very\
    \ deep samples a smaller value is\nrecommmended in order to control memory consumption.\n\
    Default: 10000"
  type: long?
  inputBinding:
    prefix: --multiprocess-region-size
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- detect_modifications
- alternative_model
