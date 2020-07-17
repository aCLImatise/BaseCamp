version 1.0

task Qpff3base {
  input {
    String? use_val_lambda
    Boolean? print_version_exit
    Boolean? toggle_verbose_mode
    Boolean? _toggle_doanalysis
    File file
  }
  command <<<
    qpff3base \
      ~{file} \
      ~{if defined(use_val_lambda) then ("-l " +  '"' + use_val_lambda + '"') else ""} \
      ~{true="-v" false="" print_version_exit} \
      ~{true="-V" false="" toggle_verbose_mode} \
      ~{true="-x" false="" _toggle_doanalysis}
  >>>
  parameter_meta {
    use_val_lambda: "... use <val> as lambda scale."
    print_version_exit: "... print version and exit."
    toggle_verbose_mode: "... toggle verbose mode ON."
    _toggle_doanalysis: "... toggle doAnalysis ON."
    file: ""
  }
}