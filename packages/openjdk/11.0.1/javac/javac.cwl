class: CommandLineTool
id: ../../../javac.cwl
inputs:
- id: in_a_key
  doc: '[=value]                Options to pass to annotation processors'
  type: boolean
  inputBinding:
    prefix: -Akey
- id: in_add_modules
  doc: "(,<module>)*\nRoot modules to resolve in addition to the initial modules,\
    \ or all modules\non the module path if <module> is ALL-MODULE-PATH."
  type: File
  inputBinding:
    prefix: --add-modules
- id: in_boot_class_path
  doc: Override location of bootstrap class files
  type: File
  inputBinding:
    prefix: --boot-class-path
- id: in_class_path
  doc: Specify where to find user class files and annotation processors
  type: File
  inputBinding:
    prefix: --class-path
- id: in_specify_where_place_generated_class_files
  doc: Specify where to place generated class files
  type: Directory
  inputBinding:
    prefix: -d
- id: in_deprecation
  doc: Output source locations where deprecated APIs are used
  type: boolean
  inputBinding:
    prefix: -deprecation
- id: in_enable_preview
  doc: Enable preview language features. To be used in conjunction with either -source
    or --release.
  type: boolean
  inputBinding:
    prefix: --enable-preview
- id: in_encoding
  doc: Specify character encoding used by source files
  type: string
  inputBinding:
    prefix: -encoding
- id: in_endorsed_dirs
  doc: Override location of endorsed standards path
  type: File
  inputBinding:
    prefix: -endorseddirs
- id: in_ext_dirs
  doc: Override location of installed extensions
  type: string
  inputBinding:
    prefix: -extdirs
- id: in_specify_where_place_generated
  doc: Specify where to place generated native header files
  type: Directory
  inputBinding:
    prefix: -h
- id: in_help_extra
  doc: Print help on extra options
  type: boolean
  inputBinding:
    prefix: --help-extra
- id: in_implicit
  doc: ":{none,class}\nSpecify whether or not to generate class files for implicitly\
    \ referenced files"
  type: boolean
  inputBinding:
    prefix: -implicit
- id: in_flag_pass_flag
  doc: <flag>                     Pass <flag> directly to the runtime system
  type: boolean
  inputBinding:
    prefix: -J
- id: in_limit_modules
  doc: "(,<module>)*\nLimit the universe of observable modules"
  type: string
  inputBinding:
    prefix: --limit-modules
- id: in_module
  doc: Compile only the specified module, check timestamps
  type: string
  inputBinding:
    prefix: --module
- id: in_module_path
  doc: Specify where to find application modules
  type: File
  inputBinding:
    prefix: --module-path
- id: in_module_source_path
  doc: Specify where to find input source files for multiple modules
  type: File
  inputBinding:
    prefix: --module-source-path
- id: in_module_version
  doc: Specify version of modules that are being compiled
  type: string
  inputBinding:
    prefix: --module-version
- id: in_nowarn
  doc: Generate no warnings
  type: boolean
  inputBinding:
    prefix: -nowarn
- id: in_parameters
  doc: Generate metadata for reflection on method parameters
  type: boolean
  inputBinding:
    prefix: -parameters
- id: in_proc
  doc: ":{none,only}\nControl whether annotation processing and/or compilation is\
    \ done."
  type: boolean
  inputBinding:
    prefix: -proc
- id: in_processor
  doc: "[,<class2>,<class3>...]\nNames of the annotation processors to run; bypasses\
    \ default discovery process"
  type: long
  inputBinding:
    prefix: -processor
- id: in_processor_module_path
  doc: Specify a module path where to find annotation processors
  type: File
  inputBinding:
    prefix: --processor-module-path
- id: in_processor_path
  doc: Specify where to find annotation processors
  type: File
  inputBinding:
    prefix: --processor-path
- id: in_profile
  doc: Check that API used is available in the specified profile
  type: string
  inputBinding:
    prefix: -profile
- id: in_release
  doc: 'Compile for a specific VM version. Supported targets: 6, 7, 8, 9, 10, 11'
  type: long
  inputBinding:
    prefix: --release
- id: in_specify_where_place_generated_source_files
  doc: Specify where to place generated source files
  type: Directory
  inputBinding:
    prefix: -s
- id: in_source
  doc: Provide source compatibility with specified release
  type: string
  inputBinding:
    prefix: -source
- id: in_source_path
  doc: Specify where to find input source files
  type: File
  inputBinding:
    prefix: --source-path
- id: in_system
  doc: '|none          Override location of system modules'
  type: string
  inputBinding:
    prefix: --system
- id: in_target
  doc: Generate class files for specific VM version
  type: string
  inputBinding:
    prefix: -target
- id: in_upgrade_module_path
  doc: Override location of upgradeable modules
  type: File
  inputBinding:
    prefix: --upgrade-module-path
- id: in_verbose
  doc: Output messages about what the compiler is doing
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_werror
  doc: Terminate compilation if warnings occur
  type: boolean
  inputBinding:
    prefix: -Werror
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- javac
