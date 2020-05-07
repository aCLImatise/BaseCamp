class: CommandLineTool
id: gapc.cwl
inputs:
- id: n
  doc: '[ --inline ]              try to inline NTs'
  type: boolean
  inputBinding:
    prefix: -n
- id: i
  doc: '[ --instance ] arg        use instance (else first)'
  type: boolean
  inputBinding:
    prefix: -i
- id: p
  doc: '[ --product ] arg         use product of algebras'
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: '[ --output ] arg          output filename (out.cc)'
  type: boolean
  inputBinding:
    prefix: -o
- id: class_name
  doc: 'default: basename(output)'
  type: string
  inputBinding:
    prefix: --class-name
- id: e
  doc: '[ --stdout ]              print code to stdout'
  type: boolean
  inputBinding:
    prefix: -E
- id: tab
  doc: overwrite table conf with this list
  type: string
  inputBinding:
    prefix: --tab
- id: t
  doc: '[ --table-design ]        automatically compute optimal table  configuration
    (ignore conf from source file)'
  type: boolean
  inputBinding:
    prefix: -t
- id: tab_all
  doc: tabulate everything
  type: boolean
  inputBinding:
    prefix: --tab-all
- id: cy_k
  doc: 'bottom up evalulation codgen (default: top down  unger style)'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: backtrace
  doc: use backtracing for the pretty print RHS of the  product
  type: boolean
  inputBinding:
    prefix: --backtrace
- id: k_backtrace
  doc: backtracing for k-scoring lhs
  type: boolean
  inputBinding:
    prefix: --kbacktrace
- id: sub_opt_classify
  doc: classified dp
  type: boolean
  inputBinding:
    prefix: --subopt-classify
- id: sub_opt
  doc: generate suboptimal backtracing code (needs foo  * pretty)
  type: boolean
  inputBinding:
    prefix: --subopt
- id: sample
  doc: generate stochastic backtracing code
  type: boolean
  inputBinding:
    prefix: --sample
- id: no_co_opt
  doc: with kbacktrace, don't output cooptimal  candidates
  type: boolean
  inputBinding:
    prefix: --no-coopt
- id: no_co_opt_class
  doc: with kbacktrace, don't output cooptimal  candidates
  type: boolean
  inputBinding:
    prefix: --no-coopt-class
- id: w
  doc: '[ --window-mode ]         window mode'
  type: boolean
  inputBinding:
    prefix: -w
- id: k_best
  doc: classify the k-best classes only
  type: boolean
  inputBinding:
    prefix: --kbest
- id: ambiguity
  doc: converts the selected instance into a context  free string grammar
  type: boolean
  inputBinding:
    prefix: --ambiguity
- id: specialize_grammar
  doc: uses the selected instance and creates a GAP  program which creates specialized
    GAP programs  that recognize a subset of candidates of the  original grammar.
  type: boolean
  inputBinding:
    prefix: --specialize_grammar
- id: verbose
  doc: show suppressed warnings and messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: l
  doc: '[ --log-level ] arg       the log level, valid values are 0 (VERBOSE), 1  (INFO),  2
    (NORMAL), 3 (WARNING), 4 (ERROR).  Default is 2 (NORMAL).'
  type: boolean
  inputBinding:
    prefix: -l
- id: i
  doc: '[ --include ] arg         include path'
  type: boolean
  inputBinding:
    prefix: -I
- id: v
  doc: '[ --version ]             version string'
  type: boolean
  inputBinding:
    prefix: -v
- id: p
  doc: '[ --pareto-version ] arg  Implementation of Pareto Product to use 0  (NoSort),
    1 (Sort),  2 (ISort), 3  (MultiDimOptimized), 4 (NoSort, domination  ordered) '
  type: boolean
  inputBinding:
    prefix: -P
- id: multi_dim_pareto
  doc: Use multi-dimensional Pareto. Works with -P 0,  -P 1 and -P 3.
  type: boolean
  inputBinding:
    prefix: --multi-dim-pareto
- id: c
  doc: '[ --cut-off ] arg         The cut-off value for -P 3 option (65 default).'
  type: boolean
  inputBinding:
    prefix: -c
- id: f
  doc: '[ --float-accuracy ] arg  The number of decimal places regarded for pareto
    and sorting procedures. If this is not set the  full floating point is compared.'
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: '[ --specialized-adp ] arg Set to generate specialized implementations of  the
    ADP framework: 0 (Standard), 1 (Sorted ADP), 2 (Pareto Eager ADP)'
  type: boolean
  inputBinding:
    prefix: -S
- id: step_mode
  doc: 'Mode of specialization: 0 force block mode, 1  force stepwise mode. This is
    automatically set  to best option if not specified.'
  type: string
  inputBinding:
    prefix: --step-mode
outputs: []
cwlVersion: v1.1
baseCommand:
- gapc
