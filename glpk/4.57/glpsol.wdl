version 1.0

task Glpsol {
  input {
    Boolean? mps
    Boolean? free_mps
    Boolean? lp
    Boolean? glp
    Boolean? math
    File? model
    File? data
    File? display
    String? seed
    Boolean? min_cost
    Boolean? max_flow
    Boolean? cnf
    Boolean? simplex
    Boolean? interior
    File? read
    Boolean? min
    Boolean? max
    Boolean? scale
    Boolean? no_scale
    File? write_solution_filename_printable
    File? write
    File? ranges
    String? tm_lim
    String? mem_lim
    Boolean? check
    String? name
    File? w_mps
    File? w_free_mps
    File? wlp
    File? w_glp
    File? w_cnf
    File? log
    Boolean? luf
    Boolean? btf
    Boolean? ft
    Boolean? cbg
    Boolean? cgr
    Boolean? primal
    Boolean? dual
    Boolean? std
    Boolean? adv
    Boolean? bib
    File? ini
    Boolean? steep
    Boolean? no_steep
    Boolean? relax
    Boolean? no_relax
    Boolean? presol
    Boolean? no_presol
    Boolean? exact
    Boolean? x_check
    Boolean? nord
    Boolean? qmd
    Boolean? amd
    Boolean? sym_amd
    Boolean? no_mip
    Boolean? first
    Boolean? last
    Boolean? most_f
    Boolean? dr_tom
    Boolean? p_cost
    Boolean? dfs
    Boolean? bfs
    Boolean? best_p
    Boolean? best_b
    Boolean? into_pt
    Boolean? no_into_pt
    Boolean? bin_a_rize
    Boolean? f_pump
    Boolean? proxy
    Boolean? gomory
    Boolean? mir
    Boolean? cover
    Boolean? clique
    Boolean? cuts
    String? mip_gap
    Boolean? minisat
    String? obj_bnd
    String? options_dot_dot_dot
    File filename
  }
  command <<<
    glpsol \
      ~{options_dot_dot_dot} \
      ~{filename} \
      ~{true="--mps" false="" mps} \
      ~{true="--freemps" false="" free_mps} \
      ~{true="--lp" false="" lp} \
      ~{true="--glp" false="" glp} \
      ~{true="--math" false="" math} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(display) then ("--display " +  '"' + display + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--mincost" false="" min_cost} \
      ~{true="--maxflow" false="" max_flow} \
      ~{true="--cnf" false="" cnf} \
      ~{true="--simplex" false="" simplex} \
      ~{true="--interior" false="" interior} \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{true="--min" false="" min} \
      ~{true="--max" false="" max} \
      ~{true="--scale" false="" scale} \
      ~{true="--noscale" false="" no_scale} \
      ~{if defined(write_solution_filename_printable) then ("--output " +  '"' + write_solution_filename_printable + '"') else ""} \
      ~{if defined(write) then ("--write " +  '"' + write + '"') else ""} \
      ~{if defined(ranges) then ("--ranges " +  '"' + ranges + '"') else ""} \
      ~{if defined(tm_lim) then ("--tmlim " +  '"' + tm_lim + '"') else ""} \
      ~{if defined(mem_lim) then ("--memlim " +  '"' + mem_lim + '"') else ""} \
      ~{true="--check" false="" check} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(w_mps) then ("--wmps " +  '"' + w_mps + '"') else ""} \
      ~{if defined(w_free_mps) then ("--wfreemps " +  '"' + w_free_mps + '"') else ""} \
      ~{if defined(wlp) then ("--wlp " +  '"' + wlp + '"') else ""} \
      ~{if defined(w_glp) then ("--wglp " +  '"' + w_glp + '"') else ""} \
      ~{if defined(w_cnf) then ("--wcnf " +  '"' + w_cnf + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--luf" false="" luf} \
      ~{true="--btf" false="" btf} \
      ~{true="--ft" false="" ft} \
      ~{true="--cbg" false="" cbg} \
      ~{true="--cgr" false="" cgr} \
      ~{true="--primal" false="" primal} \
      ~{true="--dual" false="" dual} \
      ~{true="--std" false="" std} \
      ~{true="--adv" false="" adv} \
      ~{true="--bib" false="" bib} \
      ~{if defined(ini) then ("--ini " +  '"' + ini + '"') else ""} \
      ~{true="--steep" false="" steep} \
      ~{true="--nosteep" false="" no_steep} \
      ~{true="--relax" false="" relax} \
      ~{true="--norelax" false="" no_relax} \
      ~{true="--presol" false="" presol} \
      ~{true="--nopresol" false="" no_presol} \
      ~{true="--exact" false="" exact} \
      ~{true="--xcheck" false="" x_check} \
      ~{true="--nord" false="" nord} \
      ~{true="--qmd" false="" qmd} \
      ~{true="--amd" false="" amd} \
      ~{true="--symamd" false="" sym_amd} \
      ~{true="--nomip" false="" no_mip} \
      ~{true="--first" false="" first} \
      ~{true="--last" false="" last} \
      ~{true="--mostf" false="" most_f} \
      ~{true="--drtom" false="" dr_tom} \
      ~{true="--pcost" false="" p_cost} \
      ~{true="--dfs" false="" dfs} \
      ~{true="--bfs" false="" bfs} \
      ~{true="--bestp" false="" best_p} \
      ~{true="--bestb" false="" best_b} \
      ~{true="--intopt" false="" into_pt} \
      ~{true="--nointopt" false="" no_into_pt} \
      ~{true="--binarize" false="" bin_a_rize} \
      ~{true="--fpump" false="" f_pump} \
      ~{true="--proxy" false="" proxy} \
      ~{true="--gomory" false="" gomory} \
      ~{true="--mir" false="" mir} \
      ~{true="--cover" false="" cover} \
      ~{true="--clique" false="" clique} \
      ~{true="--cuts" false="" cuts} \
      ~{if defined(mip_gap) then ("--mipgap " +  '"' + mip_gap + '"') else ""} \
      ~{true="--minisat" false="" minisat} \
      ~{if defined(obj_bnd) then ("--objbnd " +  '"' + obj_bnd + '"') else ""}
  >>>
  parameter_meta {
    mps: "read LP/MIP problem in fixed MPS format"
    free_mps: "read LP/MIP problem in free MPS format (default)"
    lp: "read LP/MIP problem in CPLEX LP format"
    glp: "read LP/MIP problem in GLPK format "
    math: "read LP/MIP model written in GNU MathProg modeling language"
    model: "read model section and optional data section from filename (same as --math)"
    data: "read data section from filename (for --math only); if model file also has data section, it is ignored"
    display: "send display output to filename (for --math only); by default the output is sent to terminal"
    seed: "initialize pseudo-random number generator used in MathProg model with specified seed (any integer); if seed value is ?, some random seed will be used"
    min_cost: "read min-cost flow problem in DIMACS format"
    max_flow: "read maximum flow problem in DIMACS format"
    cnf: "read CNF-SAT problem in DIMACS format"
    simplex: "use simplex method (default)"
    interior: "use interior point method (LP only)"
    read: "read solution from filename rather to find it with the solver"
    min: "minimization"
    max: "maximization"
    scale: "scale problem (default)"
    no_scale: "do not scale problem"
    write_solution_filename_printable: "write solution to filename in printable format"
    write: "write solution to filename in plain text format"
    ranges: "write sensitivity analysis report to filename in printable format (simplex only)"
    tm_lim: "limit solution time to nnn seconds "
    mem_lim: "limit available memory to nnn megabytes"
    check: "do not solve problem, check input data only"
    name: "change problem name to probname"
    w_mps: "write problem to filename in fixed MPS format"
    w_free_mps: "write problem to filename in free MPS format"
    wlp: "write problem to filename in CPLEX LP format"
    w_glp: "write problem to filename in GLPK format"
    w_cnf: "write problem to filename in DIMACS CNF-SAT format"
    log: "write copy of terminal output to filename"
    luf: "plain LU-factorization (default)"
    btf: "block triangular LU-factorization"
    ft: "Forrest-Tomlin update (requires --luf; default)"
    cbg: "Schur complement + Bartels-Golub update"
    cgr: "Schur complement + Givens rotation update"
    primal: "use primal simplex (default)"
    dual: "use dual simplex"
    std: "use standard initial basis of all slacks"
    adv: "use advanced initial basis (default)"
    bib: "use Bixby's initial basis"
    ini: "use as initial basis previously saved with -w (disables LP presolver)"
    steep: "use steepest edge technique (default)"
    no_steep: "use standard \"textbook\" pricing"
    relax: "use Harris' two-pass ratio test (default)"
    no_relax: "use standard \"textbook\" ratio test"
    presol: "use presolver (default; assumes --scale and --adv)"
    no_presol: "do not use presolver"
    exact: "use simplex method based on exact arithmetic"
    x_check: "check final basis using exact arithmetic"
    nord: "use natural (original) ordering"
    qmd: "use quotient minimum degree ordering"
    amd: "use approximate minimum degree ordering (default)"
    sym_amd: "use approximate minimum degree ordering"
    no_mip: "consider all integer variables as continuous (allows solving MIP as pure LP)"
    first: "branch on first integer variable"
    last: "branch on last integer variable"
    most_f: "branch on most fractional variable "
    dr_tom: "branch using heuristic by Driebeck and Tomlin (default)"
    p_cost: "branch using hybrid pseudocost heuristic (may be useful for hard instances)"
    dfs: "backtrack using depth first search "
    bfs: "backtrack using breadth first search"
    best_p: "backtrack using the best projection heuristic"
    best_b: "backtrack using node with best local bound (default)"
    into_pt: "use MIP presolver (default)"
    no_into_pt: "do not use MIP presolver"
    bin_a_rize: "replace general integer variables by binary ones (assumes --intopt)"
    f_pump: "apply feasibility pump heuristic"
    proxy: "[nnn]     apply proximity search heuristic (nnn is time limit in seconds; default is 60)"
    gomory: "generate Gomory's mixed integer cuts"
    mir: "generate MIR (mixed integer rounding) cuts"
    cover: "generate mixed cover cuts"
    clique: "generate clique cuts"
    cuts: "generate all cuts above"
    mip_gap: "set relative mip gap tolerance to tol"
    minisat: "translate integer feasibility problem to CNF-SAT and solve it with MiniSat solver"
    obj_bnd: "add inequality obj <= bound (minimization) or obj >= bound (maximization) to integer feasibility problem (assumes --minisat)"
    options_dot_dot_dot: ""
    filename: ""
  }
}