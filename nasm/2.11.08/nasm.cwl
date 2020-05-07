class: CommandLineTool
id: nasm.cwl
inputs:
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
- id: t
  doc: assemble in SciTech TASM compatible mode
  type: boolean
  inputBinding:
    prefix: -t
- id: g
  doc: generate debug information in selected format
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: (or -e)  preprocess only (writes output to stdout by default)
  type: boolean
  inputBinding:
    prefix: -E
- id: a
  doc: don't preprocess (assemble only)
  type: boolean
  inputBinding:
    prefix: -a
- id: m
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
- id: z
  doc: <file>    redirect error messages to file
  type: boolean
  inputBinding:
    prefix: -Z
- id: s
  doc: redirect error messages to stdout
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: select a debugging format
  type: string
  inputBinding:
    prefix: -F
- id: o
  doc: write output to an outfile
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: select an output format
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: write listing to a listfile
  type: string
  inputBinding:
    prefix: -l
- id: i
  doc: <path>    adds a pathname to the include file path
  type: boolean
  inputBinding:
    prefix: -I
- id: o
  doc: '<digit>   optimize branch offsets -O0: No optimization -O1: Minimal optimization
    -Ox: Multipass optimization (default)'
  type: boolean
  inputBinding:
    prefix: -O
- id: p
  doc: <file>    pre-includes a file
  type: boolean
  inputBinding:
    prefix: -P
- id: d
  doc: <macro>[=<value>] pre-defines a macro
  type: boolean
  inputBinding:
    prefix: -D
- id: u
  doc: <macro>   undefines a macro
  type: boolean
  inputBinding:
    prefix: -U
- id: x
  doc: <format>  specifies error reporting format (gnu or vc)
  type: boolean
  inputBinding:
    prefix: -X
- id: w
  doc: +foo      enables warning foo (equiv. -Wfoo)
  type: boolean
  inputBinding:
    prefix: -w
- id: w_foo
  doc: disable warning foo (equiv. -Wno-foo)
  type: boolean
  inputBinding:
    prefix: -w-foo
outputs: []
cwlVersion: v1.1
baseCommand:
- nasm
