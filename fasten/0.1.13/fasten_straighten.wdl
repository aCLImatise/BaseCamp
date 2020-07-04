version 1.0

task FastenStraighten {
  input {
    Int? num_cpus
    Boolean? paired_end
    Boolean? verbose
  }
  command <<<
    fasten_straighten \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""} \
      ~{true="--paired-end" false="" paired_end} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    num_cpus: "Number of CPUs (default: 1)"
    paired_end: "The input reads are interleaved paired-end"
    verbose: "Print more status messages"
  }
}