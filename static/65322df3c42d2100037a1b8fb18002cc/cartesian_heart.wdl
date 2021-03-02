version 1.0

task Cartesianheart {
  input {
    Boolean? ipl
    Boolean? decay
    Boolean? seed
    Boolean? step
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
    String disabled
  }
  command <<<
    cartesian_heart \
      ~{disabled} \
      ~{if (ipl) then "-ipl" else ""} \
      ~{if (decay) then "-decay" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (step) then "-step" else ""} \
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
      ~{if (trace) then "-trace" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0"
  }
  parameter_meta {
    ipl: "(def,val,bnd,dom,basic,advanced)\\ndefault: def\\ninteger propagation level (comma-separated list)"
    decay: "(double) default: 1\\ndecay factor"
    seed: "(unsigned int) default: 1\\nrandom number generator seed"
    step: "(double) default: 0.01\\nstep distance for float optimization"
    solutions: "(unsigned int) default: 0\\nnumber of solutions (0 = all)"
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
    trace: "(init,prune,fix,fail,done,propagate,commit,post,none,all,variable,general) default: none\\ntrace flags (comma-separated list)\\n"
    disabled: "Options for CartesianHeart:"
  }
  output {
    File out_stdout = stdout()
  }
}