version 1.0

task Python37m {
  input {
    Boolean? issue_warnings_comparing
    Boolean? write_files_also
    String? program_passed_string
    Boolean? debug_output_also
    Boolean? ignore_python_variables
    Boolean? inspect_interactively_evenif
    Boolean? isolate_python_implies
    String? run_library_module
    Boolean? remove_assert_debugdependent
    Boolean? oo
    Boolean? print_version_messages
    Boolean? add_site_directory
    Boolean? _don_initialization
    Boolean? force_stdout_stderr
    Boolean? verbose_trace_import
    Boolean? print_python_number
    String? warning_control_arg
    Boolean? skip_first_line
    String? set_implementationspecific_option
    String? check_hash_based_pyc_s
  }
  command <<<
    python3_7m \
      ~{if (issue_warnings_comparing) then "-b" else ""} \
      ~{if (write_files_also) then "-B" else ""} \
      ~{if defined(program_passed_string) then ("-c " +  '"' + program_passed_string + '"') else ""} \
      ~{if (debug_output_also) then "-d" else ""} \
      ~{if (ignore_python_variables) then "-E" else ""} \
      ~{if (inspect_interactively_evenif) then "-i" else ""} \
      ~{if (isolate_python_implies) then "-I" else ""} \
      ~{if defined(run_library_module) then ("-m " +  '"' + run_library_module + '"') else ""} \
      ~{if (remove_assert_debugdependent) then "-O" else ""} \
      ~{if (oo) then "-OO" else ""} \
      ~{if (print_version_messages) then "-q" else ""} \
      ~{if (add_site_directory) then "-s" else ""} \
      ~{if (_don_initialization) then "-S" else ""} \
      ~{if (force_stdout_stderr) then "-u" else ""} \
      ~{if (verbose_trace_import) then "-v" else ""} \
      ~{if (print_python_number) then "-V" else ""} \
      ~{if defined(warning_control_arg) then ("-W " +  '"' + warning_control_arg + '"') else ""} \
      ~{if (skip_first_line) then "-x" else ""} \
      ~{if defined(set_implementationspecific_option) then ("-X " +  '"' + set_implementationspecific_option + '"') else ""} \
      ~{if defined(check_hash_based_pyc_s) then ("--check-hash-based-pycs " +  '"' + check_hash_based_pyc_s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    issue_warnings_comparing: ": issue warnings about str(bytes_instance), str(bytearray_instance)\\nand comparing bytes/bytearray with str. (-bb: issue errors)"
    write_files_also: ": don't write .pyc files on import; also PYTHONDONTWRITEBYTECODE=x"
    program_passed_string: ": program passed in as string (terminates option list)"
    debug_output_also: ": debug output from parser; also PYTHONDEBUG=x"
    ignore_python_variables: ": ignore PYTHON* environment variables (such as PYTHONPATH)"
    inspect_interactively_evenif: ": inspect interactively after running script; forces a prompt even\\nif stdin does not appear to be a terminal; also PYTHONINSPECT=x"
    isolate_python_implies: ": isolate Python from the user's environment (implies -E and -s)"
    run_library_module: ": run library module as a script (terminates option list)"
    remove_assert_debugdependent: ": remove assert and __debug__-dependent statements; add .opt-1 before\\n.pyc extension; also PYTHONOPTIMIZE=x"
    oo: ": do -O changes and also discard docstrings; add .opt-2 before\\n.pyc extension"
    print_version_messages: ": don't print version and copyright messages on interactive startup"
    add_site_directory: ": don't add user site directory to sys.path; also PYTHONNOUSERSITE"
    _don_initialization: ": don't imply 'import site' on initialization"
    force_stdout_stderr: ": force the stdout and stderr streams to be unbuffered;\\nthis option has no effect on stdin; also PYTHONUNBUFFERED=x"
    verbose_trace_import: ": verbose (trace import statements); also PYTHONVERBOSE=x\\ncan be supplied multiple times to increase verbosity"
    print_python_number: ": print the Python version number and exit (also --version)\\nwhen given twice, print more information about the build"
    warning_control_arg: ": warning control; arg is action:message:category:module:lineno\\nalso PYTHONWARNINGS=arg"
    skip_first_line: ": skip first line of source, allowing use of non-Unix forms of #!cmd"
    set_implementationspecific_option: ": set implementation-specific option"
    check_hash_based_pyc_s: "|default|never:\\ncontrol how Python invalidates hash-based .pyc files"
  }
  output {
    File out_stdout = stdout()
  }
}