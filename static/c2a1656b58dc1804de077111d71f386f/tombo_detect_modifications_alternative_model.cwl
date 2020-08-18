class: CommandLineTool
id: ../../../tombo_detect_modifications_alternative_model.cwl
inputs:
- id: print_available_models
  doc: Print available alternative models and exit.
  type: boolean
  inputBinding:
    prefix: --print-available-models
- id: dna
  doc: 'Explicitly select canonical DNA model. Default: Automatically determine from
    FAST5s'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: 'Explicitly select canonical RNA model. Default: Automatically determine from
    FAST5s'
  type: boolean
  inputBinding:
    prefix: --rna
- id: per_read_statistics_basename
  doc: Base for binary files containing per-read statistics from statistical testing.
    Filenames will be [--per- read-statistics-basename].[--alternate- bases]?.tombo.per_read_stats
  type: string
  inputBinding:
    prefix: --per-read-statistics-basename
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
- alternative_model
