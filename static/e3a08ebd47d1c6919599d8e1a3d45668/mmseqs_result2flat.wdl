version 1.0

task MmseqsResult2flat {
  input {
    Boolean? use_fast_a_header
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs result2flat \
      ~{true="--use-fasta-header" false="" use_fast_a_header} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    use_fast_a_header: "false           use the id parsed from the fasta header as the index key instead of using incrementing numeric identifiers"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}