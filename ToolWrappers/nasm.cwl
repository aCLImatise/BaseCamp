class: CommandLineTool
id: nasm.cwl
inputs:
- id: in_assemble_tasm_mode
  doc: assemble in SciTech TASM compatible mode
  type: boolean
  inputBinding:
    prefix: -t
- id: in_generate_debug_information
  doc: generate debug information in selected format
  type: boolean
  inputBinding:
    prefix: -g
- id: in_e_preprocess_only
  doc: (or -e)  preprocess only (writes output to stdout by default)
  type: boolean
  inputBinding:
    prefix: -E
- id: in_preprocess_assemble_only
  doc: don't preprocess (assemble only)
  type: boolean
  inputBinding:
    prefix: -a
- id: in_generate_makefile_dependencies
  doc: generate Makefile dependencies on stdout
  type: boolean
  inputBinding:
    prefix: -M
- id: in_mg
  doc: d:o, missing files assumed generated
  type: boolean
  inputBinding:
    prefix: -MG
- id: in_mf
  doc: set Makefile dependency file
  type: File
  inputBinding:
    prefix: -MF
- id: in_md
  doc: assemble and generate dependencies
  type: File
  inputBinding:
    prefix: -MD
- id: in_mt
  doc: dependency target name
  type: File
  inputBinding:
    prefix: -MT
- id: in_mq
  doc: dependency target name (quoted)
  type: File
  inputBinding:
    prefix: -MQ
- id: in_mp
  doc: emit phony target
  type: boolean
  inputBinding:
    prefix: -MP
- id: in_file_redirect_messages
  doc: <file>    redirect error messages to file
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_redirect_error_messages
  doc: redirect error messages to stdout
  type: boolean
  inputBinding:
    prefix: -s
- id: in_select_debugging_format
  doc: select a debugging format
  type: string
  inputBinding:
    prefix: -F
- id: in_write_output_outfile
  doc: write output to an outfile
  type: string
  inputBinding:
    prefix: -o
- id: in_select_output_format
  doc: select an output format
  type: string
  inputBinding:
    prefix: -f
- id: in_write_listing_listfile
  doc: write listing to a listfile
  type: File
  inputBinding:
    prefix: -l
- id: in_path_adds_pathname
  doc: <path>    adds a pathname to the include file path
  type: boolean
  inputBinding:
    prefix: -I
- id: in_digit_optimize_branch
  doc: <digit>   optimize branch offsets
  type: boolean
  inputBinding:
    prefix: -O
- id: in_o_zero
  doc: ': No optimization'
  type: boolean
  inputBinding:
    prefix: -O0
- id: in_o_one
  doc: ': Minimal optimization'
  type: boolean
  inputBinding:
    prefix: -O1
- id: in_ox
  doc: ': Multipass optimization (default)'
  type: boolean
  inputBinding:
    prefix: -Ox
- id: in_file_preincludes_file
  doc: <file>    pre-includes a file
  type: boolean
  inputBinding:
    prefix: -P
- id: in_macro_predefines_macro
  doc: <macro>[=<value>] pre-defines a macro
  type: boolean
  inputBinding:
    prefix: -D
- id: in_macro_undefines_macro
  doc: <macro>   undefines a macro
  type: boolean
  inputBinding:
    prefix: -U
- id: in_format_specifies_gnu
  doc: <format>  specifies error reporting format (gnu or vc)
  type: boolean
  inputBinding:
    prefix: -X
- id: in_foo_enables_wfoo
  doc: +foo      enables warning foo (equiv. -Wfoo)
  type: boolean
  inputBinding:
    prefix: -w
- id: in_w_foo
  doc: disable warning foo (equiv. -Wno-foo)
  type: boolean
  inputBinding:
    prefix: -w-foo
- id: in_postfix
  doc: "this options prepend or append the given argument to all\nextern and global\
    \ variables"
  type: boolean
  inputBinding:
    prefix: --postfix
- id: in_at
  doc: ''
  type: string
  inputBinding:
    prefix: -@
- id: in_error
  doc: treat warnings as errors (default off)
  type: string
  inputBinding:
    position: 0
- id: in_macro_params
  doc: macro calls with wrong parameter count (default on)
  type: string
  inputBinding:
    position: 1
- id: in_macro_self_ref
  doc: cyclic macro references (default off)
  type: string
  inputBinding:
    position: 2
- id: in_macro_defaults
  doc: macros with more default than optional parameters (default on)
  type: string
  inputBinding:
    position: 3
- id: in_orphan_labels
  doc: labels alone on lines without trailing `:' (default on)
  type: string
  inputBinding:
    position: 4
- id: in_number_overflow
  doc: numeric constant does not fit (default on)
  type: long
  inputBinding:
    position: 5
- id: in_gnu_elf_extensions
  doc: using 8- or 16-bit relocation in ELF32, a GNU extension (default off)
  type: string
  inputBinding:
    position: 6
- id: in_float_overflow
  doc: floating point overflow (default on)
  type: double
  inputBinding:
    position: 7
- id: in_float_de_norm
  doc: floating point denormal (default off)
  type: double
  inputBinding:
    position: 8
- id: in_float_underflow
  doc: floating point underflow (default off)
  type: double
  inputBinding:
    position: 9
- id: in_float_too_long
  doc: too many digits in floating-point number (default on)
  type: double
  inputBinding:
    position: 10
- id: in_user
  doc: '%warning directives (default on)'
  type: string
  inputBinding:
    position: 11
- id: in_lock
  doc: lock prefix on unlockable instructions (default on)
  type: string
  inputBinding:
    position: 12
- id: in_hle
  doc: invalid hle prefixes (default on)
  type: string
  inputBinding:
    position: 13
- id: in_bnd
  doc: invalid bnd prefixes (default on)
  type: string
  inputBinding:
    position: 14
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nasm
