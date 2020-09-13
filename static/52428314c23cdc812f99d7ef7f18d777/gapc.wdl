version 1.0

task Gapc {
  input {
    Boolean? try_inline_nts
    Boolean? arg_use_instance
    Boolean? arg_use_product
    File? arg_output_filename
    String? class_name
    Boolean? print_code_stdout
    String? tab
    Boolean? automatically_compute_conf
    Boolean? tab_all
    Boolean? cy_k
    Boolean? backtrace
    Boolean? sub_opt_classify
    Boolean? sub_opt
    Boolean? sample
    Boolean? no_co_opt
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
    Int? step_mode
    String product
  }
  command <<<
    gapc \
      ~{product} \
      ~{if (try_inline_nts) then "-n" else ""} \
      ~{if (arg_use_instance) then "-i" else ""} \
      ~{if (arg_use_product) then "-p" else ""} \
      ~{if (arg_output_filename) then "-o" else ""} \
      ~{if defined(class_name) then ("--class-name " +  '"' + class_name + '"') else ""} \
      ~{if (print_code_stdout) then "-E" else ""} \
      ~{if defined(tab) then ("--tab " +  '"' + tab + '"') else ""} \
      ~{if (automatically_compute_conf) then "-t" else ""} \
      ~{if (tab_all) then "--tab-all" else ""} \
      ~{if (cy_k) then "--cyk" else ""} \
      ~{if (backtrace) then "--backtrace" else ""} \
      ~{if (sub_opt_classify) then "--subopt-classify" else ""} \
      ~{if (sub_opt) then "--subopt" else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (no_co_opt) then "--no-coopt" else ""} \
      ~{if (k_best) then "--kbest" else ""} \
      ~{if (ambiguity) then "--ambiguity" else ""} \
      ~{if (specialize_grammar) then "--specialize_grammar" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (arg_log_level) then "-l" else ""} \
      ~{if (arg_include_path) then "-I" else ""} \
      ~{if (_version_string) then "-v" else ""} \
      ~{if (arg_implementation_use) then "-P" else ""} \
      ~{if (multi_dim_pareto) then "--multi-dim-pareto" else ""} \
      ~{if (arg_cutoff_value) then "-c" else ""} \
      ~{if (arg_number_set) then "-f" else ""} \
      ~{if (arg_set_generate) then "-S" else ""} \
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
    automatically_compute_conf: "[ --table-design ]        automatically compute optimal table\\nconfiguration (ignore conf from source file)"
    tab_all: "tabulate everything"
    cy_k: "bottom up evalulation codgen (default: top down\\nunger style)"
    backtrace: "use backtracing for the pretty print RHS of the"
    sub_opt_classify: "classified dp"
    sub_opt: "generate suboptimal backtracing code (needs foo\\n* pretty)"
    sample: "generate stochastic backtracing code"
    no_co_opt: "with kbacktrace, don't output cooptimal"
    k_best: "classify the k-best classes only"
    ambiguity: "converts the selected instance into a context\\nfree string grammar"
    specialize_grammar: "uses the selected instance and creates a GAP\\nprogram which creates specialized GAP programs\\nthat recognize a subset of candidates of the\\noriginal grammar."
    verbose: "show suppressed warnings and messages"
    arg_log_level: "[ --log-level ] arg       the log level, valid values are 0 (VERBOSE), 1\\n(INFO),  2 (NORMAL), 3 (WARNING), 4 (ERROR).\\nDefault is 2 (NORMAL)."
    arg_include_path: "[ --include ] arg         include path"
    _version_string: "[ --version ]             version string"
    arg_implementation_use: "[ --pareto-version ] arg  Implementation of Pareto Product to use 0\\n(NoSort), 1 (Sort), 2 (ISort), 3\\n(MultiDimOptimized), 4 (NoSort, domination\\nordered)"
    multi_dim_pareto: "Use multi-dimensional Pareto. Works with -P 0,"
    arg_cutoff_value: "[ --cut-off ] arg         The cut-off value for -P 3 option (65 default)."
    arg_number_set: "[ --float-accuracy ] arg  The number of decimal places regarded for pareto\\nand sorting procedures. If this is not set the\\nfull floating point is compared."
    arg_set_generate: "[ --specialized-adp ] arg Set to generate specialized implementations of\\nthe ADP framework: 0 (Standard), 1 (Sorted ADP),\\n2 (Pareto Eager ADP)"
    step_mode: "Mode of specialization: 0 force block mode, 1\\nforce stepwise mode. This is automatically set\\nto best option if not specified.\\n"
    product: "--kbacktrace                 backtracing for k-scoring lhs"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_filename = "${in_arg_output_filename}"
  }
}