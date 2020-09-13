version 1.0

task FastenTrim {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Int? first_base
    Int? last_base
  }
  command <<<
    fasten_trim \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(first_base) then ("--first-base " +  '"' + first_base + '"') else ""} \
      ~{if defined(last_base) then ("--last-base " +  '"' + last_base + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    first_base: "The first base to keep (default: 0)"
    last_base: "The last base to keep. If negative, counts from the\\nright. (default: 0)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}