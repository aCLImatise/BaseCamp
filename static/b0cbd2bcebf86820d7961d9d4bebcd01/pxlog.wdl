version 1.0

task Pxlog {
  input {
    File? par_mf
    File? tree_f
    File? out_f
    Int? burnin
    Int? thin
    Int? rand
    Boolean? info
    Boolean? columns
    Int? delete
    Int? keep
    Int? seed
    Boolean? verbose
    Boolean? citation
  }
  command <<<
    pxlog \
      ~{if defined(par_mf) then ("--parmf " +  '"' + par_mf + '"') else ""} \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(thin) then ("--thin " +  '"' + thin + '"') else ""} \
      ~{if defined(rand) then ("--rand " +  '"' + rand + '"') else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (columns) then "--columns" else ""} \
      ~{if defined(delete) then ("--delete " +  '"' + delete + '"') else ""} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    par_mf: "input parameter log file(s)"
    tree_f: "input tree log file(s)"
    out_f: "output file, STOUT otherwise"
    burnin: "number of samples to exclude at the beginning of a file"
    thin: "interval of resampling"
    rand: "number of random samples (without replacement) not yet implemented!"
    info: "calculate log file attributes and exit"
    columns: "print out column names (parameter logs only)"
    delete: "delete columns by 1-index sep by commas (NO SPACES!) (parameter logs only)"
    keep: "keep only columns by 1-index sep by commas (NO SPACES!) (parameter logs only)"
    seed: "random number seed, clock otherwise"
    verbose: "make the output more verbose"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}