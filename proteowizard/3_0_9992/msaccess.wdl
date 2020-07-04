version 1.0

task Msaccess {
  input {
    Boolean? arg_text_file
    Boolean? arg_output_directory
    Boolean? arg_configuration_file
    Boolean? arg_execute_command
    String? filter
    Boolean? print_progress_messages
    File? filenames
  }
  command <<<
    msaccess \
      ~{filenames} \
      ~{true="-f" false="" arg_text_file} \
      ~{true="-o" false="" arg_output_directory} \
      ~{true="-c" false="" arg_configuration_file} \
      ~{true="-x" false="" arg_execute_command} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="-v" false="" print_progress_messages}
  >>>
  parameter_meta {
    arg_text_file: "[ --filelist ] arg    : text file containing filenames to process"
    arg_output_directory: "[ --outdir ] arg (=.) : output directory"
    arg_configuration_file: "[ --config ] arg      : configuration file (containing settings as  optionName=value)"
    arg_execute_command: "[ --exec ] arg        : execute command, e.g --exec \"tic mz=409-412\""
    filter: ": add a spectrum list filter, e.g. --filter=\"msLevel [2,3]\""
    print_progress_messages: "[ --verbose ]         : print progress messages"
    filenames: ""
  }
}