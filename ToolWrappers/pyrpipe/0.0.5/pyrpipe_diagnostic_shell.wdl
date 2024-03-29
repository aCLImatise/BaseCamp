version 1.0

task PyrpipeDiagnosticShell {
  input {
    File? file_default_same
    String? dump_command_options
    Boolean? verbose
    Int? filter_programs_provide
    String log_file
  }
  command <<<
    pyrpipe_diagnostic shell \
      ~{log_file} \
      ~{if defined(file_default_same) then ("-o " +  '"' + file_default_same + '"') else ""} \
      ~{if defined(dump_command_options) then ("-c " +  '"' + dump_command_options + '"') else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(filter_programs_provide) then ("-f " +  '"' + filter_programs_provide + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyrpipe:0.0.5--py_0"
  }
  parameter_meta {
    file_default_same: "out file default: same as input logfile"
    dump_command_options: "Dump command options [(a)ll,fa(i)l,(p)ass] default: a"
    verbose: "verbose"
    filter_programs_provide: "Filter by programs. Provide a comma-separated list e.g.,\\nprefetch,STAR,bowtie2 default None\\n"
    log_file: "The log file generated by pyrpipe"
  }
  output {
    File out_stdout = stdout()
  }
}