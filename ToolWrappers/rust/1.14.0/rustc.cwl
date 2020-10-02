class: CommandLineTool
id: rustc.cwl
inputs:
- id: in_cfg
  doc: Configure the compilation environment
  type: string
  inputBinding:
    prefix: --cfg
- id: in_path_add_directory
  doc: "[KIND=]PATH      Add a directory to the library search path. The\noptional\
    \ KIND can be one of dependency, crate, native,\nframework or all (the default)."
  type: boolean
  inputBinding:
    prefix: -L
- id: in_name_link_crates
  doc: "[KIND=]NAME      Link the generated crate(s) to the specified native\nlibrary\
    \ NAME. The optional KIND can be one of static,\ndylib, or framework. If omitted,\
    \ dylib is assumed."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_crate_type
  doc: "[bin|lib|rlib|dylib|cdylib|staticlib]\nComma separated list of types of crates\
    \ for the\ncompiler to emit"
  type: boolean
  inputBinding:
    prefix: --crate-type
- id: in_crate_name
  doc: Specify the name of the crate being built
  type: string
  inputBinding:
    prefix: --crate-name
- id: in_emit
  doc: "[asm|llvm-bc|llvm-ir|obj|link|dep-info]\nComma separated list of types of\
    \ output for the\ncompiler to emit"
  type: boolean
  inputBinding:
    prefix: --emit
- id: in_print
  doc: "[crate-name|file-names|sysroot|cfg|target-list|target-cpus|target-features|relocation-models|code-models]\n\
    Comma separated list of compiler information to print\non stdout"
  type: boolean
  inputBinding:
    prefix: --print
- id: in_equivalent_c_debuginfo
  doc: Equivalent to -C debuginfo=2
  type: boolean
  inputBinding:
    prefix: -g
- id: in_equivalent_to_c
  doc: Equivalent to -C opt-level=2
  type: boolean
  inputBinding:
    prefix: -O
- id: in_write_output_filename
  doc: Write output to <filename>
  type: File
  inputBinding:
    prefix: -o
- id: in_out_dir
  doc: Write output to compiler-chosen filename in <dir>
  type: File
  inputBinding:
    prefix: --out-dir
- id: in_explain
  doc: Provide a detailed explanation of an error message
  type: string
  inputBinding:
    prefix: --explain
- id: in_test
  doc: Build a test harness
  type: boolean
  inputBinding:
    prefix: --test
- id: in_target
  doc: Target triple for which the code is compiled
  type: string
  inputBinding:
    prefix: --target
- id: in_warn
  doc: Set lint warnings
  type: string
  inputBinding:
    prefix: --warn
- id: in_allow
  doc: Set lint allowed
  type: string
  inputBinding:
    prefix: --allow
- id: in_deny
  doc: Set lint denied
  type: string
  inputBinding:
    prefix: --deny
- id: in_forbid
  doc: Set lint forbidden
  type: string
  inputBinding:
    prefix: --forbid
- id: in_cap_lint_s
  doc: "Set the most restrictive lint level. More restrictive\nlints are capped at\
    \ this level"
  type: string
  inputBinding:
    prefix: --cap-lints
- id: in_codegen
  doc: "[=VALUE]\nSet a codegen option"
  type: string
  inputBinding:
    prefix: --codegen
- id: in_verbose
  doc: Use verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_print_internal_options
  doc: Print internal options for debugging rustc
  type: string
  inputBinding:
    prefix: -Z
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_filename
  doc: Write output to <filename>
  type: File
  outputBinding:
    glob: $(inputs.in_write_output_filename)
- id: out_out_dir
  doc: Write output to compiler-chosen filename in <dir>
  type: File
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- rustc
