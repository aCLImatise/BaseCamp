version 1.0

task FastenShuffle {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Boolean? de_shuffle
    Int? one
    Int? two
  }
  command <<<
    fasten_shuffle \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (de_shuffle) then "--deshuffle" else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    de_shuffle: "Deshuffle reads from stdin"
    one: "Forward reads. If deshuffling, reads are written to\\nthis file."
    two: "Forward reads. If deshuffling, reads are written to\\nthis file.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}