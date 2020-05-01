#!/usr/bin/env cwl-runner

baseCommand:
- f2py
class: CommandLineTool
cwlVersion: v1.0
id: f2py
inputs:
- doc: "[..] List system resources found by system_info.py. See also --link-<resource>\
    \ switch below. [..] is optional list of resources names. E.g. try 'f2py --help-link\
    \ lapack_opt'."
  id: help_link
  inputBinding:
    prefix: --help-link
  type: boolean
- doc: Run quietly.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Run with extra verbosity.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Print f2py version ID and exit.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: =         Specify Fortran compiler type by vendor
  id: f_compiler
  inputBinding:
    prefix: --fcompiler
  type: boolean
- doc: =          Specify C compiler type (as defined by distutils)
  id: compiler
  inputBinding:
    prefix: --compiler
  type: boolean
- doc: List available Fortran compilers and exit
  id: help_f_compiler
  inputBinding:
    prefix: --help-fcompiler
  type: boolean
- doc: =           Specify the path to F77 compiler
  id: f77exec
  inputBinding:
    prefix: --f77exec
  type: boolean
- doc: =           Specify the path to F90 compiler
  id: f90exec
  inputBinding:
    prefix: --f90exec
  type: boolean
- doc: =          Specify F77 compiler flags
  id: f77_flags
  inputBinding:
    prefix: --f77flags
  type: boolean
- doc: =          Specify F90 compiler flags
  id: f90_flags
  inputBinding:
    prefix: --f90flags
  type: boolean
- doc: =               Specify optimization flags
  id: opt
  inputBinding:
    prefix: --opt
  type: boolean
- doc: =              Specify architecture specific optimization flags
  id: arch
  inputBinding:
    prefix: --arch
  type: boolean
- doc: Compile without optimization
  id: no_opt
  inputBinding:
    prefix: --noopt
  type: boolean
- doc: Compile without arch-dependent optimization
  id: noarch
  inputBinding:
    prefix: --noarch
  type: boolean
- doc: Compile with debugging information
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
