class: CommandLineTool
id: perldoc.cwl
inputs:
- id: in_report_version
  doc: Report version
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_recursive_search_slow
  doc: Recursive search (slow)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_ignore_case
  doc: Ignore case
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_display_pod_using
  doc: "Display pod using pod2text instead of Pod::Man and groff\n(-t is the default\
    \ on win32 unless -n is specified)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_display_unformatted_pod
  doc: Display unformatted pod text
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_display_modules_file
  doc: Display module's file in its entirety
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_specify_replacement_groff
  doc: Specify replacement for groff
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_display_file_name
  doc: Display the module's file name
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_attempt_drop_privs
  doc: Don't attempt to drop privs for security
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_arguments_file_names
  doc: Arguments are file names, not modules (implies -U)
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_verbosely_describe_going
  doc: Verbosely describe what's going on
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_send_output_stdout
  doc: Send output to STDOUT without any pager
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_optionvalue
  doc: :option_value
  type: File?
  inputBinding:
    prefix: -d
- id: in_choose_doc_translation
  doc: Choose doc translation (if any)
  type: string?
  inputBinding:
    prefix: -L
- id: in_use_index_looks
  doc: Use index if present (looks for pod.idx at .../../lib/5.26.2/x86_64-linux-thread-multi)
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_search_text_answers
  doc: Search the text of questions (not answers) in perlfaq[1-9]
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_search_perl_builtin
  doc: Search Perl built-in functions
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_search_perl_api
  doc: Search Perl API
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_search_predefined_variables
  doc: Search predefined Perl variables
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_optionvalue
  doc: :option_value
  type: File?
  outputBinding:
    glob: $(inputs.in_optionvalue)
hints: []
cwlVersion: v1.1
baseCommand:
- perldoc
