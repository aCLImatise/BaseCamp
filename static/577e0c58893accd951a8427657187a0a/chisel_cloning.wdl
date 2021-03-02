version 1.0

task ChiselCloning {
  input {
    Directory? run_dir
    Int? max_diff
    Int? minsize
    Float? refinement
    String? seed
    String input_file_combined
    String cell
  }
  command <<<
    chisel_cloning \
      ~{input_file_combined} \
      ~{cell} \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(max_diff) then ("--maxdiff " +  '"' + max_diff + '"') else ""} \
      ~{if defined(minsize) then ("--minsize " +  '"' + minsize + '"') else ""} \
      ~{if defined(refinement) then ("--refinement " +  '"' + refinement + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chisel:0.0.5--py_0"
  }
  parameter_meta {
    run_dir: "Running directory (default: current directory)"
    max_diff: "Maximum haplotype-specific distance between the genome\\nof cells in the same clone (default: 0.06, when -1 is\\nchosen the maximum cluster method of SciPy is used)"
    minsize: "Minimum number of cells in a subpopulation to define a\\nclone (default: 14)"
    refinement: "Maximum difference to assign noisy cells to the\\nclosest clone (default: 0.0, note that 1.0 can be used\\nto force the assigment of all cells)"
    seed: "Random seed for replication (default: None)"
    input_file_combined: "Input file with combined RDR and BAF per bin and per"
    cell: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}