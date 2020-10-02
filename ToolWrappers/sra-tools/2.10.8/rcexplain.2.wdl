version 1.0

task Rcexplain2 {
  input {
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
  }
  command <<<
    rcexplain_2 \
      ~{quit_dot} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
  }
  output {
    File out_stdout = stdout()
  }
}