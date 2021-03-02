version 1.0

task Coloredmatrix {
  input {
    Boolean? model
    Boolean? symmetry
    Boolean? ipl
    Boolean? decay
    Boolean? seed
    Boolean? step
    Boolean? search
    Boolean? solutions
    Boolean? threads
    Boolean? c_d
    Boolean? a_d
    Boolean? d_l
    Boolean? node
    Boolean? fail
    Boolean? time
    Boolean? interrupt
    Boolean? assets
    Boolean? slice
    Boolean? restart
    Boolean? restart_base
    Boolean? restart_scale
    Boolean? no_goods
    Boolean? no_goods_limit
    Boolean? relax
    Boolean? mode
    Boolean? iterations
    Boolean? samples
    Boolean? print_last
    Boolean? file_sol
    Boolean? file_stat
    Boolean? trace
    Boolean? height
    Boolean? width
    Boolean? size
    Boolean? colors
    Boolean? not_all_equal
    Boolean? same_or_zero
    Boolean? distinct_except_zero
    Boolean? no_monochrome_rectangle
    String disabled
  }
  command <<<
    colored_matrix \
      ~{disabled} \
      ~{if (model) then "-model" else ""} \
      ~{if (symmetry) then "-symmetry" else ""} \
      ~{if (ipl) then "-ipl" else ""} \
      ~{if (decay) then "-decay" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (search) then "-search" else ""} \
      ~{if (solutions) then "-solutions" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (c_d) then "-c-d" else ""} \
      ~{if (a_d) then "-a-d" else ""} \
      ~{if (d_l) then "-d-l" else ""} \
      ~{if (node) then "-node" else ""} \
      ~{if (fail) then "-fail" else ""} \
      ~{if (time) then "-time" else ""} \
      ~{if (interrupt) then "-interrupt" else ""} \
      ~{if (assets) then "-assets" else ""} \
      ~{if (slice) then "-slice" else ""} \
      ~{if (restart) then "-restart" else ""} \
      ~{if (restart_base) then "-restart-base" else ""} \
      ~{if (restart_scale) then "-restart-scale" else ""} \
      ~{if (no_goods) then "-nogoods" else ""} \
      ~{if (no_goods_limit) then "-nogoods-limit" else ""} \
      ~{if (relax) then "-relax" else ""} \
      ~{if (mode) then "-mode" else ""} \
      ~{if (iterations) then "-iterations" else ""} \
      ~{if (samples) then "-samples" else ""} \
      ~{if (print_last) then "-print-last" else ""} \
      ~{if (file_sol) then "-file-sol" else ""} \
      ~{if (file_stat) then "-file-stat" else ""} \
      ~{if (trace) then "-trace" else ""} \
      ~{if (height) then "-height" else ""} \
      ~{if (width) then "-width" else ""} \
      ~{if (size) then "-size" else ""} \
      ~{if (colors) then "-colors" else ""} \
      ~{if (not_all_equal) then "-not-all-equal" else ""} \
      ~{if (same_or_zero) then "-same-or-0" else ""} \
      ~{if (distinct_except_zero) then "-distinct-except-0" else ""} \
      ~{if (no_monochrome_rectangle) then "-no-monochrome-rectangle" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0"
  }
  parameter_meta {
    model: "(corner, rows, both, columns, matrix) default: corner\\nmodel variants\\ncorner: Use direct corners model with not-all-equal constraints.\\nrows: Use model on pairs of rows (same_or_0 and distinct_except_0 constraints).\\nboth: Use both rows and corners model\\ncolumns: Use model on pairs of columns (same_or_0 and distinct_except_0 constraints).\\nmatrix: Use both rows and columns model"
    symmetry: "(none, matrix, values, both) default: matrix\\nsymmetry variants\\nnone: Don't use symmetry breaking.\\nmatrix: Order matrix rows and columns\\nvalues: Order values\\nboth: Order both rows/columns and values"
    ipl: "(def,val,bnd,dom,basic,advanced)\\ndefault: def\\ninteger propagation level (comma-separated list)"
    decay: "(double) default: 1\\ndecay factor"
    seed: "(unsigned int) default: 1\\nrandom number generator seed"
    step: "(double) default: 0\\nstep distance for float optimization"
    search: "(dfs, bab) default: dfs\\nsearch engine variants\\ndfs: Find a solution.\\nbab: Find an optimal solution."
    solutions: "(unsigned int) default: 1\\nnumber of solutions (0 = all)"
    threads: "(double) default: 1\\nnumber of threads (0 = #processing units)"
    c_d: "(unsigned int) default: 8\\nrecomputation commit distance"
    a_d: "(unsigned int) default: 2\\nrecomputation adaptation distance"
    d_l: "(unsigned int) default: 5\\ndiscrepancy limit for LDS"
    node: "(unsigned int) default: 0\\nnode cutoff (0 = none, solution mode)"
    fail: "(unsigned int) default: 0\\nfailure cutoff (0 = none, solution mode)"
    time: "(unsigned int) default: 0\\ntime (in ms) cutoff (0 = none, solution mode)"
    interrupt: "(optional: false, 0, true, 1) default: true\\nwhether to catch Ctrl-C (true) or not (false)"
    assets: "(unsigned int) default: 0\\n#portfolio assets (#engines)"
    slice: "(unsigned int) default: 250\\nportfolio slice (in #failures)"
    restart: "(none, constant, linear, luby, geometric) default: none\\nrestart sequence type"
    restart_base: "(double) default: 1.5\\nbase for geometric restart sequence"
    restart_scale: "(unsigned int) default: 250\\nscale factor for restart sequence"
    no_goods: "(optional: false, 0, true, 1) default: false\\nwhether to use no-goods from restarts"
    no_goods_limit: "(unsigned int) default: 128\\ndepth limit for no-good extraction"
    relax: "(double) default: 0\\nprobability for relaxing variable"
    mode: "(solution, time, stat, gist, cpprofiler) default: solution\\nhow to execute script"
    iterations: "(unsigned int) default: 1\\niterations per sample (time mode)"
    samples: "(unsigned int) default: 1\\nhow many samples (time mode)"
    print_last: "(optional: false, 0, true, 1) default: false\\nwhether to only print the last solution (solution mode)"
    file_sol: "(string) default: stdout\\nwhere to print solutions (supports stdout, stdlog, stderr)"
    file_stat: "(string) default: stdout\\nwhere to print statistics (supports stdout, stdlog, stderr)"
    trace: "(init,prune,fix,fail,done,propagate,commit,post,none,all,variable,general) default: none\\ntrace flags (comma-separated list)"
    height: "(unsigned int) default: 8\\nHeight of matrix"
    width: "(unsigned int) default: 8\\nWidth of matrix"
    size: "(unsigned int) default: 0\\nIf different from 0, used as both width and height"
    colors: "(unsigned int) default: 4\\nMaximum number of colors"
    not_all_equal: "(nq, naive, reified, nvalues, count, dfa) default: nq\\nHow to implement the not all equals constraint (used in corners model)\\nnq: Use nq constraint.\\nnaive: Use naive reified decomposition.\\nreified: Use reified decomposition.\\nnvalues: Use nvalues.\\ncount: Use count.\\ndfa: Use dfa."
    same_or_zero: "(reified, tuple-set, dfa) default: dfa\\nHow to implement the same or 0 constraint (used in the decomposed no monochrome rectangle constraint)\\nreified: Use reified decomposition.\\ntuple-set: Use tuple set representation.\\ndfa: Use dfa representation."
    distinct_except_zero: "(reified, dfa, count) default: dfa\\nHow to implement the distinct except 0 constraint (used in the decomposed no monochrome rectangle constraint)\\nreified: Use reified decomposition.\\ndfa: Use dfa decomposition.\\ncount: Use global cardinality."
    no_monochrome_rectangle: "(decompositions, dfa) default: dfa\\nHow to implement no monochrome rectangle (used in the rows model)\\ndecompositions: Use decompositions into same_or_0 and distinct_except_0.\\ndfa: Use DFA as direct implementation.\\n"
    disabled: "Options for Colored matrix:"
  }
  output {
    File out_stdout = stdout()
  }
}