version 1.0

task F2py {
  input {
    Boolean? two_d_numpy
    Boolean? two_d_numeric
    Boolean? two_d_numarray
    Boolean? g_three_numpy
    File? write_signatures_file
    File? name_module_fpy
    String? lower
    Int? build_dir
    Boolean? overwrite_signature
    Boolean? short_latex
    Boolean? debug_capi
    Int? include_paths
    Boolean? link
    Boolean? quiet
    Boolean? verbose
    Boolean? print_fpy_version
    Boolean? f_compiler
    Boolean? compiler
    Boolean? help_f_compiler
    Boolean? f_seven_seven_exec
    Boolean? f_nine_zero_exec
    Boolean? f_seven_seven_flags
    Boolean? f_nine_zero_flags
    Boolean? opt
    Boolean? arch
    Boolean? no_opt
    Boolean? noarch
    Boolean? debug
    Boolean? lslash_path_slash_to_slash_lib_slash
    String directories_dot
  }
  command <<<
    f2py \
      ~{directories_dot} \
      ~{if (two_d_numpy) then "--2d-numpy" else ""} \
      ~{if (two_d_numeric) then "--2d-numeric" else ""} \
      ~{if (two_d_numarray) then "--2d-numarray" else ""} \
      ~{if (g_three_numpy) then "--g3-numpy" else ""} \
      ~{if defined(write_signatures_file) then ("-h " +  '"' + write_signatures_file + '"') else ""} \
      ~{if defined(name_module_fpy) then ("-m " +  '"' + name_module_fpy + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(build_dir) then ("--build-dir " +  '"' + build_dir + '"') else ""} \
      ~{if (overwrite_signature) then "--overwrite-signature" else ""} \
      ~{if (short_latex) then "--short-latex" else ""} \
      ~{if (debug_capi) then "--debug-capi" else ""} \
      ~{if defined(include_paths) then ("--include-paths " +  '"' + include_paths + '"') else ""} \
      ~{if (link) then "--link-" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (print_fpy_version) then "-v" else ""} \
      ~{if (f_compiler) then "--fcompiler" else ""} \
      ~{if (compiler) then "--compiler" else ""} \
      ~{if (help_f_compiler) then "--help-fcompiler" else ""} \
      ~{if (f_seven_seven_exec) then "--f77exec" else ""} \
      ~{if (f_nine_zero_exec) then "--f90exec" else ""} \
      ~{if (f_seven_seven_flags) then "--f77flags" else ""} \
      ~{if (f_nine_zero_flags) then "--f90flags" else ""} \
      ~{if (opt) then "--opt" else ""} \
      ~{if (arch) then "--arch" else ""} \
      ~{if (no_opt) then "--noopt" else ""} \
      ~{if (noarch) then "--noarch" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (lslash_path_slash_to_slash_lib_slash) then "-L/path/to/lib/" else ""}
  >>>
  parameter_meta {
    two_d_numpy: "Use numpy.f2py tool with NumPy support. [DEFAULT]"
    two_d_numeric: "Use f2py2e tool with Numeric support."
    two_d_numarray: "Use f2py2e tool with Numarray support."
    g_three_numpy: "Use 3rd generation f2py from the separate f2py package.\\n[NOT AVAILABLE YET]"
    write_signatures_file: "Write signatures of the fortran routines to file <filename>\\nand exit. You can then edit <filename> and use it instead\\nof <fortran files>. If <filename>==stdout then the\\nsignatures are printed to stdout."
    name_module_fpy: "Name of the module; f2py generates a Python/C API\\nfile <modulename>module.c or extension module <modulename>.\\nDefault is 'untitled'."
    lower: "assumed with -h key, and --no-lower without -h key."
    build_dir: "All f2py generated files are created in <dirname>.\\nDefault is tempfile.mkdtemp()."
    overwrite_signature: "Overwrite existing signature file."
    short_latex: "Create 'incomplete' LaTeX document (without commands\\n\\documentclass, \\tableofcontents, and \\begin{document},\\n\\end{document})."
    debug_capi: "Create C/API code that reports the state of the wrappers\\nduring runtime. Useful for debugging."
    include_paths: ":<path2>:...   Search include files from the given"
    link: "<resource> switch below. [..] is optional list"
    quiet: "Run quietly."
    verbose: "Run with extra verbosity."
    print_fpy_version: "Print f2py version ID and exit."
    f_compiler: "=         Specify Fortran compiler type by vendor"
    compiler: "=          Specify C compiler type (as defined by distutils)"
    help_f_compiler: "List available Fortran compilers and exit"
    f_seven_seven_exec: "=           Specify the path to F77 compiler"
    f_nine_zero_exec: "=           Specify the path to F90 compiler"
    f_seven_seven_flags: "=          Specify F77 compiler flags"
    f_nine_zero_flags: "=          Specify F90 compiler flags"
    opt: "=               Specify optimization flags"
    arch: "=              Specify architecture specific optimization flags"
    no_opt: "Compile without optimization"
    noarch: "Compile without arch-dependent optimization"
    debug: "Compile with debugging information"
    lslash_path_slash_to_slash_lib_slash: "<libname>\\n-D<define> -U<name>\\n-I/path/to/include/\\n<filename>.o <filename>.so <filename>.a\\nUsing the following macros may be required with non-gcc Fortran\\ncompilers:\\n-DPREPEND_FORTRAN -DNO_APPEND_FORTRAN -DUPPERCASE_FORTRAN\\n-DUNDERSCORE_G77\\nWhen using -DF2PY_REPORT_ATEXIT, a performance report of F2PY\\ninterface is printed out at exit (platforms: Linux).\\nWhen using -DF2PY_REPORT_ON_ARRAY_COPY=<int>, a message is\\nsent to stderr whenever F2PY interface makes a copy of an\\narray. Integer <int> sets the threshold for array sizes when\\na message should be shown."
    directories_dot: "--help-link [..] List system resources found by system_info.py. See also"
  }
  output {
    File out_stdout = stdout()
  }
}