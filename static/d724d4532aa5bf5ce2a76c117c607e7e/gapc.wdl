version 1.0

task Gapc {
  input {
    Boolean? try_inline_nts
    Boolean? arg_use_instance
    Boolean? arg_use_product
    Boolean? arg_output_filename
    String? class_name
    Boolean? print_code_stdout
    String? tab
    Boolean? automatically_compute_table
    Boolean? tab_all
    Boolean? cy_k
    Boolean? backtrace
    Boolean? k_backtrace
    Boolean? sub_opt_classify
    Boolean? sub_opt
    Boolean? sample
    Boolean? no_co_opt
    Boolean? no_co_opt_class
    Boolean? _window_mode
    Boolean? k_best
    Boolean? ambiguity
    Boolean? specialize_grammar
    Boolean? verbose
    Boolean? arg_log_level
    Boolean? arg_include_path
    Boolean? _version_string
    Boolean? arg_implementation_use
    Boolean? multi_dim_pareto
    Boolean? arg_cutoff_value
    Boolean? arg_number_set
    Boolean? arg_set_generate
    String? step_mode
  }
  command <<<
    gapc \
      ~{true="-n" false="" try_inline_nts} \
      ~{true="-i" false="" arg_use_instance} \
      ~{true="-p" false="" arg_use_product} \
      ~{true="-o" false="" arg_output_filename} \
      ~{if defined(class_name) then ("--class-name " +  '"' + class_name + '"') else ""} \
      ~{true="-E" false="" print_code_stdout} \
      ~{if defined(tab) then ("--tab " +  '"' + tab + '"') else ""} \
      ~{true="-t" false="" automatically_compute_table} \
      ~{true="--tab-all" false="" tab_all} \
      ~{true="--cyk" false="" cy_k} \
      ~{true="--backtrace" false="" backtrace} \
      ~{true="--kbacktrace" false="" k_backtrace} \
      ~{true="--subopt-classify" false="" sub_opt_classify} \
      ~{true="--subopt" false="" sub_opt} \
      ~{true="--sample" false="" sample} \
      ~{true="--no-coopt" false="" no_co_opt} \
      ~{true="--no-coopt-class" false="" no_co_opt_class} \
      ~{true="-w" false="" _window_mode} \
      ~{true="--kbest" false="" k_best} \
      ~{true="--ambiguity" false="" ambiguity} \
      ~{true="--specialize_grammar" false="" specialize_grammar} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-l" false="" arg_log_level} \
      ~{true="-I" false="" arg_include_path} \
      ~{true="-v" false="" _version_string} \
      ~{true="-P" false="" arg_implementation_use} \
      ~{true="--multi-dim-pareto" false="" multi_dim_pareto} \
      ~{true="-c" false="" arg_cutoff_value} \
      ~{true="-f" false="" arg_number_set} \
      ~{true="-S" false="" arg_set_generate} \
      ~{if defined(step_mode) then ("--step-mode " +  '"' + step_mode + '"') else ""}
  >>>
  parameter_meta {
    try_inline_nts: "[ --inline ]              try to inline NTs"
    arg_use_instance: "[ --instance ] arg        use instance (else first)"
    arg_use_product: "[ --product ] arg         use product of algebras"
    arg_output_filename: "[ --output ] arg          output filename (out.cc)"
    class_name: "default: basename(output)"
    print_code_stdout: "[ --stdout ]              print code to stdout"
    tab: "overwrite table conf with this list"
    automatically_compute_table: "[ --table-design ]        automatically compute optimal table  configuration (ignore conf from source file)"
    tab_all: "tabulate everything"
    cy_k: "bottom up evalulation codgen (default: top down  unger style)"
    backtrace: "use backtracing for the pretty print RHS of the  product"
    k_backtrace: "backtracing for k-scoring lhs"
    sub_opt_classify: "classified dp"
    sub_opt: "generate suboptimal backtracing code (needs foo  * pretty)"
    sample: "generate stochastic backtracing code"
    no_co_opt: "with kbacktrace, don't output cooptimal  candidates"
    no_co_opt_class: "with kbacktrace, don't output cooptimal  candidates"
    _window_mode: "[ --window-mode ]         window mode"
    k_best: "classify the k-best classes only"
    ambiguity: "converts the selected instance into a context  free string grammar"
    specialize_grammar: "uses the selected instance and creates a GAP  program which creates specialized GAP programs  that recognize a subset of candidates of the  original grammar."
    verbose: "show suppressed warnings and messages"
    arg_log_level: "[ --log-level ] arg       the log level, valid values are 0 (VERBOSE), 1  (INFO),  2 (NORMAL), 3 (WARNING), 4 (ERROR).  Default is 2 (NORMAL)."
    arg_include_path: "[ --include ] arg         include path"
    _version_string: "[ --version ]             version string"
    arg_implementation_use: "[ --pareto-version ] arg  Implementation of Pareto Product to use 0  (NoSort), 1 (Sort),  2 (ISort), 3  (MultiDimOptimized), 4 (NoSort, domination  ordered) "
    multi_dim_pareto: "Use multi-dimensional Pareto. Works with -P 0,  -P 1 and -P 3."
    arg_cutoff_value: "[ --cut-off ] arg         The cut-off value for -P 3 option (65 default)."
    arg_number_set: "[ --float-accuracy ] arg  The number of decimal places regarded for pareto and sorting procedures. If this is not set the  full floating point is compared."
    arg_set_generate: "[ --specialized-adp ] arg Set to generate specialized implementations of  the ADP framework: 0 (Standard), 1 (Sorted ADP), 2 (Pareto Eager ADP)"
    step_mode: "Mode of specialization: 0 force block mode, 1  force stepwise mode. This is automatically set  to best option if not specified."
  }
}