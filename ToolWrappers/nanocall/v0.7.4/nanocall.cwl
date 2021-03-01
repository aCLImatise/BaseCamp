class: CommandLineTool
id: nanocall.cwl
inputs:
- id: in_threads
  doc: 'Number of parallel threads. (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_pore
  doc: 'Pore name, used to select builtin pore model. (default: r9)'
  type: long?
  inputBinding:
    prefix: --pore
- id: in_strandfile_model_strandfile
  doc: "<strand:file>,  --model <strand:file>  (accepted multiple times)\nCustom pore\
    \ model for strand (0=template, 1=complement, 2=both)."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_model_fof_n
  doc: File of pore models.
  type: File?
  inputBinding:
    prefix: --model-fofn
- id: in_trans
  doc: Custom initial state transitions.
  type: File?
  inputBinding:
    prefix: --trans
- id: in_pr_stay
  doc: 'Transition probability of staying in the same state. (default: 0.1)'
  type: double?
  inputBinding:
    prefix: --pr-stay
- id: in_pr_skip
  doc: 'Transition probability of skipping at least 1 state. (default: 0.3)'
  type: double?
  inputBinding:
    prefix: --pr-skip
- id: in_no_base_call
  doc: Disable basecalling.
  type: boolean?
  inputBinding:
    prefix: --no-basecall
- id: in_base_call
  doc: Enable basecalling (default).
  type: boolean?
  inputBinding:
    prefix: --basecall
- id: in_no_train
  doc: Disable all training.
  type: boolean?
  inputBinding:
    prefix: --no-train
- id: in_train
  doc: Enable training. (default)
  type: boolean?
  inputBinding:
    prefix: --train
- id: in_no_train_scaling
  doc: Do not train pore model scaling.
  type: boolean?
  inputBinding:
    prefix: --no-train-scaling
- id: in_no_train_transitions
  doc: Do not train state transitions.
  type: boolean?
  inputBinding:
    prefix: --no-train-transitions
- id: in_double_strand_scaling
  doc: Train scaling parameters per read. (default)
  type: boolean?
  inputBinding:
    prefix: --double-strand-scaling
- id: in_single_strand_scaling
  doc: Train scaling parameters per strand.
  type: boolean?
  inputBinding:
    prefix: --single-strand-scaling
- id: in_one_d
  doc: Interpret entire read as 1D template only.
  type: boolean?
  inputBinding:
    prefix: --1d
- id: in_scaling_num_events
  doc: 'Number of events used for model scaling. (default: 200)'
  type: long?
  inputBinding:
    prefix: --scaling-num-events
- id: in_scaling_max_rounds
  doc: 'Maximum scaling rounds. (default: 10)'
  type: long?
  inputBinding:
    prefix: --scaling-max-rounds
- id: in_scaling_min_progress
  doc: 'Minimum scaling fit progress. (default: 1)'
  type: double?
  inputBinding:
    prefix: --scaling-min-progress
- id: in_scaling_select_threshold
  doc: "Select best model per strand during scaling if log score better by\nthreshold.\
    \ (default: 20)"
  type: double?
  inputBinding:
    prefix: --scaling-select-threshold
- id: in_fast_a_line_width
  doc: 'Maximum fasta line width. (default: 80)'
  type: long?
  inputBinding:
    prefix: --fasta-line-width
- id: in_min_ed_events
  doc: 'Minimum EventDetection events. (default: 10)'
  type: long?
  inputBinding:
    prefix: --min-ed-events
- id: in_max_ed_events
  doc: 'Maximum EventDetection events. (default: 100000)'
  type: long?
  inputBinding:
    prefix: --max-ed-events
- id: in_trim_ed_sq_start
  doc: 'Number of events to trim after sequence start. (default: 50)'
  type: long?
  inputBinding:
    prefix: --trim-ed-sq-start
- id: in_trim_ed_sq_end
  doc: 'Number of events to trim before sequence end. (default: 50)'
  type: long?
  inputBinding:
    prefix: --trim-ed-sq-end
- id: in_trim_ed_hp_start
  doc: 'Number of events to trim before hairpin start. (default: 50)'
  type: long?
  inputBinding:
    prefix: --trim-ed-hp-start
- id: in_trim_ed_hp_end
  doc: 'Number of events to trim after hairpin end. (default: 50)'
  type: long?
  inputBinding:
    prefix: --trim-ed-hp-end
- id: in_train_drift
  doc: 'Train drift parameter. (default: yes for R73, no for R9)'
  type: long?
  inputBinding:
    prefix: --train-drift
- id: in_chunk_size
  doc: 'Thread chunk size. (default: 1)'
  type: long?
  inputBinding:
    prefix: --chunk-size
- id: in_ed_group
  doc: 'EventDetection group to use. (default: smallest available)'
  type: long?
  inputBinding:
    prefix: --ed-group
- id: in_write_fast_five
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --write-fast5
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_nano_call
  doc: "[-t <int>] [-o <file>] [--write-fast5] [--pore <r73|r9>] [-m\n<strand:file>]\
    \ ...  [--model-fofn <file>] [-s <file>]\n[--pr-stay <float>] [--pr-skip <float>]\
    \ [--no-basecall]\n[--basecall] [--no-train] [--train] [--no-train-scaling]\n\
    [--no-train-transitions] [--double-strand-scaling]\n[--single-strand-scaling]\
    \ [--1d] [--scaling-num-events <int>]\n[--scaling-max-rounds <int>] [--scaling-min-progress\
    \ <float>]\n[--scaling-select-threshold <float>] [--fasta-line-width\n<int>] [--min-ed-events\
    \ <int>] [--max-ed-events <int>]\n[--trim-ed-sq-start <int>] [--trim-ed-sq-end\
    \ <int>]\n[--trim-ed-hp-start <int>] [--trim-ed-hp-end <int>]\n[--train-drift\
    \ <0|1>] [--stats <file>] [--log <string>] ...\n[--chunk-size <int>] [--ed-group\
    \ <000|001|...>] [--]\n[--version] [-h] <path> ..."
  type: string
  inputBinding:
    position: 0
- id: in_output_dot
  doc: --write-fast5
  type: string
  inputBinding:
    position: 0
- id: in_stats_dot
  doc: --log <string>  (accepted multiple times)
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
- nanocall
