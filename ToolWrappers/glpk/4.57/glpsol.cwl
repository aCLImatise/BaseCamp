class: CommandLineTool
id: glpsol.cwl
inputs:
- id: in_mps
  doc: read LP/MIP problem in fixed MPS format
  type: boolean?
  inputBinding:
    prefix: --mps
- id: in_free_mps
  doc: read LP/MIP problem in free MPS format (default)
  type: boolean?
  inputBinding:
    prefix: --freemps
- id: in_lp
  doc: read LP/MIP problem in CPLEX LP format
  type: boolean?
  inputBinding:
    prefix: --lp
- id: in_glp
  doc: read LP/MIP problem in GLPK format
  type: boolean?
  inputBinding:
    prefix: --glp
- id: in_math
  doc: read LP/MIP model written in GNU MathProg modeling
  type: boolean?
  inputBinding:
    prefix: --math
- id: in_data
  doc: "read data section from filename (for --math only);\nif model file also has\
    \ data section, it is ignored"
  type: File?
  inputBinding:
    prefix: --data
- id: in_display
  doc: "send display output to filename (for --math only);\nby default the output\
    \ is sent to terminal"
  type: File?
  inputBinding:
    prefix: --display
- id: in_seed
  doc: "initialize pseudo-random number generator used in\nMathProg model with specified\
    \ seed (any integer);\nif seed value is ?, some random seed will be used"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_min_cost
  doc: read min-cost flow problem in DIMACS format
  type: boolean?
  inputBinding:
    prefix: --mincost
- id: in_max_flow
  doc: read maximum flow problem in DIMACS format
  type: boolean?
  inputBinding:
    prefix: --maxflow
- id: in_cnf
  doc: read CNF-SAT problem in DIMACS format
  type: boolean?
  inputBinding:
    prefix: --cnf
- id: in_simplex
  doc: use simplex method (default)
  type: boolean?
  inputBinding:
    prefix: --simplex
- id: in_interior
  doc: use interior point method (LP only)
  type: boolean?
  inputBinding:
    prefix: --interior
- id: in_read
  doc: "read solution from filename rather to find it with\nthe solver"
  type: File?
  inputBinding:
    prefix: --read
- id: in_min
  doc: minimization
  type: boolean?
  inputBinding:
    prefix: --min
- id: in_max
  doc: maximization
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_scale
  doc: scale problem (default)
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_no_scale
  doc: do not scale problem
  type: boolean?
  inputBinding:
    prefix: --noscale
- id: in_output
  doc: write solution to filename in printable format
  type: File?
  inputBinding:
    prefix: --output
- id: in_write
  doc: write solution to filename in plain text format
  type: File?
  inputBinding:
    prefix: --write
- id: in_ranges
  doc: "write sensitivity analysis report to filename in\nprintable format (simplex\
    \ only)"
  type: File?
  inputBinding:
    prefix: --ranges
- id: in_tm_lim
  doc: limit solution time to nnn seconds
  type: string?
  inputBinding:
    prefix: --tmlim
- id: in_mem_lim
  doc: limit available memory to nnn megabytes
  type: string?
  inputBinding:
    prefix: --memlim
- id: in_check
  doc: do not solve problem, check input data only
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_name
  doc: change problem name to probname
  type: string?
  inputBinding:
    prefix: --name
- id: in_w_mps
  doc: write problem to filename in fixed MPS format
  type: File?
  inputBinding:
    prefix: --wmps
- id: in_w_free_mps
  doc: write problem to filename in free MPS format
  type: File?
  inputBinding:
    prefix: --wfreemps
- id: in_wlp
  doc: write problem to filename in CPLEX LP format
  type: File?
  inputBinding:
    prefix: --wlp
- id: in_w_glp
  doc: write problem to filename in GLPK format
  type: File?
  inputBinding:
    prefix: --wglp
- id: in_w_cnf
  doc: write problem to filename in DIMACS CNF-SAT format
  type: File?
  inputBinding:
    prefix: --wcnf
- id: in_log
  doc: write copy of terminal output to filename
  type: File?
  inputBinding:
    prefix: --log
- id: in_luf
  doc: plain LU-factorization (default)
  type: boolean?
  inputBinding:
    prefix: --luf
- id: in_btf
  doc: block triangular LU-factorization
  type: boolean?
  inputBinding:
    prefix: --btf
- id: in_ft
  doc: Forrest-Tomlin update (requires --luf; default)
  type: boolean?
  inputBinding:
    prefix: --ft
- id: in_cbg
  doc: Schur complement + Bartels-Golub update
  type: boolean?
  inputBinding:
    prefix: --cbg
- id: in_cgr
  doc: Schur complement + Givens rotation update
  type: boolean?
  inputBinding:
    prefix: --cgr
- id: in_primal
  doc: use primal simplex (default)
  type: boolean?
  inputBinding:
    prefix: --primal
- id: in_dual
  doc: use dual simplex
  type: boolean?
  inputBinding:
    prefix: --dual
- id: in_std
  doc: use standard initial basis of all slacks
  type: boolean?
  inputBinding:
    prefix: --std
- id: in_adv
  doc: use advanced initial basis (default)
  type: boolean?
  inputBinding:
    prefix: --adv
- id: in_bib
  doc: use Bixby's initial basis
  type: boolean?
  inputBinding:
    prefix: --bib
- id: in_ini
  doc: "use as initial basis previously saved with -w\n(disables LP presolver)"
  type: File?
  inputBinding:
    prefix: --ini
- id: in_steep
  doc: use steepest edge technique (default)
  type: boolean?
  inputBinding:
    prefix: --steep
- id: in_no_steep
  doc: use standard "textbook" pricing
  type: boolean?
  inputBinding:
    prefix: --nosteep
- id: in_relax
  doc: use Harris' two-pass ratio test (default)
  type: boolean?
  inputBinding:
    prefix: --relax
- id: in_no_relax
  doc: use standard "textbook" ratio test
  type: boolean?
  inputBinding:
    prefix: --norelax
- id: in_presol
  doc: use presolver (default; assumes --scale and --adv)
  type: boolean?
  inputBinding:
    prefix: --presol
- id: in_no_presol
  doc: do not use presolver
  type: boolean?
  inputBinding:
    prefix: --nopresol
- id: in_exact
  doc: use simplex method based on exact arithmetic
  type: boolean?
  inputBinding:
    prefix: --exact
- id: in_x_check
  doc: check final basis using exact arithmetic
  type: boolean?
  inputBinding:
    prefix: --xcheck
- id: in_nord
  doc: use natural (original) ordering
  type: boolean?
  inputBinding:
    prefix: --nord
- id: in_qmd
  doc: use quotient minimum degree ordering
  type: boolean?
  inputBinding:
    prefix: --qmd
- id: in_amd
  doc: use approximate minimum degree ordering (default)
  type: boolean?
  inputBinding:
    prefix: --amd
- id: in_sym_amd
  doc: use approximate minimum degree ordering
  type: boolean?
  inputBinding:
    prefix: --symamd
- id: in_no_mip
  doc: "consider all integer variables as continuous\n(allows solving MIP as pure\
    \ LP)"
  type: boolean?
  inputBinding:
    prefix: --nomip
- id: in_first
  doc: branch on first integer variable
  type: boolean?
  inputBinding:
    prefix: --first
- id: in_last
  doc: branch on last integer variable
  type: boolean?
  inputBinding:
    prefix: --last
- id: in_most_f
  doc: branch on most fractional variable
  type: boolean?
  inputBinding:
    prefix: --mostf
- id: in_dr_tom
  doc: "branch using heuristic by Driebeck and Tomlin\n(default)"
  type: boolean?
  inputBinding:
    prefix: --drtom
- id: in_p_cost
  doc: "branch using hybrid pseudocost heuristic (may be\nuseful for hard instances)"
  type: boolean?
  inputBinding:
    prefix: --pcost
- id: in_dfs
  doc: backtrack using depth first search
  type: boolean?
  inputBinding:
    prefix: --dfs
- id: in_bfs
  doc: backtrack using breadth first search
  type: boolean?
  inputBinding:
    prefix: --bfs
- id: in_best_p
  doc: backtrack using the best projection heuristic
  type: boolean?
  inputBinding:
    prefix: --bestp
- id: in_best_b
  doc: "backtrack using node with best local bound\n(default)"
  type: boolean?
  inputBinding:
    prefix: --bestb
- id: in_into_pt
  doc: use MIP presolver (default)
  type: boolean?
  inputBinding:
    prefix: --intopt
- id: in_no_into_pt
  doc: do not use MIP presolver
  type: boolean?
  inputBinding:
    prefix: --nointopt
- id: in_bin_a_rize
  doc: "replace general integer variables by binary ones\n(assumes --intopt)"
  type: boolean?
  inputBinding:
    prefix: --binarize
- id: in_f_pump
  doc: apply feasibility pump heuristic
  type: boolean?
  inputBinding:
    prefix: --fpump
- id: in_proxy
  doc: "[nnn]     apply proximity search heuristic (nnn is time limit\nin seconds;\
    \ default is 60)"
  type: boolean?
  inputBinding:
    prefix: --proxy
- id: in_gomory
  doc: generate Gomory's mixed integer cuts
  type: boolean?
  inputBinding:
    prefix: --gomory
- id: in_mir
  doc: generate MIR (mixed integer rounding) cuts
  type: boolean?
  inputBinding:
    prefix: --mir
- id: in_cover
  doc: generate mixed cover cuts
  type: boolean?
  inputBinding:
    prefix: --cover
- id: in_clique
  doc: generate clique cuts
  type: boolean?
  inputBinding:
    prefix: --clique
- id: in_cuts
  doc: generate all cuts above
  type: boolean?
  inputBinding:
    prefix: --cuts
- id: in_mip_gap
  doc: set relative mip gap tolerance to tol
  type: string?
  inputBinding:
    prefix: --mipgap
- id: in_minisat
  doc: "translate integer feasibility problem to CNF-SAT\nand solve it with MiniSat\
    \ solver"
  type: boolean?
  inputBinding:
    prefix: --minisat
- id: in_obj_bnd
  doc: "add inequality obj <= bound (minimization) or\nobj >= bound (maximization)\
    \ to integer feasibility\nproblem (assumes --minisat)"
  type: long?
  inputBinding:
    prefix: --objbnd
- id: in_language
  doc: -m filename, --model filename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_display
  doc: "send display output to filename (for --math only);\nby default the output\
    \ is sent to terminal"
  type: File?
  outputBinding:
    glob: $(inputs.in_display)
- id: out_log
  doc: write copy of terminal output to filename
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
hints: []
cwlVersion: v1.1
baseCommand:
- glpsol
