version 1.0

task Slsh {
  input {
    String? execute_slang_code
    Boolean? compile_debugging_code
    Boolean? load_init_file
    File? in_it
    Boolean? no_readline
    Boolean? force_interactive_input
    Boolean? quiet
    Boolean? test_mode_slshmain
    Boolean? show_verbose_messages
    Boolean? d_name
  }
  command <<<
    slsh \
      ~{if defined(execute_slang_code) then ("-e " +  '"' + execute_slang_code + '"') else ""} \
      ~{if (compile_debugging_code) then "-g" else ""} \
      ~{if (load_init_file) then "-n" else ""} \
      ~{if defined(in_it) then ("--init " +  '"' + in_it + '"') else ""} \
      ~{if (no_readline) then "--no-readline" else ""} \
      ~{if (force_interactive_input) then "-i" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (test_mode_slshmain) then "-t" else ""} \
      ~{if (show_verbose_messages) then "-v" else ""} \
      ~{if (d_name) then "-Dname" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    execute_slang_code: "Execute 'string' as S-Lang code"
    compile_debugging_code: "Compile with debugging code, tracebacks, etc"
    load_init_file: "Don't load personal init file"
    in_it: "Use this file instead of ~/.slshrc"
    no_readline: "Do not use readline"
    force_interactive_input: "Force interactive input"
    quiet: "Do not print startup messages"
    test_mode_slshmain: "Test mode.  If slsh_main exists, do not call it"
    show_verbose_messages: "Show verbose loading messages"
    d_name: "Define \\\"name\\\" as a preprocessor symbol\\nNote: - and -i are mutually exclusive"
  }
  output {
    File out_stdout = stdout()
  }
}