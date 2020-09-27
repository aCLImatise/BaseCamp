version 1.0

task Irb {
  input {
    Boolean? suppress_read_of
    Boolean? bc_mode_load
    Boolean? set_debug_same
    String? same_ruby_r
    File? specify_loadpath_directory
    Boolean? same_ruby_u
    String? same_ruby_e
    Boolean? same_as_ruby_w
    Boolean? _same_ruby_w
    Int? context_mode
    Boolean? echo
    Boolean? noecho
    Boolean? inspect
    Boolean? no_inspect
    Boolean? readline
    Boolean? no_readline
    String? prompt
    Boolean? inf_ruby_mode
    Boolean? sample_book_mode_slash_simple_prompt
    Boolean? no_prompt
    Boolean? single_irb
    Boolean? tracer
    Int? back_trace_limit
    String? irb_debug
    Boolean? verbose
    Boolean? no_verbose
    String? program_file
    String? arguments
  }
  command <<<
    irb \
      ~{program_file} \
      ~{arguments} \
      ~{if (suppress_read_of) then "-f" else ""} \
      ~{if (bc_mode_load) then "-m" else ""} \
      ~{if (set_debug_same) then "-d" else ""} \
      ~{if defined(same_ruby_r) then ("-r " +  '"' + same_ruby_r + '"') else ""} \
      ~{if defined(specify_loadpath_directory) then ("-I " +  '"' + specify_loadpath_directory + '"') else ""} \
      ~{if (same_ruby_u) then "-U" else ""} \
      ~{if defined(same_ruby_e) then ("-E " +  '"' + same_ruby_e + '"') else ""} \
      ~{if (same_as_ruby_w) then "-w" else ""} \
      ~{if (_same_ruby_w) then "-W" else ""} \
      ~{if defined(context_mode) then ("--context-mode " +  '"' + context_mode + '"') else ""} \
      ~{if (echo) then "--echo" else ""} \
      ~{if (noecho) then "--noecho" else ""} \
      ~{if (inspect) then "--inspect" else ""} \
      ~{if (no_inspect) then "--noinspect" else ""} \
      ~{if (readline) then "--readline" else ""} \
      ~{if (no_readline) then "--noreadline" else ""} \
      ~{if defined(prompt) then ("--prompt " +  '"' + prompt + '"') else ""} \
      ~{if (inf_ruby_mode) then "--inf-ruby-mode" else ""} \
      ~{if (sample_book_mode_slash_simple_prompt) then "--sample-book-mode/--simple-prompt" else ""} \
      ~{if (no_prompt) then "--noprompt" else ""} \
      ~{if (single_irb) then "--single-irb" else ""} \
      ~{if (tracer) then "--tracer" else ""} \
      ~{if defined(back_trace_limit) then ("--back-trace-limit " +  '"' + back_trace_limit + '"') else ""} \
      ~{if defined(irb_debug) then ("--irb_debug " +  '"' + irb_debug + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_verbose) then "--noverbose" else ""}
  >>>
  parameter_meta {
    suppress_read_of: "Suppress read of ~/.irbrc"
    bc_mode_load: "Bc mode (load mathn, fraction or matrix are available)"
    set_debug_same: "Set $DEBUG to true (same as `ruby -d')"
    same_ruby_r: "Same as `ruby -r'"
    specify_loadpath_directory: "Specify $LOAD_PATH directory"
    same_ruby_u: "Same as `ruby -U`"
    same_ruby_e: "Same as `ruby -E`"
    same_as_ruby_w: "Same as `ruby -w`"
    _same_ruby_w: "[level=2]       Same as `ruby -W`"
    context_mode: "Set n[0-3] to method to create Binding Object,\\nwhen new workspace was created"
    echo: "Show result(default)"
    noecho: "Don't show result"
    inspect: "Use `inspect' for output (default except for bc mode)"
    no_inspect: "Don't use inspect for output"
    readline: "Use Readline extension module"
    no_readline: "Don't use Readline extension module"
    prompt: "prompt-mode\\nSwitch prompt mode. Pre-defined prompt modes are\\n`default', `simple', `xmp' and `inf-ruby'"
    inf_ruby_mode: "Use prompt appropriate for inf-ruby-mode on emacs.\\nSuppresses --readline."
    sample_book_mode_slash_simple_prompt: "Simple prompt mode"
    no_prompt: "No prompt mode"
    single_irb: "Share self with sub-irb."
    tracer: "Display trace for each execution of commands."
    back_trace_limit: "Display backtrace top n and tail n. The default\\nvalue is 16."
    irb_debug: "Set internal debug level to n (not for popular use)"
    verbose: "Show details"
    no_verbose: "Don't show details"
    program_file: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}