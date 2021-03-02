version 1.0

task MmseqsConvertalis {
  input {
    Int? format_mode
    Boolean? no_preload
    File? db_output
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs convertalis \
      ~{if defined(format_mode) then ("--format-mode " +  '"' + format_mode + '"') else ""} \
      ~{if (no_preload) then "--no-preload" else ""} \
      ~{if (db_output) then "--db-output" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_mode: "output format 0: BLAST-TAB, 1: PAIRWISE, 2: BLAST-TAB + query/db length"
    no_preload: "false           Do not preload database"
    db_output: "false           Output a result db instead of a text file"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_db_output = "${in_db_output}"
  }
}