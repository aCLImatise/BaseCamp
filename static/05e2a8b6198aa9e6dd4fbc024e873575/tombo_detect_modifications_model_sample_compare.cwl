class: CommandLineTool
id: tombo_detect_modifications_model_sample_compare.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_file_base_name
  doc: "File base name to save base by base statistics from\ntesting. Filenames will\
    \ be [--statistics-file-\nbasename].[--alternate-bases]?.tombo.stats"
  type: File?
  inputBinding:
    prefix: --statistics-file-basename
- id: in_control_fast_five_based_irs
  doc: "Set of directories containing fast5 files for control\nreads, containing only\
    \ canonical nucleotides."
  type: long[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_sample_only_estimates
  doc: "Only use canonical sample to estimate expected signal\nlevel and spread. Default:\
    \ Use canonical model to\nimprove estimtates (esp. for low coverage regions)\n\
    using baysian posterior estimates."
  type: boolean?
  inputBinding:
    prefix: --sample-only-estimates
- id: in_model_prior_weights
  doc: "MODEL_PRIOR_WEIGHTS\nPrior weights (one each for mean and spread) applied\n\
    to canonical base model for estimating posterior model\nparameters for sample\
    \ comparison. Default: [5, 40]"
  type: long?
  inputBinding:
    prefix: --model-prior-weights
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
- id: in_fishers_method_context
  doc: "Number of context bases up and downstream over which\nto compute Fisher's\
    \ method combined p-values. Note:\nNot applicable for alternative model likelihood\
    \ ratio\ntests. Default: 1."
  type: long?
  inputBinding:
    prefix: --fishers-method-context
- id: in_minimum_test_reads
  doc: "Number of reads required at a position to perform\nsignificance testing or\
    \ contribute to model\nestimation. Default: 1"
  type: long?
  inputBinding:
    prefix: --minimum-test-reads
- id: in_single_read_threshold
  doc: "P-value threshold when computing fraction of\nsignificant reads at each genomic\
    \ position. If two\nvalues are provided, statistics between these values\nare\
    \ not considered. Default thresholds: DNA:0.15-0.5 ,\nRNA:0.05-0.4"
  type: string[]
  inputBinding:
    prefix: --single-read-threshold
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
- id: in__controlfastbasedirs
  doc: --control-fast5-basedirs
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- detect_modifications
- model_sample_compare
