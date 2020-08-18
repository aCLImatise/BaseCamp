class: CommandLineTool
id: ../../../tombo_detect_modifications_aggregate_per_read_stats.cwl
inputs:
- id: per_read_statistics_filename
  doc: Binary file containing per-read statistics from statistical testing.
  type: string
  inputBinding:
    prefix: --per-read-statistics-filename
- id: statistics_filename
  doc: File to save/load genomic base anchored statistics.
  type: string
  inputBinding:
    prefix: --statistics-filename
- id: single_read_threshold
  doc: P-value or log likelihood ratio threshold when computing fraction of significant
    reads at each genomic position. If two values are provided, statistics between
    these values are not considered.
  type: string[]
  inputBinding:
    prefix: --single-read-threshold
- id: num_most_significant_stored
  doc: 'Number of the most significant sites to store for faster access. If a longer
    list of most significant sites is required the list must be re-computed from all
    batches. Very large values can increase RAM usage. Default: 100000'
  type: string
  inputBinding:
    prefix: --num-most-significant-stored
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
- aggregate_per_read_stats
