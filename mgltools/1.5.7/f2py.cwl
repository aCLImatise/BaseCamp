class: CommandLineTool
id: f2py.cwl
inputs:
- id: help_link
  doc: "[..] List system resources found by system_info.py. See also --link-<resource>\
    \ switch below. [..] is optional list of resources names. E.g. try 'f2py --help-link\
    \ lapack_opt'."
  type: boolean
  inputBinding:
    prefix: --help-link
- id: quiet
  doc: Run quietly.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Run with extra verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: v
  doc: Print f2py version ID and exit.
  type: boolean
  inputBinding:
    prefix: -v
- id: f_compiler
  doc: =         Specify Fortran compiler type by vendor
  type: boolean
  inputBinding:
    prefix: --fcompiler
- id: compiler
  doc: =          Specify C compiler type (as defined by distutils)
  type: boolean
  inputBinding:
    prefix: --compiler
- id: help_f_compiler
  doc: List available Fortran compilers and exit
  type: boolean
  inputBinding:
    prefix: --help-fcompiler
- id: f77exec
  doc: =           Specify the path to F77 compiler
  type: boolean
  inputBinding:
    prefix: --f77exec
- id: f90exec
  doc: =           Specify the path to F90 compiler
  type: boolean
  inputBinding:
    prefix: --f90exec
- id: f77_flags
  doc: =          Specify F77 compiler flags
  type: boolean
  inputBinding:
    prefix: --f77flags
- id: f90_flags
  doc: =          Specify F90 compiler flags
  type: boolean
  inputBinding:
    prefix: --f90flags
- id: opt
  doc: =               Specify optimization flags
  type: boolean
  inputBinding:
    prefix: --opt
- id: arch
  doc: =              Specify architecture specific optimization flags
  type: boolean
  inputBinding:
    prefix: --arch
- id: no_opt
  doc: Compile without optimization
  type: boolean
  inputBinding:
    prefix: --noopt
- id: noarch
  doc: Compile without arch-dependent optimization
  type: boolean
  inputBinding:
    prefix: --noarch
- id: debug
  doc: Compile with debugging information
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- f2py
