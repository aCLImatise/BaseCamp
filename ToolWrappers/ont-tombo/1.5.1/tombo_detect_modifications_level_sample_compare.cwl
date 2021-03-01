class: CommandLineTool
id: tombo_detect_modifications_level_sample_compare.cwl
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
- id: in_alternate_fast_five_based_irs
  doc: "Set of directories containing fast5 files for\nalternate set of reads."
  type: long[]
  inputBinding:
    prefix: --alternate-fast5-basedirs
- id: in_fishers_method_context
  doc: "Number of context bases up and downstream over which\nto compute Fisher's\
    \ method combined p-values. Note:\nNot applicable for alternative model likelihood\
    \ ratio\ntests. Default: 1."
  type: long?
  inputBinding:
    prefix: --fishers-method-context
- id: in_minimum_test_reads
  doc: "Number of reads required at a position to perform\nsignificance testing or\
    \ contribute to model\nestimation. Default: 50"
  type: long?
  inputBinding:
    prefix: --minimum-test-reads
- id: in_statistic_type
  doc: 'Type of statistical test to apply. Default: "ks"'
  type: string?
  inputBinding:
    prefix: --statistic-type
- id: in_store_p_value
  doc: "Store p-value instead of effect-size statistic.\nStatistics are D-statistic\
    \ (KS-test), deviation from\neven common language effect size (u-test), and Cohen's\n\
    D (t-test)."
  type: boolean?
  inputBinding:
    prefix: --store-p-value
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
- id: in__alternatefastbasedirs
  doc: --alternate-fast5-basedirs
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
- level_sample_compare
