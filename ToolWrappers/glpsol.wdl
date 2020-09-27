version 1.0

task Glpsol {
  input {
    Boolean? mps
    Boolean? free_mps
    Boolean? lp
    Boolean? glp
    Boolean? math
    File? data
    File? display
    Int? seed
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
    Int? obj_bnd
    String language
  }
  command <<<
    glpsol \
      ~{language} \
      ~{if (mps) then "--mps" else ""} \
      ~{if (free_mps) then "--freemps" else ""} \
      ~{if (lp) then "--lp" else ""} \
      ~{if (glp) then "--glp" else ""} \
      ~{if (math) then "--math" else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(display) then ("--display " +  '"' + display + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (min_cost) then "--mincost" else ""} \
      ~{if (max_flow) then "--maxflow" else ""} \
      ~{if (cnf) then "--cnf" else ""} \
      ~{if (simplex) then "--simplex" else ""} \
      ~{if (interior) then "--interior" else ""} \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if (min) then "--min" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if defined(write_solution_filename_printable) then ("--output " +  '"' + write_solution_filename_printable + '"') else ""} \
      ~{if defined(write) then ("--write " +  '"' + write + '"') else ""} \
      ~{if defined(ranges) then ("--ranges " +  '"' + ranges + '"') else ""} \
      ~{if defined(tm_lim) then ("--tmlim " +  '"' + tm_lim + '"') else ""} \
      ~{if defined(mem_lim) then ("--memlim " +  '"' + mem_lim + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(w_mps) then ("--wmps " +  '"' + w_mps + '"') else ""} \
      ~{if defined(w_free_mps) then ("--wfreemps " +  '"' + w_free_mps + '"') else ""} \
      ~{if defined(wlp) then ("--wlp " +  '"' + wlp + '"') else ""} \
      ~{if defined(w_glp) then ("--wglp " +  '"' + w_glp + '"') else ""} \
      ~{if defined(w_cnf) then ("--wcnf " +  '"' + w_cnf + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (luf) then "--luf" else ""} \
      ~{if (btf) then "--btf" else ""} \
      ~{if (ft) then "--ft" else ""} \
      ~{if (cbg) then "--cbg" else ""} \
      ~{if (cgr) then "--cgr" else ""} \
      ~{if (primal) then "--primal" else ""} \
      ~{if (dual) then "--dual" else ""} \
      ~{if (std) then "--std" else ""} \
      ~{if (adv) then "--adv" else ""} \
      ~{if (bib) then "--bib" else ""} \
      ~{if defined(ini) then ("--ini " +  '"' + ini + '"') else ""} \
      ~{if (steep) then "--steep" else ""} \
      ~{if (no_steep) then "--nosteep" else ""} \
      ~{if (relax) then "--relax" else ""} \
      ~{if (no_relax) then "--norelax" else ""} \
      ~{if (presol) then "--presol" else ""} \
      ~{if (no_presol) then "--nopresol" else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if (x_check) then "--xcheck" else ""} \
      ~{if (nord) then "--nord" else ""} \
      ~{if (qmd) then "--qmd" else ""} \
      ~{if (amd) then "--amd" else ""} \
      ~{if (sym_amd) then "--symamd" else ""} \
      ~{if (no_mip) then "--nomip" else ""} \
      ~{if (first) then "--first" else ""} \
      ~{if (last) then "--last" else ""} \
      ~{if (most_f) then "--mostf" else ""} \
      ~{if (dr_tom) then "--drtom" else ""} \
      ~{if (p_cost) then "--pcost" else ""} \
      ~{if (dfs) then "--dfs" else ""} \
      ~{if (bfs) then "--bfs" else ""} \
      ~{if (best_p) then "--bestp" else ""} \
      ~{if (best_b) then "--bestb" else ""} \
      ~{if (into_pt) then "--intopt" else ""} \
      ~{if (no_into_pt) then "--nointopt" else ""} \
      ~{if (bin_a_rize) then "--binarize" else ""} \
      ~{if (f_pump) then "--fpump" else ""} \
      ~{if (proxy) then "--proxy" else ""} \
      ~{if (gomory) then "--gomory" else ""} \
      ~{if (mir) then "--mir" else ""} \
      ~{if (cover) then "--cover" else ""} \
      ~{if (clique) then "--clique" else ""} \
      ~{if (cuts) then "--cuts" else ""} \
      ~{if defined(mip_gap) then ("--mipgap " +  '"' + mip_gap + '"') else ""} \
      ~{if (minisat) then "--minisat" else ""} \
      ~{if defined(obj_bnd) then ("--objbnd " +  '"' + obj_bnd + '"') else ""}
  >>>
  parameter_meta {
    mps: "read LP/MIP problem in fixed MPS format"
    free_mps: "read LP/MIP problem in free MPS format (default)"
    lp: "read LP/MIP problem in CPLEX LP format"
    glp: "read LP/MIP problem in GLPK format"
    math: "read LP/MIP model written in GNU MathProg modeling"
    data: "read data section from filename (for --math only);\\nif model file also has data section, it is ignored"
    display: "send display output to filename (for --math only);\\nby default the output is sent to terminal"
    seed: "initialize pseudo-random number generator used in\\nMathProg model with specified seed (any integer);\\nif seed value is ?, some random seed will be used"
    min_cost: "read min-cost flow problem in DIMACS format"
    max_flow: "read maximum flow problem in DIMACS format"
    cnf: "read CNF-SAT problem in DIMACS format"
    simplex: "use simplex method (default)"
    interior: "use interior point method (LP only)"
    read: "read solution from filename rather to find it with\\nthe solver"
    min: "minimization"
    max: "maximization"
    scale: "scale problem (default)"
    no_scale: "do not scale problem"
    write_solution_filename_printable: "write solution to filename in printable format"
    write: "write solution to filename in plain text format"
    ranges: "write sensitivity analysis report to filename in\\nprintable format (simplex only)"
    tm_lim: "limit solution time to nnn seconds"
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
    ini: "use as initial basis previously saved with -w\\n(disables LP presolver)"
    steep: "use steepest edge technique (default)"
    no_steep: "use standard \\\"textbook\\\" pricing"
    relax: "use Harris' two-pass ratio test (default)"
    no_relax: "use standard \\\"textbook\\\" ratio test"
    presol: "use presolver (default; assumes --scale and --adv)"
    no_presol: "do not use presolver"
    exact: "use simplex method based on exact arithmetic"
    x_check: "check final basis using exact arithmetic"
    nord: "use natural (original) ordering"
    qmd: "use quotient minimum degree ordering"
    amd: "use approximate minimum degree ordering (default)"
    sym_amd: "use approximate minimum degree ordering"
    no_mip: "consider all integer variables as continuous\\n(allows solving MIP as pure LP)"
    first: "branch on first integer variable"
    last: "branch on last integer variable"
    most_f: "branch on most fractional variable"
    dr_tom: "branch using heuristic by Driebeck and Tomlin\\n(default)"
    p_cost: "branch using hybrid pseudocost heuristic (may be\\nuseful for hard instances)"
    dfs: "backtrack using depth first search"
    bfs: "backtrack using breadth first search"
    best_p: "backtrack using the best projection heuristic"
    best_b: "backtrack using node with best local bound\\n(default)"
    into_pt: "use MIP presolver (default)"
    no_into_pt: "do not use MIP presolver"
    bin_a_rize: "replace general integer variables by binary ones\\n(assumes --intopt)"
    f_pump: "apply feasibility pump heuristic"
    proxy: "[nnn]     apply proximity search heuristic (nnn is time limit\\nin seconds; default is 60)"
    gomory: "generate Gomory's mixed integer cuts"
    mir: "generate MIR (mixed integer rounding) cuts"
    cover: "generate mixed cover cuts"
    clique: "generate clique cuts"
    cuts: "generate all cuts above"
    mip_gap: "set relative mip gap tolerance to tol"
    minisat: "translate integer feasibility problem to CNF-SAT\\nand solve it with MiniSat solver"
    obj_bnd: "add inequality obj <= bound (minimization) or\\nobj >= bound (maximization) to integer feasibility\\nproblem (assumes --minisat)"
    language: "-m filename, --model filename"
  }
  output {
    File out_stdout = stdout()
    File out_display = "${in_display}"
    File out_log = "${in_log}"
  }
}