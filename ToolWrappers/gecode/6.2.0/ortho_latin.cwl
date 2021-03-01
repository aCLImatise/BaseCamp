class: CommandLineTool
id: ortho_latin.cwl
inputs:
- id: in_ipl
  doc: "(def,val,bnd,dom,basic,advanced)\ndefault: dom\ninteger propagation level\
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
- id: in_disabled
  doc: 'Options for OrthoLatinSquare:'
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
- ortho-latin
