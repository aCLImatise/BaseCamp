version 1.0

task Dnal {
  input {
    Boolean? match
    Boolean? mis
    Boolean? gap
    Boolean? ext
    Boolean? bound
    Boolean? kbyte
    Boolean? dy_mem
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
      ~{if (match) then "-match" else ""} \
      ~{if (mis) then "-mis" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (ext) then "-ext" else ""} \
      ~{if (bound) then "-bound" else ""} \
      ~{if (kbyte) then "-kbyte" else ""} \
      ~{if (dy_mem) then "-dymem" else ""} \
      ~{if (dy_debug) then "-dydebug" else ""} \
      ~{if (pal_debug) then "-paldebug" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{if (error_log) then "-errorlog" else ""} \
      ~{if (error_style) then "-errorstyle" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    match: "[4]  Match score"
    mis: "[-1] MisMatch score"
    gap: "[5]  Gap penalty"
    ext: "[1]  Gap extension penalty"
    bound: "[local/global/edge]  Start/End policy"
    kbyte: "[100000] Number of kbytes allowed in main memory"
    dy_mem: "memory style [default/linear/explicit]"
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
  }
  output {
    File out_stdout = stdout()
  }
}