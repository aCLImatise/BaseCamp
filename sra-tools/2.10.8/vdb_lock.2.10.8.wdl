version 1.0

task Vdblock2108 {
  input {
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
    File file_dot
  }
  command <<<
    vdb_lock_2_10_8 \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "vdb-lock.2.10.8 : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}