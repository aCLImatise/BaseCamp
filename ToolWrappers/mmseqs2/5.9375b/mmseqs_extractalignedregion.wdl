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
      ~{if (extract_mode) then "--extract-mode" else ""} \
      ~{if (no_preload) then "--no-preload" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    extract_mode: "2               Query 1, Target 2"
    no_preload: "false           Do not preload database"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}