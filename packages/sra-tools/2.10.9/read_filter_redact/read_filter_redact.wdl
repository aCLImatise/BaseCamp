version 1.0

task Readfilterredact {
  input {
    File? file_containing_spotids
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
    File file_dot
  }
  command <<<
    read_filter_redact \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(file_containing_spotids) then ("--file " +  '"' + file_containing_spotids + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    file_containing_spotids: "File containing SpotId-s to redact"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "read-filter-redact : 2.10.9"
  }
  output {
    File out_stdout = stdout()
  }
}