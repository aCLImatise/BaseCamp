version 1.0

task MmseqsConvertalis {
  input {
    String? format_mode
    Boolean? no_preload
    Boolean? db_output
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs convertalis \
      ~{if defined(format_mode) then ("--format-mode " +  '"' + format_mode + '"') else ""} \
      ~{true="--no-preload" false="" no_preload} \
      ~{true="--db-output" false="" db_output} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    format_mode: "output format 0: BLAST-TAB, 1: PAIRWISE, 2: BLAST-TAB + query/db length"
    no_preload: "false           Do not preload database                                     "
    db_output: "false           Output a result db instead of a text file                   "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}