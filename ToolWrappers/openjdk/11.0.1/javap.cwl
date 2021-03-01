class: CommandLineTool
id: javap.cwl
inputs:
- id: in_version
  doc: Version information
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_verbose
  doc: Print additional information
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_print_line_number
  doc: Print line number and local variable tables
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_public
  doc: Show only public classes and members
  type: boolean?
  inputBinding:
    prefix: -public
- id: in_protected
  doc: Show protected/public classes and members
  type: boolean?
  inputBinding:
    prefix: -protected
- id: in_package
  doc: "Show package/protected/public classes\nand members (default)"
  type: boolean?
  inputBinding:
    prefix: -package
- id: in_private
  doc: Show all classes and members
  type: boolean?
  inputBinding:
    prefix: -private
- id: in_disassemble_the_code
  doc: Disassemble the code
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_print_internal_type
  doc: Print internal type signatures
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sysinfo
  doc: "Show system info (path, size, date, MD5 hash)\nof class being processed"
  type: boolean?
  inputBinding:
    prefix: -sysinfo
- id: in_constants
  doc: Show final constants
  type: boolean?
  inputBinding:
    prefix: -constants
- id: in_module
  doc: Specify module containing classes to be disassembled
  type: string?
  inputBinding:
    prefix: --module
- id: in_module_path
  doc: Specify where to find application modules
  type: File?
  inputBinding:
    prefix: --module-path
- id: in_system
  doc: Specify where to find system modules
  type: string?
  inputBinding:
    prefix: --system
- id: in_class_path
  doc: Specify where to find user class files
  type: File?
  inputBinding:
    prefix: --class-path
- id: in_classpath
  doc: Specify where to find user class files
  type: File?
  inputBinding:
    prefix: -classpath
- id: in_cp
  doc: Specify where to find user class files
  type: File?
  inputBinding:
    prefix: -cp
- id: in_boot_classpath
  doc: Override location of bootstrap class files
  type: File?
  inputBinding:
    prefix: -bootclasspath
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_classes
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- javap
