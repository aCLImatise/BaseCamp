version 1.0

task ProteinorthoClustering {
  input {
    Boolean? verbose
    Float? conn
    Float? purity
    Int? max_nodes
    Float? min_species
    File? rm_graph
    Int? seed
    Float? epsilon
    Boolean? lapack
    Int? ram
    Boolean? weighted
    Int? cpus
    Int? min_openmp
    Boolean? k_mere
    Float? pow_lapd
    Boolean? test
    Int? max_runs_convergence
    String graph_files_dot_dot_dot
  }
  command <<<
    proteinortho_clustering \
      ~{graph_files_dot_dot_dot} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(conn) then ("-conn " +  '"' + conn + '"') else ""} \
      ~{if defined(purity) then ("-purity " +  '"' + purity + '"') else ""} \
      ~{if defined(max_nodes) then ("-maxnodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(min_species) then ("-minspecies " +  '"' + min_species + '"') else ""} \
      ~{if defined(rm_graph) then ("-rmgraph " +  '"' + rm_graph + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if defined(epsilon) then ("-epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if defined(lapack) then ("-lapack " +  '"' + lapack + '"') else ""} \
      ~{if defined(ram) then ("-ram " +  '"' + ram + '"') else ""} \
      ~{if defined(weighted) then ("-weighted " +  '"' + weighted + '"') else ""} \
      ~{if defined(cpus) then ("-cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(min_openmp) then ("-minOpenmp " +  '"' + min_openmp + '"') else ""} \
      ~{if defined(k_mere) then ("-kmere " +  '"' + k_mere + '"') else ""} \
      ~{if defined(pow_lapd) then ("-powLapD " +  '"' + pow_lapd + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if defined(max_runs_convergence) then ("-maxRunsConvergence " +  '"' + max_runs_convergence + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "report progress"
    conn: "threshold for connectivity [0.1]"
    purity: "threshold for purity [1e-07]"
    max_nodes: "max. number of nodes for alg. clustering [16777216]"
    min_species: "threshold for species number [1]"
    rm_graph: "output file for graph"
    seed: "seed value for srand [current unix time]"
    epsilon: "convergence threshold [1e-08]"
    lapack: "use the lapack package for the computation of the algebraic connectivity [1]"
    ram: "maximal used ram threshold for LAPACK and the input graph in MB [16384]"
    weighted: "the spectral partition is calculated using the bitscores [1]"
    cpus: "the number of threads used for openMP [1]"
    min_openmp: "the minimum number of nodes for parallel power iteration [256]"
    k_mere: "use the kmere-split heuristic [1]"
    pow_lapd: "the minimum graph density for the power iteration method, lapacks (d|s)syevr is used otherwise [linear:d<10^(-5.2)*n]"
    test: "various test-functions are called first [not set]"
    max_runs_convergence: "the maximum number of runs for the calculation of the algebraic connectivity [8192]"
    graph_files_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_rm_graph = "${in_rm_graph}"
  }
}