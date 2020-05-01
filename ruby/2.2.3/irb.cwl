#!/usr/bin/env cwl-runner

baseCommand:
- irb
class: CommandLineTool
cwlVersion: v1.0
id: irb
inputs:
- doc: Use prompt appropriate for inf-ruby-mode on emacs. Suppresses --readline.
  id: inf_ruby_mode
  inputBinding:
    prefix: --inf-ruby-mode
  type: boolean
- doc: /--simple-prompt Simple prompt mode
  id: sample_book_mode
  inputBinding:
    prefix: --sample-book-mode
  type: boolean
- doc: No prompt mode
  id: no_prompt
  inputBinding:
    prefix: --noprompt
  type: boolean
- doc: Share self with sub-irb.
  id: single_irb
  inputBinding:
    prefix: --single-irb
  type: boolean
- doc: Display trace for each execution of commands.
  id: tracer
  inputBinding:
    prefix: --tracer
  type: boolean
- doc: Display backtrace top n and tail n. The default value is 16.
  id: back_trace_limit
  inputBinding:
    prefix: --back-trace-limit
  type: string
- doc: Set internal debug level to n (not for popular use)
  id: irb_debug
  inputBinding:
    prefix: --irb_debug
  type: string
- doc: Show details
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Don't show details
  id: no_verbose
  inputBinding:
    prefix: --noverbose
  type: boolean
- doc: of irb from the list of command-line args
  id: separate
  inputBinding:
    prefix: --                Separate
  type: string
