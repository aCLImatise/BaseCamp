class: CommandLineTool
id: glpsol.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: mps
  doc: read LP/MIP problem in fixed MPS format
  type: boolean
  inputBinding:
    prefix: --mps
- id: free_mps
  doc: read LP/MIP problem in free MPS format (default)
  type: boolean
  inputBinding:
    prefix: --freemps
- id: lp
  doc: read LP/MIP problem in CPLEX LP format
  type: boolean
  inputBinding:
    prefix: --lp
- id: glp
  doc: 'read LP/MIP problem in GLPK format '
  type: boolean
  inputBinding:
    prefix: --glp
- id: math
  doc: read LP/MIP model written in GNU MathProg modeling language
  type: boolean
  inputBinding:
    prefix: --math
- id: model
  doc: read model section and optional data section from filename (same as --math)
  type: File
  inputBinding:
    prefix: --model
- id: data
  doc: read data section from filename (for --math only); if model file also has data
    section, it is ignored
  type: File
  inputBinding:
    prefix: --data
- id: display
  doc: send display output to filename (for --math only); by default the output is
    sent to terminal
  type: File
  inputBinding:
    prefix: --display
- id: seed
  doc: initialize pseudo-random number generator used in MathProg model with specified
    seed (any integer); if seed value is ?, some random seed will be used
  type: string
  inputBinding:
    prefix: --seed
- id: min_cost
  doc: read min-cost flow problem in DIMACS format
  type: boolean
  inputBinding:
    prefix: --mincost
- id: max_flow
  doc: read maximum flow problem in DIMACS format
  type: boolean
  inputBinding:
    prefix: --maxflow
- id: cnf
  doc: read CNF-SAT problem in DIMACS format
  type: boolean
  inputBinding:
    prefix: --cnf
- id: simplex
  doc: use simplex method (default)
  type: boolean
  inputBinding:
    prefix: --simplex
- id: interior
  doc: use interior point method (LP only)
  type: boolean
  inputBinding:
    prefix: --interior
- id: read
  doc: read solution from filename rather to find it with the solver
  type: File
  inputBinding:
    prefix: --read
- id: min
  doc: minimization
  type: boolean
  inputBinding:
    prefix: --min
- id: max
  doc: maximization
  type: boolean
  inputBinding:
    prefix: --max
- id: scale
  doc: scale problem (default)
  type: boolean
  inputBinding:
    prefix: --scale
- id: no_scale
  doc: do not scale problem
  type: boolean
  inputBinding:
    prefix: --noscale
- id: output
  doc: write solution to filename in printable format
  type: File
  inputBinding:
    prefix: --output
- id: write
  doc: write solution to filename in plain text format
  type: File
  inputBinding:
    prefix: --write
- id: ranges
  doc: write sensitivity analysis report to filename in printable format (simplex
    only)
  type: File
  inputBinding:
    prefix: --ranges
- id: tm_lim
  doc: 'limit solution time to nnn seconds '
  type: string
  inputBinding:
    prefix: --tmlim
- id: mem_lim
  doc: limit available memory to nnn megabytes
  type: string
  inputBinding:
    prefix: --memlim
- id: check
  doc: do not solve problem, check input data only
  type: boolean
  inputBinding:
    prefix: --check
- id: name
  doc: change problem name to probname
  type: string
  inputBinding:
    prefix: --name
- id: w_mps
  doc: write problem to filename in fixed MPS format
  type: File
  inputBinding:
    prefix: --wmps
- id: w_free_mps
  doc: write problem to filename in free MPS format
  type: File
  inputBinding:
    prefix: --wfreemps
- id: wlp
  doc: write problem to filename in CPLEX LP format
  type: File
  inputBinding:
    prefix: --wlp
- id: w_glp
  doc: write problem to filename in GLPK format
  type: File
  inputBinding:
    prefix: --wglp
- id: w_cnf
  doc: write problem to filename in DIMACS CNF-SAT format
  type: File
  inputBinding:
    prefix: --wcnf
- id: log
  doc: write copy of terminal output to filename
  type: File
  inputBinding:
    prefix: --log
- id: luf
  doc: plain LU-factorization (default)
  type: boolean
  inputBinding:
    prefix: --luf
- id: btf
  doc: block triangular LU-factorization
  type: boolean
  inputBinding:
    prefix: --btf
- id: ft
  doc: Forrest-Tomlin update (requires --luf; default)
  type: boolean
  inputBinding:
    prefix: --ft
- id: cbg
  doc: Schur complement + Bartels-Golub update
  type: boolean
  inputBinding:
    prefix: --cbg
- id: cgr
  doc: Schur complement + Givens rotation update
  type: boolean
  inputBinding:
    prefix: --cgr
- id: primal
  doc: use primal simplex (default)
  type: boolean
  inputBinding:
    prefix: --primal
- id: dual
  doc: use dual simplex
  type: boolean
  inputBinding:
    prefix: --dual
- id: std
  doc: use standard initial basis of all slacks
  type: boolean
  inputBinding:
    prefix: --std
- id: adv
  doc: use advanced initial basis (default)
  type: boolean
  inputBinding:
    prefix: --adv
- id: bib
  doc: use Bixby's initial basis
  type: boolean
  inputBinding:
    prefix: --bib
- id: ini
  doc: use as initial basis previously saved with -w (disables LP presolver)
  type: File
  inputBinding:
    prefix: --ini
- id: steep
  doc: use steepest edge technique (default)
  type: boolean
  inputBinding:
    prefix: --steep
- id: no_steep
  doc: use standard "textbook" pricing
  type: boolean
  inputBinding:
    prefix: --nosteep
- id: relax
  doc: use Harris' two-pass ratio test (default)
  type: boolean
  inputBinding:
    prefix: --relax
- id: no_relax
  doc: use standard "textbook" ratio test
  type: boolean
  inputBinding:
    prefix: --norelax
- id: presol
  doc: use presolver (default; assumes --scale and --adv)
  type: boolean
  inputBinding:
    prefix: --presol
- id: no_presol
  doc: do not use presolver
  type: boolean
  inputBinding:
    prefix: --nopresol
- id: exact
  doc: use simplex method based on exact arithmetic
  type: boolean
  inputBinding:
    prefix: --exact
- id: x_check
  doc: check final basis using exact arithmetic
  type: boolean
  inputBinding:
    prefix: --xcheck
- id: nord
  doc: use natural (original) ordering
  type: boolean
  inputBinding:
    prefix: --nord
- id: qmd
  doc: use quotient minimum degree ordering
  type: boolean
  inputBinding:
    prefix: --qmd
- id: amd
  doc: use approximate minimum degree ordering (default)
  type: boolean
  inputBinding:
    prefix: --amd
- id: sym_amd
  doc: use approximate minimum degree ordering
  type: boolean
  inputBinding:
    prefix: --symamd
- id: no_mip
  doc: consider all integer variables as continuous (allows solving MIP as pure LP)
  type: boolean
  inputBinding:
    prefix: --nomip
- id: first
  doc: branch on first integer variable
  type: boolean
  inputBinding:
    prefix: --first
- id: last
  doc: branch on last integer variable
  type: boolean
  inputBinding:
    prefix: --last
- id: most_f
  doc: 'branch on most fractional variable '
  type: boolean
  inputBinding:
    prefix: --mostf
- id: dr_tom
  doc: branch using heuristic by Driebeck and Tomlin (default)
  type: boolean
  inputBinding:
    prefix: --drtom
- id: p_cost
  doc: branch using hybrid pseudocost heuristic (may be useful for hard instances)
  type: boolean
  inputBinding:
    prefix: --pcost
- id: dfs
  doc: 'backtrack using depth first search '
  type: boolean
  inputBinding:
    prefix: --dfs
- id: bfs
  doc: backtrack using breadth first search
  type: boolean
  inputBinding:
    prefix: --bfs
- id: best_p
  doc: backtrack using the best projection heuristic
  type: boolean
  inputBinding:
    prefix: --bestp
- id: best_b
  doc: backtrack using node with best local bound (default)
  type: boolean
  inputBinding:
    prefix: --bestb
- id: into_pt
  doc: use MIP presolver (default)
  type: boolean
  inputBinding:
    prefix: --intopt
- id: no_into_pt
  doc: do not use MIP presolver
  type: boolean
  inputBinding:
    prefix: --nointopt
- id: bin_a_rize
  doc: replace general integer variables by binary ones (assumes --intopt)
  type: boolean
  inputBinding:
    prefix: --binarize
- id: f_pump
  doc: apply feasibility pump heuristic
  type: boolean
  inputBinding:
    prefix: --fpump
- id: proxy
  doc: '[nnn]     apply proximity search heuristic (nnn is time limit in seconds;
    default is 60)'
  type: boolean
  inputBinding:
    prefix: --proxy
- id: gomory
  doc: generate Gomory's mixed integer cuts
  type: boolean
  inputBinding:
    prefix: --gomory
- id: mir
  doc: generate MIR (mixed integer rounding) cuts
  type: boolean
  inputBinding:
    prefix: --mir
- id: cover
  doc: generate mixed cover cuts
  type: boolean
  inputBinding:
    prefix: --cover
- id: clique
  doc: generate clique cuts
  type: boolean
  inputBinding:
    prefix: --clique
- id: cuts
  doc: generate all cuts above
  type: boolean
  inputBinding:
    prefix: --cuts
- id: mip_gap
  doc: set relative mip gap tolerance to tol
  type: string
  inputBinding:
    prefix: --mipgap
- id: minisat
  doc: translate integer feasibility problem to CNF-SAT and solve it with MiniSat
    solver
  type: boolean
  inputBinding:
    prefix: --minisat
- id: obj_bnd
  doc: add inequality obj <= bound (minimization) or obj >= bound (maximization) to
    integer feasibility problem (assumes --minisat)
  type: string
  inputBinding:
    prefix: --objbnd
outputs: []
cwlVersion: v1.1
baseCommand:
- glpsol
