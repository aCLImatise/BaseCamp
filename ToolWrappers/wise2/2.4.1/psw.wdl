version 1.0

task Psw {
  input {
    Int? penatly_default
    Int? matrix_default_blosumbla
    String? abc
    Boolean? penalty_above_default
    Boolean? b_penalty_above
    Boolean? c_penalty_above
    String? raw_output
    String? label_output
    String? fancy_output
    String? psw_use_sequences
    File? dp_env
    Boolean? dy_mem
    Boolean? kbyte
    Boolean? dy_debug
    Boolean? pal_debug
    Boolean? version
    Boolean? silent
    Boolean? quiet
    String? error_off_std
    Boolean? error_log
    Boolean? error_style
    String options
  }
  command <<<
    psw \
      ~{options} \
      ~{if defined(penatly_default) then ("-e " +  '"' + penatly_default + '"') else ""} \
      ~{if defined(matrix_default_blosumbla) then ("-m " +  '"' + matrix_default_blosumbla + '"') else ""} \
      ~{if defined(abc) then ("-abc " +  '"' + abc + '"') else ""} \
      ~{if (penalty_above_default) then "-a" else ""} \
      ~{if (b_penalty_above) then "-b" else ""} \
      ~{if (c_penalty_above) then "-c" else ""} \
      ~{if defined(raw_output) then ("-r " +  '"' + raw_output + '"') else ""} \
      ~{if defined(label_output) then ("-l " +  '"' + label_output + '"') else ""} \
      ~{if defined(fancy_output) then ("-f " +  '"' + fancy_output + '"') else ""} \
      ~{if defined(psw_use_sequences) then ("-F " +  '"' + psw_use_sequences + '"') else ""} \
      ~{if defined(dp_env) then ("-dpenv " +  '"' + dp_env + '"') else ""} \
      ~{if (dy_mem) then "-dymem" else ""} \
      ~{if (kbyte) then "-kbyte" else ""} \
      ~{if (dy_debug) then "-dydebug" else ""} \
      ~{if (pal_debug) then "-paldebug" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{if (error_log) then "-errorlog" else ""} \
      ~{if (error_style) then "-errorstyle" else ""}
  >>>
  parameter_meta {
    penatly_default: "penatly (default 2)"
    matrix_default_blosumbla: "matrix (default BLOSUM62.bla)"
    abc: "the abc model"
    penalty_above_default: "a penalty for above (default 120)"
    b_penalty_above: "b penalty for above (default 10)"
    c_penalty_above: "c penalty for above (default 3)"
    raw_output: "raw output"
    label_output: "label output"
    fancy_output: "fancy output"
    psw_use_sequences: "psw to use sequences that seem to be DNA"
    dp_env: "envelope file...\\n(default, -f, all outputs can be shown together)"
    dy_mem: "memory style [default/linear/explicit]"
    kbyte: "memory amount to use [4000]"
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
    options: "-g gap penalty (default 12)"
  }
  output {
    File out_stdout = stdout()
  }
}