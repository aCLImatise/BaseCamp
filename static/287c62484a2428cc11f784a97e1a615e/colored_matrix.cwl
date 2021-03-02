class: CommandLineTool
id: colored_matrix.cwl
inputs:
- id: in_model
  doc: "(corner, rows, both, columns, matrix) default: corner\nmodel variants\ncorner:\
    \ Use direct corners model with not-all-equal constraints.\nrows: Use model on\
    \ pairs of rows (same_or_0 and distinct_except_0 constraints).\nboth: Use both\
    \ rows and corners model\ncolumns: Use model on pairs of columns (same_or_0 and\
    \ distinct_except_0 constraints).\nmatrix: Use both rows and columns model"
  type: boolean?
  inputBinding:
    prefix: -model
- id: in_symmetry
  doc: "(none, matrix, values, both) default: matrix\nsymmetry variants\nnone: Don't\
    \ use symmetry breaking.\nmatrix: Order matrix rows and columns\nvalues: Order\
    \ values\nboth: Order both rows/columns and values"
  type: boolean?
  inputBinding:
    prefix: -symmetry
- id: in_ipl
  doc: "(def,val,bnd,dom,basic,advanced)\ndefault: def\ninteger propagation level\
    \ (comma-separated list)"
  type: boolean?
  inputBinding:
    prefix: -ipl
- id: in_decay
  doc: "(double) default: 1\ndecay factor"
  type: boolean?
  inputBinding:
    prefix: -decay
- id: in_seed
  doc: "(unsigned int) default: 1\nrandom number generator seed"
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_step
  doc: "(double) default: 0\nstep distance for float optimization"
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_search
  doc: "(dfs, bab) default: dfs\nsearch engine variants\ndfs: Find a solution.\nbab:\
    \ Find an optimal solution."
  type: boolean?
  inputBinding:
    prefix: -search
- id: in_solutions
  doc: "(unsigned int) default: 1\nnumber of solutions (0 = all)"
  type: boolean?
  inputBinding:
    prefix: -solutions
- id: in_threads
  doc: "(double) default: 1\nnumber of threads (0 = #processing units)"
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_c_d
  doc: "(unsigned int) default: 8\nrecomputation commit distance"
  type: boolean?
  inputBinding:
    prefix: -c-d
- id: in_a_d
  doc: "(unsigned int) default: 2\nrecomputation adaptation distance"
  type: boolean?
  inputBinding:
    prefix: -a-d
- id: in_d_l
  doc: "(unsigned int) default: 5\ndiscrepancy limit for LDS"
  type: boolean?
  inputBinding:
    prefix: -d-l
- id: in_node
  doc: "(unsigned int) default: 0\nnode cutoff (0 = none, solution mode)"
  type: boolean?
  inputBinding:
    prefix: -node
- id: in_fail
  doc: "(unsigned int) default: 0\nfailure cutoff (0 = none, solution mode)"
  type: boolean?
  inputBinding:
    prefix: -fail
- id: in_time
  doc: "(unsigned int) default: 0\ntime (in ms) cutoff (0 = none, solution mode)"
  type: boolean?
  inputBinding:
    prefix: -time
- id: in_interrupt
  doc: "(optional: false, 0, true, 1) default: true\nwhether to catch Ctrl-C (true)\
    \ or not (false)"
  type: boolean?
  inputBinding:
    prefix: -interrupt
- id: in_assets
  doc: "(unsigned int) default: 0\n#portfolio assets (#engines)"
  type: boolean?
  inputBinding:
    prefix: -assets
- id: in_slice
  doc: "(unsigned int) default: 250\nportfolio slice (in #failures)"
  type: boolean?
  inputBinding:
    prefix: -slice
- id: in_restart
  doc: "(none, constant, linear, luby, geometric) default: none\nrestart sequence\
    \ type"
  type: boolean?
  inputBinding:
    prefix: -restart
- id: in_restart_base
  doc: "(double) default: 1.5\nbase for geometric restart sequence"
  type: boolean?
  inputBinding:
    prefix: -restart-base
- id: in_restart_scale
  doc: "(unsigned int) default: 250\nscale factor for restart sequence"
  type: boolean?
  inputBinding:
    prefix: -restart-scale
- id: in_no_goods
  doc: "(optional: false, 0, true, 1) default: false\nwhether to use no-goods from\
    \ restarts"
  type: boolean?
  inputBinding:
    prefix: -nogoods
- id: in_no_goods_limit
  doc: "(unsigned int) default: 128\ndepth limit for no-good extraction"
  type: boolean?
  inputBinding:
    prefix: -nogoods-limit
- id: in_relax
  doc: "(double) default: 0\nprobability for relaxing variable"
  type: boolean?
  inputBinding:
    prefix: -relax
- id: in_mode
  doc: "(solution, time, stat, gist, cpprofiler) default: solution\nhow to execute\
    \ script"
  type: boolean?
  inputBinding:
    prefix: -mode
- id: in_iterations
  doc: "(unsigned int) default: 1\niterations per sample (time mode)"
  type: boolean?
  inputBinding:
    prefix: -iterations
- id: in_samples
  doc: "(unsigned int) default: 1\nhow many samples (time mode)"
  type: boolean?
  inputBinding:
    prefix: -samples
- id: in_print_last
  doc: "(optional: false, 0, true, 1) default: false\nwhether to only print the last\
    \ solution (solution mode)"
  type: boolean?
  inputBinding:
    prefix: -print-last
- id: in_file_sol
  doc: "(string) default: stdout\nwhere to print solutions (supports stdout, stdlog,\
    \ stderr)"
  type: boolean?
  inputBinding:
    prefix: -file-sol
- id: in_file_stat
  doc: "(string) default: stdout\nwhere to print statistics (supports stdout, stdlog,\
    \ stderr)"
  type: boolean?
  inputBinding:
    prefix: -file-stat
- id: in_trace
  doc: "(init,prune,fix,fail,done,propagate,commit,post,none,all,variable,general)\
    \ default: none\ntrace flags (comma-separated list)"
  type: boolean?
  inputBinding:
    prefix: -trace
- id: in_height
  doc: "(unsigned int) default: 8\nHeight of matrix"
  type: boolean?
  inputBinding:
    prefix: -height
- id: in_width
  doc: "(unsigned int) default: 8\nWidth of matrix"
  type: boolean?
  inputBinding:
    prefix: -width
- id: in_size
  doc: "(unsigned int) default: 0\nIf different from 0, used as both width and height"
  type: boolean?
  inputBinding:
    prefix: -size
- id: in_colors
  doc: "(unsigned int) default: 4\nMaximum number of colors"
  type: boolean?
  inputBinding:
    prefix: -colors
- id: in_not_all_equal
  doc: "(nq, naive, reified, nvalues, count, dfa) default: nq\nHow to implement the\
    \ not all equals constraint (used in corners model)\nnq: Use nq constraint.\n\
    naive: Use naive reified decomposition.\nreified: Use reified decomposition.\n\
    nvalues: Use nvalues.\ncount: Use count.\ndfa: Use dfa."
  type: boolean?
  inputBinding:
    prefix: -not-all-equal
- id: in_same_or_zero
  doc: "(reified, tuple-set, dfa) default: dfa\nHow to implement the same or 0 constraint\
    \ (used in the decomposed no monochrome rectangle constraint)\nreified: Use reified\
    \ decomposition.\ntuple-set: Use tuple set representation.\ndfa: Use dfa representation."
  type: boolean?
  inputBinding:
    prefix: -same-or-0
- id: in_distinct_except_zero
  doc: "(reified, dfa, count) default: dfa\nHow to implement the distinct except 0\
    \ constraint (used in the decomposed no monochrome rectangle constraint)\nreified:\
    \ Use reified decomposition.\ndfa: Use dfa decomposition.\ncount: Use global cardinality."
  type: boolean?
  inputBinding:
    prefix: -distinct-except-0
- id: in_no_monochrome_rectangle
  doc: "(decompositions, dfa) default: dfa\nHow to implement no monochrome rectangle\
    \ (used in the rows model)\ndecompositions: Use decompositions into same_or_0\
    \ and distinct_except_0.\ndfa: Use DFA as direct implementation.\n"
  type: boolean?
  inputBinding:
    prefix: -no-monochrome-rectangle
- id: in_disabled
  doc: 'Options for Colored matrix:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0
cwlVersion: v1.1
baseCommand:
- colored-matrix
