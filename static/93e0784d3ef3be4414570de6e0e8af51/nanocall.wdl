version 1.0

task Nanocall {
  input {
    Int? _threads_intnumber
    File? _output_file
    Int? pore
    Boolean? strandfile_strandfile_accepted
    File? model_fof_n
    File? _trans_filecustom
    Float? pr_stay
    Float? pr_skip
    Boolean? no_base_call
    Boolean? base_call
    Boolean? no_train
    Boolean? train
    Boolean? no_train_scaling
    Boolean? no_train_transitions
    Boolean? double_strand_scaling
    Boolean? single_strand_scaling
    Boolean? one_d
    Int? scaling_num_events
    Int? scaling_max_rounds
    Float? scaling_min_progress
    Float? scaling_select_threshold
    Int? fast_a_line_width
    Int? min_ed_events
    Int? max_ed_events
    Int? trim_ed_sq_start
    Int? trim_ed_sq_end
    Int? trim_ed_hp_start
    Int? trim_ed_hp_end
    Int? train_drift
    File? stats
    String? log
    Int? chunk_size
    Int? ed_group
    Boolean? write_fast_five
    String nano_call
    String output_dot
  }
  command <<<
    nanocall \
      ~{nano_call} \
      ~{output_dot} \
      ~{if defined(_threads_intnumber) then ("-t " +  '"' + _threads_intnumber + '"') else ""} \
      ~{if defined(_output_file) then ("-o " +  '"' + _output_file + '"') else ""} \
      ~{if defined(pore) then ("--pore " +  '"' + pore + '"') else ""} \
      ~{if (strandfile_strandfile_accepted) then "-m" else ""} \
      ~{if defined(model_fof_n) then ("--model-fofn " +  '"' + model_fof_n + '"') else ""} \
      ~{if defined(_trans_filecustom) then ("-s " +  '"' + _trans_filecustom + '"') else ""} \
      ~{if defined(pr_stay) then ("--pr-stay " +  '"' + pr_stay + '"') else ""} \
      ~{if defined(pr_skip) then ("--pr-skip " +  '"' + pr_skip + '"') else ""} \
      ~{if (no_base_call) then "--no-basecall" else ""} \
      ~{if (base_call) then "--basecall" else ""} \
      ~{if (no_train) then "--no-train" else ""} \
      ~{if (train) then "--train" else ""} \
      ~{if (no_train_scaling) then "--no-train-scaling" else ""} \
      ~{if (no_train_transitions) then "--no-train-transitions" else ""} \
      ~{if (double_strand_scaling) then "--double-strand-scaling" else ""} \
      ~{if (single_strand_scaling) then "--single-strand-scaling" else ""} \
      ~{if (one_d) then "--1d" else ""} \
      ~{if defined(scaling_num_events) then ("--scaling-num-events " +  '"' + scaling_num_events + '"') else ""} \
      ~{if defined(scaling_max_rounds) then ("--scaling-max-rounds " +  '"' + scaling_max_rounds + '"') else ""} \
      ~{if defined(scaling_min_progress) then ("--scaling-min-progress " +  '"' + scaling_min_progress + '"') else ""} \
      ~{if defined(scaling_select_threshold) then ("--scaling-select-threshold " +  '"' + scaling_select_threshold + '"') else ""} \
      ~{if defined(fast_a_line_width) then ("--fasta-line-width " +  '"' + fast_a_line_width + '"') else ""} \
      ~{if defined(min_ed_events) then ("--min-ed-events " +  '"' + min_ed_events + '"') else ""} \
      ~{if defined(max_ed_events) then ("--max-ed-events " +  '"' + max_ed_events + '"') else ""} \
      ~{if defined(trim_ed_sq_start) then ("--trim-ed-sq-start " +  '"' + trim_ed_sq_start + '"') else ""} \
      ~{if defined(trim_ed_sq_end) then ("--trim-ed-sq-end " +  '"' + trim_ed_sq_end + '"') else ""} \
      ~{if defined(trim_ed_hp_start) then ("--trim-ed-hp-start " +  '"' + trim_ed_hp_start + '"') else ""} \
      ~{if defined(trim_ed_hp_end) then ("--trim-ed-hp-end " +  '"' + trim_ed_hp_end + '"') else ""} \
      ~{if defined(train_drift) then ("--train-drift " +  '"' + train_drift + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(ed_group) then ("--ed-group " +  '"' + ed_group + '"') else ""} \
      ~{if (write_fast_five) then "--write-fast5" else ""}
  >>>
  parameter_meta {
    _threads_intnumber: ",  --threads <int>\\nNumber of parallel threads. (default: 1)"
    _output_file: ",  --output <file>"
    pore: "Pore name, used to select builtin pore model. (default: r9)"
    strandfile_strandfile_accepted: "<strand:file>,  --model <strand:file>  (accepted multiple times)\\nCustom pore model for strand (0=template, 1=complement, 2=both)."
    model_fof_n: "File of pore models."
    _trans_filecustom: ",  --trans <file>\\nCustom initial state transitions."
    pr_stay: "Transition probability of staying in the same state. (default: 0.1)"
    pr_skip: "Transition probability of skipping at least 1 state. (default: 0.3)"
    no_base_call: "Disable basecalling."
    base_call: "Enable basecalling (default)."
    no_train: "Disable all training."
    train: "Enable training. (default)"
    no_train_scaling: "Do not train pore model scaling."
    no_train_transitions: "Do not train state transitions."
    double_strand_scaling: "Train scaling parameters per read. (default)"
    single_strand_scaling: "Train scaling parameters per strand."
    one_d: "Interpret entire read as 1D template only."
    scaling_num_events: "Number of events used for model scaling. (default: 200)"
    scaling_max_rounds: "Maximum scaling rounds. (default: 10)"
    scaling_min_progress: "Minimum scaling fit progress. (default: 1)"
    scaling_select_threshold: "Select best model per strand during scaling if log score better by\\nthreshold. (default: 20)"
    fast_a_line_width: "Maximum fasta line width. (default: 80)"
    min_ed_events: "Minimum EventDetection events. (default: 10)"
    max_ed_events: "Maximum EventDetection events. (default: 100000)"
    trim_ed_sq_start: "Number of events to trim after sequence start. (default: 50)"
    trim_ed_sq_end: "Number of events to trim before sequence end. (default: 50)"
    trim_ed_hp_start: "Number of events to trim before hairpin start. (default: 50)"
    trim_ed_hp_end: "Number of events to trim after hairpin end. (default: 50)"
    train_drift: "Train drift parameter. (default: yes for R73, no for R9)"
    stats: "Stats."
    log: "(accepted multiple times)\\nLog level. (default: info)"
    chunk_size: "Thread chunk size. (default: 1)"
    ed_group: "EventDetection group to use. (default: smallest available)"
    write_fast_five: ""
    nano_call: "[-t <int>] [-o <file>] [--write-fast5] [--pore <r73|r9>] [-m\\n<strand:file>] ...  [--model-fofn <file>] [-s <file>]\\n[--pr-stay <float>] [--pr-skip <float>] [--no-basecall]\\n[--basecall] [--no-train] [--train] [--no-train-scaling]\\n[--no-train-transitions] [--double-strand-scaling]\\n[--single-strand-scaling] [--1d] [--scaling-num-events <int>]\\n[--scaling-max-rounds <int>] [--scaling-min-progress <float>]\\n[--scaling-select-threshold <float>] [--fasta-line-width\\n<int>] [--min-ed-events <int>] [--max-ed-events <int>]\\n[--trim-ed-sq-start <int>] [--trim-ed-sq-end <int>]\\n[--trim-ed-hp-start <int>] [--trim-ed-hp-end <int>]\\n[--train-drift <0|1>] [--stats <file>] [--log <string>] ...\\n[--chunk-size <int>] [--ed-group <000|001|...>] [--]\\n[--version] [-h] <path> ..."
    output_dot: "--write-fast5"
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}