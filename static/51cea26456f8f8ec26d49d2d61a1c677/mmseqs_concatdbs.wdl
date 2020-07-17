version 1.0

task MmseqsConcatdbs {
  input {
    Boolean? preserve_keys
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs concatdbs \
      ~{true="--preserve-keys" false="" preserve_keys} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    preserve_keys: "false           the keys of the two DB should be distinct, and they will be preserved in the concatenation."
    threads: "1               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}