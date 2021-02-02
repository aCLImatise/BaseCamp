class: CommandLineTool
id: nest_config.cwl
inputs:
- id: in_prefix
  doc: NEST install prefix for architecture-independent files
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_exec_prefix
  doc: NEST install prefix for architecture-dependent files
  type: boolean
  inputBinding:
    prefix: --exec-prefix
- id: in_libs
  doc: print library linking information
  type: boolean
  inputBinding:
    prefix: --libs
- id: in_cflags
  doc: print pre-processor and compiler flags
  type: boolean
  inputBinding:
    prefix: --cflags
- id: in_includes
  doc: print includes
  type: boolean
  inputBinding:
    prefix: --includes
- id: in_compiler
  doc: print the compiler used to compile NEST
  type: boolean
  inputBinding:
    prefix: --compiler
- id: in_static_libraries
  doc: print "ON" if configured for static libraries, "OFF" otherwise
  type: boolean
  inputBinding:
    prefix: --static-libraries
- id: in_docdir
  doc: print the relative path (to prefix) to the installed documentation
  type: boolean
  inputBinding:
    prefix: --docdir
- id: in_datadir
  doc: print the relative path (to prefix) to the installed data
  type: boolean
  inputBinding:
    prefix: --datadir
- id: in_libdir
  doc: print the relative path (to prefix) to the installed libraries
  type: boolean
  inputBinding:
    prefix: --libdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nest-config
