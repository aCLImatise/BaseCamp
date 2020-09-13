version 1.0

task FastenReplace {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    String? find
    String? replace
    String? which
  }
  command <<<
    fasten_replace \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(find) then ("--find " +  '"' + find + '"') else ""} \
      ~{if defined(replace) then ("--replace " +  '"' + replace + '"') else ""} \
      ~{if defined(which) then ("--which " +  '"' + which + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    find: "Regular expression (default: '.')"
    replace: "String to replace each match"
    which: "Which field to match on? ID, SEQ, QUAL. Default: SEQ"
  }
  output {
    File out_stdout = stdout()
  }
}