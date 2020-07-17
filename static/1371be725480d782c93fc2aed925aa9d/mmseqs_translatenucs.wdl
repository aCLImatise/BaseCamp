version 1.0

task MmseqsTranslatenucs {
  input {
    Boolean? add_orf_stop
    Boolean? verbosity_level_nothing
    Boolean? threads
  }
  command <<<
    mmseqs translatenucs \
      ~{true="--add-orf-stop" false="" add_orf_stop} \
      ~{true="-v" false="" verbosity_level_nothing} \
      ~{true="--threads" false="" threads}
  >>>
  parameter_meta {
    add_orf_stop: "false           add * at complete start and end                             "
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
    threads: "8               number of cores used for the computation (uses all cores by default)"
  }
}