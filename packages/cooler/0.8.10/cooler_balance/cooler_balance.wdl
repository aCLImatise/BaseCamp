version 1.0

task CoolerBalance {
  input {
    Int? nproc
    Int? chunksize
    Int? mad_max
    Int? min_nnz
    Int? min_count
    File? blacklist
    Int? ignore_diags
    Int? ignore_dist
    Float? to_l
    Int? max_iters
    Boolean? cis_only
    Boolean? trans_only
    String? name
    Boolean? force
    Boolean? check
    Boolean? convergence_policy
    String exists_dot
  }
  command <<<
    cooler balance \
      ~{exists_dot} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(mad_max) then ("--mad-max " +  '"' + mad_max + '"') else ""} \
      ~{if defined(min_nnz) then ("--min-nnz " +  '"' + min_nnz + '"') else ""} \
      ~{if defined(min_count) then ("--min-count " +  '"' + min_count + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(ignore_diags) then ("--ignore-diags " +  '"' + ignore_diags + '"') else ""} \
      ~{if defined(ignore_dist) then ("--ignore-dist " +  '"' + ignore_dist + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(max_iters) then ("--max-iters " +  '"' + max_iters + '"') else ""} \
      ~{if (cis_only) then "--cis-only" else ""} \
      ~{if (trans_only) then "--trans-only" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (convergence_policy) then "--convergence-policy" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0"
  }
  parameter_meta {
    nproc: "Number of processes to split the work"
    chunksize: "Control the number of pixels handled by each\\nworker process at a time.  [default:\\n10000000]"
    mad_max: "Ignore bins from the contact matrix using\\nthe 'MAD-max' filter: bins whose log\\nmarginal sum is less than ``mad-max`` median\\nabsolute deviations below the median log\\nmarginal sum of all the bins in the same\\nchromosome.  [default: 5]"
    min_nnz: "Ignore bins from the contact matrix whose\\nmarginal number of nonzeros is less than\\nthis number.  [default: 10]"
    min_count: "Ignore bins from the contact matrix whose\\nmarginal count is less than this number.\\n[default: 0]"
    blacklist: "Path to a 3-column BED file containing\\ngenomic regions to mask out during the\\nbalancing procedure, e.g. sequence gaps or\\nregions of poor mappability."
    ignore_diags: "Number of diagonals of the contact matrix to\\nignore, including the main diagonal.\\nExamples: 0 ignores nothing, 1 ignores the\\nmain diagonal, 2 ignores diagonals (-1, 0,\\n1), etc.  [default: 2]"
    ignore_dist: "Distance in bp to ignore."
    to_l: "Threshold value of variance of the marginals\\nfor the algorithm to converge.  [default:\\n1e-05]"
    max_iters: "Maximum number of iterations to perform if\\nconvergence is not achieved.  [default: 200]"
    cis_only: "Calculate weights against intra-chromosomal\\ndata only instead of genome-wide."
    trans_only: "Calculate weights against inter-chromosomal\\ndata only instead of genome-wide."
    name: "Name of column to write to.  [default:\\nweight]"
    force: "Overwrite the target dataset, 'weight', if\\nit already exists."
    check: "Check whether a data column 'weight' already"
    convergence_policy: "[store_final|store_nan|discard|error]\\nWhat to do with weights when balancing\\ndoesn't converge in max_iters.\\n'store_final': Store the final result,\\nregardless of whether the iterations\\nconverge to the specified tolerance;\\n'store_nan': Store a vector of NaN values to\\nindicate that the matrix failed to converge;\\n'discard': Store nothing and exit\\ngracefully; 'error': Abort with non-zero\\nexit status.  [default: store_final]"
    exists_dot: "--stdout                        Print weight column to stdout instead of"
  }
  output {
    File out_stdout = stdout()
    File out_blacklist = "${in_blacklist}"
  }
}