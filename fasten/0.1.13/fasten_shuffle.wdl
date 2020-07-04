version 1.0

task FastenShuffle {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
    Boolean? de_shuffle
    String? one
    String? two
  }
  command <<<
    fasten_shuffle \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--deshuffle" false="" de_shuffle} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
    de_shuffle: "Deshuffle reads from stdin"
    one: "Forward reads. If deshuffling, reads are written to this file."
    two: "Forward reads. If deshuffling, reads are written to this file."
  }
}