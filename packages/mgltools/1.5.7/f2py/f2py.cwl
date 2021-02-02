class: CommandLineTool
id: f2py.cwl
inputs:
- id: in_two_d_numpy
  doc: Use numpy.f2py tool with NumPy support. [DEFAULT]
  type: boolean
  inputBinding:
    prefix: --2d-numpy
- id: in_two_d_numeric
  doc: Use f2py2e tool with Numeric support.
  type: boolean
  inputBinding:
    prefix: --2d-numeric
- id: in_two_d_numarray
  doc: Use f2py2e tool with Numarray support.
  type: boolean
  inputBinding:
    prefix: --2d-numarray
- id: in_g_three_numpy
  doc: "Use 3rd generation f2py from the separate f2py package.\n[NOT AVAILABLE YET]"
  type: boolean
  inputBinding:
    prefix: --g3-numpy
- id: in_write_signatures_file
  doc: "Write signatures of the fortran routines to file <filename>\nand exit. You\
    \ can then edit <filename> and use it instead\nof <fortran files>. If <filename>==stdout\
    \ then the\nsignatures are printed to stdout."
  type: File
  inputBinding:
    prefix: -h
- id: in_name_module_fpy
  doc: "Name of the module; f2py generates a Python/C API\nfile <modulename>module.c\
    \ or extension module <modulename>.\nDefault is 'untitled'."
  type: File
  inputBinding:
    prefix: -m
- id: in_lower
  doc: assumed with -h key, and --no-lower without -h key.
  type: string
  inputBinding:
    prefix: --lower
- id: in_build_dir
  doc: "All f2py generated files are created in <dirname>.\nDefault is tempfile.mkdtemp()."
  type: long
  inputBinding:
    prefix: --build-dir
- id: in_overwrite_signature
  doc: Overwrite existing signature file.
  type: boolean
  inputBinding:
    prefix: --overwrite-signature
- id: in_short_latex
  doc: "Create 'incomplete' LaTeX document (without commands\n\\documentclass, \\\
    tableofcontents, and \\begin{document},\n\\end{document})."
  type: boolean
  inputBinding:
    prefix: --short-latex
- id: in_debug_capi
  doc: "Create C/API code that reports the state of the wrappers\nduring runtime.\
    \ Useful for debugging."
  type: boolean
  inputBinding:
    prefix: --debug-capi
- id: in_include_paths
  doc: :<path2>:...   Search include files from the given
  type: long
  inputBinding:
    prefix: --include-paths
- id: in_link
  doc: <resource> switch below. [..] is optional list
  type: boolean
  inputBinding:
    prefix: --link-
- id: in_quiet
  doc: Run quietly.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Run with extra verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_print_fpy_version
  doc: Print f2py version ID and exit.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_f_compiler
  doc: =         Specify Fortran compiler type by vendor
  type: boolean
  inputBinding:
    prefix: --fcompiler
- id: in_compiler
  doc: =          Specify C compiler type (as defined by distutils)
  type: boolean
  inputBinding:
    prefix: --compiler
- id: in_help_f_compiler
  doc: List available Fortran compilers and exit
  type: boolean
  inputBinding:
    prefix: --help-fcompiler
- id: in_f_seven_seven_exec
  doc: =           Specify the path to F77 compiler
  type: boolean
  inputBinding:
    prefix: --f77exec
- id: in_f_nine_zero_exec
  doc: =           Specify the path to F90 compiler
  type: boolean
  inputBinding:
    prefix: --f90exec
- id: in_f_seven_seven_flags
  doc: =          Specify F77 compiler flags
  type: boolean
  inputBinding:
    prefix: --f77flags
- id: in_f_nine_zero_flags
  doc: =          Specify F90 compiler flags
  type: boolean
  inputBinding:
    prefix: --f90flags
- id: in_opt
  doc: =               Specify optimization flags
  type: boolean
  inputBinding:
    prefix: --opt
- id: in_arch
  doc: =              Specify architecture specific optimization flags
  type: boolean
  inputBinding:
    prefix: --arch
- id: in_no_opt
  doc: Compile without optimization
  type: boolean
  inputBinding:
    prefix: --noopt
- id: in_noarch
  doc: Compile without arch-dependent optimization
  type: boolean
  inputBinding:
    prefix: --noarch
- id: in_debug
  doc: Compile with debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_lslash_path_slash_to_slash_lib_slash
  doc: "<libname>\n-D<define> -U<name>\n-I/path/to/include/\n<filename>.o <filename>.so\
    \ <filename>.a\nUsing the following macros may be required with non-gcc Fortran\n\
    compilers:\n-DPREPEND_FORTRAN -DNO_APPEND_FORTRAN -DUPPERCASE_FORTRAN\n-DUNDERSCORE_G77\n\
    When using -DF2PY_REPORT_ATEXIT, a performance report of F2PY\ninterface is printed\
    \ out at exit (platforms: Linux).\nWhen using -DF2PY_REPORT_ON_ARRAY_COPY=<int>,\
    \ a message is\nsent to stderr whenever F2PY interface makes a copy of an\narray.\
    \ Integer <int> sets the threshold for array sizes when\na message should be shown."
  type: boolean
  inputBinding:
    prefix: -L/path/to/lib/
- id: in_directories_dot
  doc: --help-link [..] List system resources found by system_info.py. See also
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- f2py
