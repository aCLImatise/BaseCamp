version 1.0

task CovermShellCompletion {
  input {
    String? output_file
    String? shell
    String? flags
  }
  command <<<
    coverm shell-completion \
      ~{flags} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(shell) then ("--shell " +  '"' + shell + '"') else ""}
  >>>
  parameter_meta {
    output_file: "--shell <shell>                 [possible values: zsh, bash, fish, powershell, elvish]"
    shell: ""
    flags: ""
  }
}