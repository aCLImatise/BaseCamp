version 1.0

task F2py {
  input {
    Boolean? help_link
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
    String one
  }
  command <<<
    f2py \
      ~{one} \
      ~{true="--help-link" false="" help_link} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-v" false="" print_fpy_version} \
      ~{true="--fcompiler" false="" f_compiler} \
      ~{true="--compiler" false="" compiler} \
      ~{true="--help-fcompiler" false="" help_f_compiler} \
      ~{true="--f77exec" false="" f_seven_seven_exec} \
      ~{true="--f90exec" false="" f_nine_zero_exec} \
      ~{true="--f77flags" false="" f_seven_seven_flags} \
      ~{true="--f90flags" false="" f_nine_zero_flags} \
      ~{true="--opt" false="" opt} \
      ~{true="--arch" false="" arch} \
      ~{true="--noopt" false="" no_opt} \
      ~{true="--noarch" false="" noarch} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    help_link: "[..] List system resources found by system_info.py. See also --link-<resource> switch below. [..] is optional list of resources names. E.g. try 'f2py --help-link lapack_opt'."
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
    one: ""
  }
}