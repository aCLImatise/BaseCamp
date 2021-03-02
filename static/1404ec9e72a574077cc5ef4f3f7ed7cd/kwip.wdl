version 1.0

task Kwip {
  input {
    Boolean? threads
    File? kernel
    File? distance
    Boolean? unweighted
    Boolean? weights
    Boolean? calc_weights
    Boolean? verbose
    Boolean? quiet
    String hashes
  }
  command <<<
    kwip \
      ~{hashes} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (kernel) then "--kernel" else ""} \
      ~{if (distance) then "--distance" else ""} \
      ~{if (unweighted) then "--unweighted" else ""} \
      ~{if (weights) then "--weights" else ""} \
      ~{if (calc_weights) then "--calc-weights" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads to utilise. [default N_CPUS]"
    kernel: "Output file for the kernel matrix. [default None]"
    distance: "Output file for the distance matrix. [default stdout]"
    unweighted: "Use the unweighted inner proudct kernel. [default off]"
    weights: "Bin weight vector file (input, or output w/ -C)."
    calc_weights: "Calculate only the bin weight vector, not kernel matrix."
    verbose: "Increase verbosity. May or may not acutally do anything."
    quiet: "Execute silently but for errors."
    hashes: ""
  }
  output {
    File out_stdout = stdout()
    File out_kernel = "${in_kernel}"
    File out_distance = "${in_distance}"
  }
}