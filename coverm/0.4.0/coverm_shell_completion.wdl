version 1.0

task CovermShellcompletion {
  input {
    Boolean? quiet
    Boolean? verbose
    File? output_file
    String? shell
  }
  command <<<
    coverm shell_completion \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(shell) then ("--shell " +  '"' + shell + '"') else ""}
  >>>
  parameter_meta {
    quiet: ""
    verbose: ""
    output_file: ""
    shell: "[possible values: zsh, bash, fish, powershell, elvish]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}