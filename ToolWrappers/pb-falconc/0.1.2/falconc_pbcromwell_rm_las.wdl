version 1.0

task FalconcPbcromwellrmlas {
  input {
    Boolean? command_string_command
    Boolean? _verbose_verbose
    Boolean? dry_run
    String help
  }
  command <<<
    falconc pbcromwell_rm_las \
      ~{help} \
      ~{if (command_string_command) then "-c" else ""} \
      ~{if (_verbose_verbose) then "-v" else ""} \
      ~{if (dry_run) then "--dry-run" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    command_string_command: "=, --command=  string  \\\"find . -name \\'*.las\\'\\\"  set command"
    _verbose_verbose: "=, --verbose=  int     1                         set verbose"
    dry_run: "bool    false                     set dry_run"
    help: "--help-syntax                                      advanced:"
  }
  output {
    File out_stdout = stdout()
  }
}