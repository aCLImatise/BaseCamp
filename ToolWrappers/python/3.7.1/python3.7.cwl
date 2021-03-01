class: CommandLineTool
id: python3.7.cwl
inputs:
- id: in_issue_warnings_comparing
  doc: ": issue warnings about str(bytes_instance), str(bytearray_instance)\nand comparing\
    \ bytes/bytearray with str. (-bb: issue errors)"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_write_files_also
  doc: ": don't write .pyc files on import; also PYTHONDONTWRITEBYTECODE=x"
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_program_passed_string
  doc: ': program passed in as string (terminates option list)'
  type: string?
  inputBinding:
    prefix: -c
- id: in_debug_output_also
  doc: ': debug output from parser; also PYTHONDEBUG=x'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_ignore_python_variables
  doc: ': ignore PYTHON* environment variables (such as PYTHONPATH)'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_inspect_interactively_evenif
  doc: ": inspect interactively after running script; forces a prompt even\nif stdin\
    \ does not appear to be a terminal; also PYTHONINSPECT=x"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_isolate_python_implies
  doc: ": isolate Python from the user's environment (implies -E and -s)"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_run_library_module
  doc: ': run library module as a script (terminates option list)'
  type: string?
  inputBinding:
    prefix: -m
- id: in_remove_assert_debugdependent
  doc: ": remove assert and __debug__-dependent statements; add .opt-1 before\n.pyc\
    \ extension; also PYTHONOPTIMIZE=x"
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_oo
  doc: ": do -O changes and also discard docstrings; add .opt-2 before\n.pyc extension"
  type: boolean?
  inputBinding:
    prefix: -OO
- id: in_print_version_messages
  doc: ": don't print version and copyright messages on interactive startup"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_add_site_directory
  doc: ": don't add user site directory to sys.path; also PYTHONNOUSERSITE"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__don_initialization
  doc: ": don't imply 'import site' on initialization"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_force_stdout_stderr
  doc: ": force the stdout and stderr streams to be unbuffered;\nthis option has no\
    \ effect on stdin; also PYTHONUNBUFFERED=x"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_verbose_trace_import
  doc: ": verbose (trace import statements); also PYTHONVERBOSE=x\ncan be supplied\
    \ multiple times to increase verbosity"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_python_number
  doc: ": print the Python version number and exit (also --version)\nwhen given twice,\
    \ print more information about the build"
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_warning_control_arg
  doc: ": warning control; arg is action:message:category:module:lineno\nalso PYTHONWARNINGS=arg"
  type: string?
  inputBinding:
    prefix: -W
- id: in_skip_first_line
  doc: ': skip first line of source, allowing use of non-Unix forms of #!cmd'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_set_implementationspecific_option
  doc: ': set implementation-specific option'
  type: string?
  inputBinding:
    prefix: -X
- id: in_check_hash_based_pyc_s
  doc: "|default|never:\ncontrol how Python invalidates hash-based .pyc files"
  type: string?
  inputBinding:
    prefix: --check-hash-based-pycs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- python3.7
