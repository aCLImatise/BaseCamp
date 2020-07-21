class: CommandLineTool
id: ../../../tombo_detect_modifications_level_sample_compare.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: statistics_file_basename
  doc: File base name to save base by base statistics from testing. Filenames will
    be [--statistics-file- basename].[--alternate-bases]?.tombo.stats
  type: string
  inputBinding:
    prefix: --statistics-file-basename
- id: alternate_fast_five_based_irs
  doc: Set of directories containing fast5 files for alternate set of reads.
  type: string[]
  inputBinding:
    prefix: --alternate-fast5-basedirs
- id: fishers_method_context
  doc: "Number of context bases up and downstream over which to compute Fisher's method\
    \ combined p-values. Note: Not applicable for alternative model likelihood ratio\
    \ tests. Default: 1."
  type: string
  inputBinding:
    prefix: --fishers-method-context
- id: minimum_test_reads
  doc: 'Number of reads required at a position to perform significance testing or
    contribute to model estimation. Default: 50'
  type: long
  inputBinding:
    prefix: --minimum-test-reads
- id: statistic_type
  doc: 'Type of statistical test to apply. Default: "ks"'
  type: string
  inputBinding:
    prefix: --statistic-type
- id: store_p_value
  doc: Store p-value instead of effect-size statistic. Statistics are D-statistic
    (KS-test), deviation from even common language effect size (u-test), and Cohen's
    D (t-test).
  type: boolean
  inputBinding:
    prefix: --store-p-value
- id: num_most_significant_stored
  doc: 'Number of the most significant sites to store for faster access. If a longer
    list of most significant sites is required the list must be re-computed from all
    batches. Very large values can increase RAM usage. Default: 100000'
  type: string
  inputBinding:
    prefix: --num-most-significant-stored
- id: multiprocess_region_size
  doc: 'Size of regions over which to multiprocesses statistic computation. For very
    deep samples a smaller value is recommmended in order to control memory consumption.
    Default: 10000'
  type: string
  inputBinding:
    prefix: --multiprocess-region-size
- id: processes
  doc: 'Number of processes. Default: 1'
  type: string
  inputBinding:
    prefix: --processes
- id: corrected_group
  doc: 'FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls\
    \ and created within [--corrected-group] containing re-squiggle results. Default:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- detect_modifications
- level_sample_compare
