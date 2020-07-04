version 1.0

task MmseqsExtractalignedregion {
  input {
    Boolean? extract_mode
    Boolean? no_preload
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs extractalignedregion \
      ~{true="--extract-mode" false="" extract_mode} \
      ~{true="--no-preload" false="" no_preload} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    extract_mode: "2               Query 1, Target 2                                           "
    no_preload: "false           Do not preload database                                     "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}