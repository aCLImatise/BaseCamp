class: CommandLineTool
id: gapc.cwl
inputs:
- id: in_try_inline_nts
  doc: '[ --inline ]              try to inline NTs'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_use_instance
  doc: '[ --instance ] arg        use instance (else first)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_use_product
  doc: '[ --product ] arg         use product of algebras'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_output_filename
  doc: '[ --output ] arg          output filename (out.cc)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_class_name
  doc: 'default: basename(output)'
  type: string?
  inputBinding:
    prefix: --class-name
- id: in_print_code_stdout
  doc: '[ --stdout ]              print code to stdout'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_tab
  doc: overwrite table conf with this list
  type: string?
  inputBinding:
    prefix: --tab
- id: in_automatically_compute_tableconfiguration
  doc: "[ --table-design ]        automatically compute optimal table\nconfiguration\
    \ (ignore conf from source file)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_tab_all
  doc: tabulate everything
  type: boolean?
  inputBinding:
    prefix: --tab-all
- id: in_cy_k
  doc: "bottom up evalulation codgen (default: top down\nunger style)"
  type: boolean?
  inputBinding:
    prefix: --cyk
- id: in_backtrace
  doc: use backtracing for the pretty print RHS of the
  type: boolean?
  inputBinding:
    prefix: --backtrace
- id: in_sub_opt_classify
  doc: classified dp
  type: boolean?
  inputBinding:
    prefix: --subopt-classify
- id: in_sub_opt
  doc: "generate suboptimal backtracing code (needs foo\n* pretty)"
  type: boolean?
  inputBinding:
    prefix: --subopt
- id: in_sample
  doc: generate stochastic backtracing code
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_no_co_opt
  doc: with kbacktrace, don't output cooptimal
  type: boolean?
  inputBinding:
    prefix: --no-coopt
- id: in_k_best
  doc: classify the k-best classes only
  type: boolean?
  inputBinding:
    prefix: --kbest
- id: in_ambiguity
  doc: "converts the selected instance into a context\nfree string grammar"
  type: boolean?
  inputBinding:
    prefix: --ambiguity
- id: in_specialize_grammar
  doc: "uses the selected instance and creates a GAP\nprogram which creates specialized\
    \ GAP programs\nthat recognize a subset of candidates of the\noriginal grammar."
  type: boolean?
  inputBinding:
    prefix: --specialize_grammar
- id: in_verbose
  doc: show suppressed warnings and messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_arg_log_level
  doc: "[ --log-level ] arg       the log level, valid values are 0 (VERBOSE), 1\n\
    (INFO),  2 (NORMAL), 3 (WARNING), 4 (ERROR).\nDefault is 2 (NORMAL)."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_include_path
  doc: '[ --include ] arg         include path'
  type: boolean?
  inputBinding:
    prefix: -I
- id: in__version_string
  doc: '[ --version ]             version string'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_implementation_pareto
  doc: "[ --pareto-version ] arg  Implementation of Pareto Product to use 0\n(NoSort),\
    \ 1 (Sort), 2 (ISort), 3\n(MultiDimOptimized), 4 (NoSort, domination\nordered)"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_multi_dim_pareto
  doc: Use multi-dimensional Pareto. Works with -P 0,
  type: boolean?
  inputBinding:
    prefix: --multi-dim-pareto
- id: in_arg_cutoff_value
  doc: '[ --cut-off ] arg         The cut-off value for -P 3 option (65 default).'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_number_set
  doc: "[ --float-accuracy ] arg  The number of decimal places regarded for pareto\n\
    and sorting procedures. If this is not set the\nfull floating point is compared."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_set_generate
  doc: "[ --specialized-adp ] arg Set to generate specialized implementations of\n\
    the ADP framework: 0 (Standard), 1 (Sorted ADP),\n2 (Pareto Eager ADP)"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_step_mode
  doc: "Mode of specialization: 0 force block mode, 1\nforce stepwise mode. This is\
    \ automatically set\nto best option if not specified.\n"
  type: long?
  inputBinding:
    prefix: --step-mode
- id: in_product
  doc: --kbacktrace                 backtracing for k-scoring lhs
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_filename
  doc: '[ --output ] arg          output filename (out.cc)'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bellmans-gapc:2020.12.08--h18542e6_0
cwlVersion: v1.1
baseCommand:
- gapc
