version 1.0

task Msaccess {
  input {
    Boolean? arg_text_file
    Directory? arg_output_directory
    Boolean? arg_configuration_file
    Boolean? arg_execute_command
    Int? filter
    Boolean? print_progress_messages
    String options
    String metadata
  }
  command <<<
    msaccess \
      ~{options} \
      ~{metadata} \
      ~{if (arg_text_file) then "-f" else ""} \
      ~{if (arg_output_directory) then "-o" else ""} \
      ~{if (arg_configuration_file) then "-c" else ""} \
      ~{if (arg_execute_command) then "-x" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (print_progress_messages) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    arg_text_file: "[ --filelist ] arg    : text file containing filenames to process"
    arg_output_directory: "[ --outdir ] arg (=.) : output directory"
    arg_configuration_file: "[ --config ] arg      : configuration file (containing settings as\\noptionName=value)"
    arg_execute_command: "[ --exec ] arg        : execute command, e.g --exec \\\"tic mz=409-412\\\""
    filter: ": add a spectrum list filter, e.g. --filter=\\\"msLevel\\n[2,3]\\\""
    print_progress_messages: "[ --verbose ]         : print progress messages"
    options: "FILTER OPTIONS"
    metadata: "(write file-level metadata)"
  }
  output {
    File out_stdout = stdout()
    Directory out_arg_output_directory = "${in_arg_output_directory}"
  }
}