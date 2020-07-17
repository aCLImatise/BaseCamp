version 1.0

task FastenRegex {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    String? regex
    String? which
  }
  command <<<
    fasten_regex \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if defined(which) then ("--which " +  '"' + which + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    regex: "Regular expression (default: '.')"
    which: "Which field to match on? ID, SEQ, QUAL. Default: SEQ"
  }
}