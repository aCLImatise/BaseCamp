class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nasm.cwl
inputs:
- id: assemble_scitech_tasm
  doc: assemble in SciTech TASM compatible mode
  type: boolean
  inputBinding:
    prefix: -t
- id: generate_debug_information
  doc: generate debug information in selected format
  type: boolean
  inputBinding:
    prefix: -g
- id: e_preprocess_only
  doc: (or -e)  preprocess only (writes output to stdout by default)
  type: boolean
  inputBinding:
    prefix: -E
- id: preprocess_assemble_only
  doc: don't preprocess (assemble only)
  type: boolean
  inputBinding:
    prefix: -a
- id: generate_makefile_dependencies
  doc: generate Makefile dependencies on stdout
  type: boolean
  inputBinding:
    prefix: -M
- id: mg
  doc: d:o, missing files assumed generated
  type: boolean
  inputBinding:
    prefix: -MG
- id: mf
  doc: set Makefile dependency file
  type: File
  inputBinding:
    prefix: -MF
- id: md
  doc: assemble and generate dependencies
  type: File
  inputBinding:
    prefix: -MD
- id: mt
  doc: dependency target name
  type: File
  inputBinding:
    prefix: -MT
- id: mq
  doc: dependency target name (quoted)
  type: File
  inputBinding:
    prefix: -MQ
- id: mp
  doc: emit phony target
  type: boolean
  inputBinding:
    prefix: -MP
- id: file_redirect_messages
  doc: <file>    redirect error messages to file
  type: boolean
  inputBinding:
    prefix: -Z
- id: redirect_error_messages
  doc: redirect error messages to stdout
  type: boolean
  inputBinding:
    prefix: -s
- id: select_debugging_format
  doc: select a debugging format
  type: string
  inputBinding:
    prefix: -F
- id: write_output_outfile
  doc: write output to an outfile
  type: string
  inputBinding:
    prefix: -o
- id: select_output_format
  doc: select an output format
  type: string
  inputBinding:
    prefix: -f
- id: write_listing_listfile
  doc: write listing to a listfile
  type: string
  inputBinding:
    prefix: -l
- id: path_adds_pathname
  doc: <path>    adds a pathname to the include file path
  type: boolean
  inputBinding:
    prefix: -I
- id: digit_optimize_branch
  doc: '<digit>   optimize branch offsets -O0: No optimization -O1: Minimal optimization
    -Ox: Multipass optimization (default)'
  type: boolean
  inputBinding:
    prefix: -O
- id: file_preincludes_file
  doc: <file>    pre-includes a file
  type: boolean
  inputBinding:
    prefix: -P
- id: macro_predefines_macro
  doc: <macro>[=<value>] pre-defines a macro
  type: boolean
  inputBinding:
    prefix: -D
- id: macro_undefines_macro
  doc: <macro>   undefines a macro
  type: boolean
  inputBinding:
    prefix: -U
- id: format_specifies_gnu
  doc: <format>  specifies error reporting format (gnu or vc)
  type: boolean
  inputBinding:
    prefix: -X
- id: foo_enables_warning
  doc: +foo      enables warning foo (equiv. -Wfoo)
  type: boolean
  inputBinding:
    prefix: -w
- id: w_foo
  doc: disable warning foo (equiv. -Wno-foo)
  type: boolean
  inputBinding:
    prefix: -w-foo
- id: at
  doc: ''
  type: string
  inputBinding:
    prefix: -@
- id: error
  doc: treat warnings as errors (default off)
  type: string
  inputBinding:
    position: 0
- id: macro_params
  doc: macro calls with wrong parameter count (default on)
  type: string
  inputBinding:
    position: 1
- id: macro_self_ref
  doc: cyclic macro references (default off)
  type: string
  inputBinding:
    position: 2
- id: macro_defaults
  doc: macros with more default than optional parameters (default on)
  type: string
  inputBinding:
    position: 3
- id: orphan_labels
  doc: labels alone on lines without trailing `:' (default on)
  type: string
  inputBinding:
    position: 4
- id: number_overflow
  doc: numeric constant does not fit (default on)
  type: string
  inputBinding:
    position: 5
- id: gnu_elf_extensions
  doc: using 8- or 16-bit relocation in ELF32, a GNU extension (default off)
  type: string
  inputBinding:
    position: 6
- id: float_overflow
  doc: floating point overflow (default on)
  type: double
  inputBinding:
    position: 7
- id: float_de_norm
  doc: floating point denormal (default off)
  type: double
  inputBinding:
    position: 8
- id: float_underflow
  doc: floating point underflow (default off)
  type: double
  inputBinding:
    position: 9
- id: float_too_long
  doc: too many digits in floating-point number (default on)
  type: double
  inputBinding:
    position: 10
- id: user
  doc: '%warning directives (default on)'
  type: string
  inputBinding:
    position: 11
- id: lock
  doc: lock prefix on unlockable instructions (default on)
  type: string
  inputBinding:
    position: 12
- id: hle
  doc: invalid hle prefixes (default on)
  type: string
  inputBinding:
    position: 13
- id: bnd
  doc: invalid bnd prefixes (default on)
  type: string
  inputBinding:
    position: 14
outputs: []
cwlVersion: v1.1
baseCommand:
- nasm
