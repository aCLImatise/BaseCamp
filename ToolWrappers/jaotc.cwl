class: CommandLineTool
id: jaotc.cwl
inputs:
- id: in_output
  doc: Output file name
  type: File
  inputBinding:
    prefix: --output
- id: in_class_name
  doc: List of classes to compile
  type: string
  inputBinding:
    prefix: --class-name
- id: in_jar
  doc: List of jar files to compile
  type: string
  inputBinding:
    prefix: --jar
- id: in_module
  doc: List of modules to compile
  type: string
  inputBinding:
    prefix: --module
- id: in_directory
  doc: List of directories where to search for files to compile
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_search_path
  doc: List of directories where to search for specified files
  type: File
  inputBinding:
    prefix: --search-path
- id: in_compile_commands
  doc: Name of file with compile commands
  type: File
  inputBinding:
    prefix: --compile-commands
- id: in_compile_for_tiered
  doc: Generate profiling code for tiered compilation
  type: boolean
  inputBinding:
    prefix: --compile-for-tiered
- id: in_compile_with_assertions
  doc: Compile with java assertions
  type: boolean
  inputBinding:
    prefix: --compile-with-assertions
- id: in_compile_threads
  doc: Number of compilation threads to be used
  type: long
  inputBinding:
    prefix: --compile-threads
- id: in_ignore_errors
  doc: Ignores all exceptions thrown during class loading
  type: boolean
  inputBinding:
    prefix: --ignore-errors
- id: in_exit_on_error
  doc: Exit on compilation errors
  type: boolean
  inputBinding:
    prefix: --exit-on-error
- id: in_info
  doc: Print information during compilation
  type: boolean
  inputBinding:
    prefix: --info
- id: in_verbose
  doc: Print verbose information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Print debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_linker_path
  doc: Full path to linker executable
  type: boolean
  inputBinding:
    prefix: --linker-path
- id: in_flag_pass_flag
  doc: <flag>                   Pass <flag> directly to the runtime system
  type: boolean
  inputBinding:
    prefix: -J
- id: in_list
  doc: "A : separated list of class names, modules, jar files\nor directories which\
    \ contain class files."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file name
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- jaotc
