class: CommandLineTool
id: irb.cwl
inputs:
- id: in_suppress_read_of
  doc: Suppress read of ~/.irbrc
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_bc_mode_load
  doc: Bc mode (load mathn, fraction or matrix are available)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_set_debug_d
  doc: Set $DEBUG to true (same as `ruby -d')
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_same_ruby_r
  doc: Same as `ruby -r'
  type: string?
  inputBinding:
    prefix: -r
- id: in_specify_loadpath_directory
  doc: Specify $LOAD_PATH directory
  type: File?
  inputBinding:
    prefix: -I
- id: in_same_ruby_u
  doc: Same as `ruby -U`
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_same_ruby_e
  doc: Same as `ruby -E`
  type: string?
  inputBinding:
    prefix: -E
- id: in_same_as_ruby
  doc: Same as `ruby -w`
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_same_ruby_w
  doc: '[level=2]       Same as `ruby -W`'
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_context_mode
  doc: "Set n[0-3] to method to create Binding Object,\nwhen new workspace was created"
  type: long?
  inputBinding:
    prefix: --context-mode
- id: in_echo
  doc: Show result(default)
  type: boolean?
  inputBinding:
    prefix: --echo
- id: in_noecho
  doc: Don't show result
  type: boolean?
  inputBinding:
    prefix: --noecho
- id: in_inspect
  doc: Use `inspect' for output (default except for bc mode)
  type: boolean?
  inputBinding:
    prefix: --inspect
- id: in_no_inspect
  doc: Don't use inspect for output
  type: boolean?
  inputBinding:
    prefix: --noinspect
- id: in_readline
  doc: Use Readline extension module
  type: boolean?
  inputBinding:
    prefix: --readline
- id: in_no_readline
  doc: Don't use Readline extension module
  type: boolean?
  inputBinding:
    prefix: --noreadline
- id: in_prompt_mode
  doc: "Switch prompt mode. Pre-defined prompt modes are\n`default', `simple', `xmp'\
    \ and `inf-ruby'"
  type: string?
  inputBinding:
    prefix: --prompt-mode
- id: in_inf_ruby_mode
  doc: "Use prompt appropriate for inf-ruby-mode on emacs.\nSuppresses --readline."
  type: boolean?
  inputBinding:
    prefix: --inf-ruby-mode
- id: in_sample_book_mode
  doc: Simple prompt mode
  type: boolean?
  inputBinding:
    prefix: --sample-book-mode
- id: in_no_prompt
  doc: No prompt mode
  type: boolean?
  inputBinding:
    prefix: --noprompt
- id: in_single_irb
  doc: Share self with sub-irb.
  type: boolean?
  inputBinding:
    prefix: --single-irb
- id: in_tracer
  doc: Display trace for each execution of commands.
  type: boolean?
  inputBinding:
    prefix: --tracer
- id: in_back_trace_limit
  doc: "Display backtrace top n and tail n. The default\nvalue is 16."
  type: long?
  inputBinding:
    prefix: --back-trace-limit
- id: in_irb_debug
  doc: Set internal debug level to n (not for popular use)
  type: string?
  inputBinding:
    prefix: --irb_debug
- id: in_verbose
  doc: Show details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_verbose
  doc: Don't show details
  type: boolean?
  inputBinding:
    prefix: --noverbose
- id: in_program_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- irb
