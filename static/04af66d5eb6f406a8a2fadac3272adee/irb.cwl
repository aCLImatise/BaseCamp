class: CommandLineTool
id: irb.cwl
inputs:
- id: inf_ruby_mode
  doc: Use prompt appropriate for inf-ruby-mode on emacs. Suppresses --readline.
  type: boolean
  inputBinding:
    prefix: --inf-ruby-mode
- id: sample_book_mode
  doc: /--simple-prompt Simple prompt mode
  type: boolean
  inputBinding:
    prefix: --sample-book-mode
- id: no_prompt
  doc: No prompt mode
  type: boolean
  inputBinding:
    prefix: --noprompt
- id: single_irb
  doc: Share self with sub-irb.
  type: boolean
  inputBinding:
    prefix: --single-irb
- id: tracer
  doc: Display trace for each execution of commands.
  type: boolean
  inputBinding:
    prefix: --tracer
- id: back_trace_limit
  doc: Display backtrace top n and tail n. The default value is 16.
  type: string
  inputBinding:
    prefix: --back-trace-limit
- id: irb_debug
  doc: Set internal debug level to n (not for popular use)
  type: string
  inputBinding:
    prefix: --irb_debug
- id: verbose
  doc: Show details
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_verbose
  doc: Don't show details
  type: boolean
  inputBinding:
    prefix: --noverbose
- id: separate
  doc: of irb from the list of command-line args
  type: string
  inputBinding:
    prefix: --                Separate
outputs: []
cwlVersion: v1.1
baseCommand:
- irb
