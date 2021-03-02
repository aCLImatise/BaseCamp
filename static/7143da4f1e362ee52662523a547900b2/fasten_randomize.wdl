version 1.0

task FastenRandomize {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
  }
  command <<<
    fasten_randomize \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
  }
  output {
    File out_stdout = stdout()
  }
}