version 1.0

task Erb {
  input {
    Boolean? print_ruby_script
    Boolean? print_ruby_script_line
    Boolean? enable_verbose_mode
    Boolean? set_debug_true
    String? load_a_library
    Float? set_safe_
    String? set_default_encodings
    Boolean? set_default_encoding
    Float? specify_trimmode_
    Boolean? ignore_lines_start
  }
  command <<<
    erb \
      ~{if (print_ruby_script) then "-x" else ""} \
      ~{if (print_ruby_script_line) then "-n" else ""} \
      ~{if (enable_verbose_mode) then "-v" else ""} \
      ~{if (set_debug_true) then "-d" else ""} \
      ~{if defined(load_a_library) then ("-r " +  '"' + load_a_library + '"') else ""} \
      ~{if defined(set_safe_) then ("-S " +  '"' + set_safe_ + '"') else ""} \
      ~{if defined(set_default_encodings) then ("-E " +  '"' + set_default_encodings + '"') else ""} \
      ~{if (set_default_encoding) then "-U" else ""} \
      ~{if defined(specify_trimmode_) then ("-T " +  '"' + specify_trimmode_ + '"') else ""} \
      ~{if (ignore_lines_start) then "-P" else ""}
  >>>
  parameter_meta {
    print_ruby_script: "print ruby script"
    print_ruby_script_line: "print ruby script with line number"
    enable_verbose_mode: "enable verbose mode"
    set_debug_true: "set $DEBUG to true"
    load_a_library: "load a library"
    set_safe_: "set $SAFE (0..3)"
    set_default_encodings: "[:in]       set default external/internal encodings"
    set_default_encoding: "set default encoding to UTF-8."
    specify_trimmode_: "specify trim_mode (0..2, -)"
    ignore_lines_start: "ignore lines which start with \\\"%\\\""
  }
  output {
    File out_stdout = stdout()
  }
}