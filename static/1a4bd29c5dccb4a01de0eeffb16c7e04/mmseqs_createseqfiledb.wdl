version 1.0

task MmseqsCreateseqfiledb {
  input {
    Boolean? min_sequences
    Boolean? max_sequences
    Boolean? hh_format
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createseqfiledb \
      ~{true="--min-sequences" false="" min_sequences} \
      ~{true="--max-sequences" false="" max_sequences} \
      ~{true="--hh-format" false="" hh_format} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    min_sequences: "1               minimum number of sequences a cluster may contain           "
    max_sequences: "2147483647      maximum number of sequences a cluster may contain           "
    hh_format: "false           format entries to use with hhsuite (for singleton clusters) "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}