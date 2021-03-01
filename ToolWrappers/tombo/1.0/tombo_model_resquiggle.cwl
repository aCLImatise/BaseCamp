class: CommandLineTool
id: tombo_model_resquiggle.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_stouffer_z_context
  doc: "Number of context bases up and downstream over which\nto compute Stouffer's\
    \ Z combined z-scores. Default: 1."
  type: long?
  inputBinding:
    prefix: --stouffer-z-context
- id: in_region_context
  doc: "Number of context bases up and downstream of poorly\nfit regions to perform\
    \ model re-squiggle. Default: 1."
  type: long?
  inputBinding:
    prefix: --region-context
- id: in_p_value_threshold
  doc: "P-value threshold to identify regions to apply model\nre-squiggle algorithm.\
    \ Default: 0.100000"
  type: double?
  inputBinding:
    prefix: --p-value-threshold
- id: in_tombo_model_filename
  doc: "Tombo model for event-less resquiggle and significance\ntesting. If no model\
    \ is provided the default DNA or\nRNA tombo model will be used."
  type: File?
  inputBinding:
    prefix: --tombo-model-filename
- id: in_max_bases_shift
  doc: "Maximum bases to shift raw signal from\nevent_resquiggle assignment. Default:\
    \ 3"
  type: long?
  inputBinding:
    prefix: --max-bases-shift
- id: in_min_obs_per_base
  doc: "Minimum raw observations to assign to a genomic base.\nDefault: 3"
  type: long?
  inputBinding:
    prefix: --min-obs-per-base
- id: in_base_score_iterations
  doc: "Number of iterations through each read to perform\n(computationally expensive)\
    \ base space model re-\nsquiggle algorithm. Default: 2."
  type: long?
  inputBinding:
    prefix: --base-score-iterations
- id: in_base_score_region_context
  doc: "Number of context bases up and downstream of poorly\nfit regions to perform\
    \ iterative base-score model re-\nsquiggle. Default: 4."
  type: long?
  inputBinding:
    prefix: --base-score-region-context
- id: in_base_score_max_bases_shift
  doc: "Maximum bases to shift raw signal from first round of\nmodel re-squiggle.\
    \ Default: 4"
  type: long?
  inputBinding:
    prefix: --base-score-max-bases-shift
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_new_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawModelCorrected_000"
  type: long?
  inputBinding:
    prefix: --new-corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under Analyses/[corrected-group])\ncontaining basecalls.\
    \ Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_overwrite
  doc: "Overwrite previous corrected group in FAST5 files.\nNote: only effects --corrected-group\
    \ or --new-\ncorrected-group."
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_failed_reads_filename
  doc: "Output failed read filenames with assoicated error.\nDefault: Do not store\
    \ failed reads."
  type: File?
  inputBinding:
    prefix: --failed-reads-filename
- id: in_include_event_stdev
  doc: "Include corrected event standard deviation in output\nFAST5 data."
  type: boolean?
  inputBinding:
    prefix: --include-event-stdev
- id: in_processes
  doc: 'Number of processes. Default: 1'
  type: long?
  inputBinding:
    prefix: --processes
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
- model_resquiggle
