version 1.0

task Cnvetti {
  input {
    Boolean? verbose
    Boolean? quiet
    Int? io_threads
    String cmd
    String quick
    String visualize
    String annotate
    String help
  }
  command <<<
    cnvetti \
      ~{cmd} \
      ~{quick} \
      ~{visualize} \
      ~{annotate} \
      ~{help} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(io_threads) then ("--io-threads " +  '"' + io_threads + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Increase verbosity"
    quiet: "Decrease verbosity"
    io_threads: "Number of additional threads to use for (de)compression in I/O. [default: 0]"
    cmd: "Low-level access to the CNVetti primitives."
    quick: "Easy-to-use shortcuts for command and important use cases."
    visualize: "Visualization of coverage information (on-target, off-target, and genome-wide bins)."
    annotate: "Perform annotate called CNV result BCF files"
    help: "Prints this message or the help of the given subcommand(s)"
  }
  output {
    File out_stdout = stdout()
  }
}