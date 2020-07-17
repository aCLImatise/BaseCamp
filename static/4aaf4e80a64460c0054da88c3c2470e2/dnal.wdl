version 1.0

task Dnal {
  input {
    Boolean? dy_debug
    Boolean? pal_debug
    Boolean? version
    Boolean? silent
    Boolean? quiet
    String? error_off_std
    Boolean? error_log
    Boolean? error_style
  }
  command <<<
    dnal \
      ~{true="-dydebug" false="" dy_debug} \
      ~{true="-paldebug" false="" pal_debug} \
      ~{true="-version" false="" version} \
      ~{true="-silent" false="" silent} \
      ~{true="-quiet" false="" quiet} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{true="-errorlog" false="" error_log} \
      ~{true="-errorstyle" false="" error_style}
  >>>
  parameter_meta {
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
  }
}