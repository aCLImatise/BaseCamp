class: CommandLineTool
id: jmod.cwl
inputs:
- id: in_class_path
  doc: Application jar files|dir containing
  type: File?
  inputBinding:
    prefix: --class-path
- id: in_config
  doc: Location of user-editable config files
  type: File?
  inputBinding:
    prefix: --config
- id: in_dir
  doc: Target directory for extract
  type: File?
  inputBinding:
    prefix: --dir
- id: in_dry_run
  doc: Dry run of hash mode
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_exclude
  doc: "Exclude files matching the supplied\ncomma separated pattern list, each\n\
    element using one the following\nforms: <glob-pattern>, glob:<glob-\npattern>\
    \ or regex:<regex-pattern>"
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_hash_modules
  doc: "Compute and record hashes to tie a\npackaged module with modules\nmatching\
    \ the given <regex-pattern>\nand depending upon it directly or\nindirectly. The\
    \ hashes are recorded\nin the JMOD file being created, or a\nJMOD file or modular\
    \ JAR on the\nmodule path specified the jmod hash\ncommand."
  type: File?
  inputBinding:
    prefix: --hash-modules
- id: in_header_files
  doc: Location of header files
  type: File?
  inputBinding:
    prefix: --header-files
- id: in_help_extra
  doc: Print help on extra options
  type: boolean?
  inputBinding:
    prefix: --help-extra
- id: in_legal_notices
  doc: Location of legal notices
  type: File?
  inputBinding:
    prefix: --legal-notices
- id: in_libs
  doc: Location of native libraries
  type: File?
  inputBinding:
    prefix: --libs
- id: in_main_class
  doc: '<String: class-name>   Main class'
  type: boolean?
  inputBinding:
    prefix: --main-class
- id: in_man_pages
  doc: Location of man pages
  type: File?
  inputBinding:
    prefix: --man-pages
- id: in_module_version
  doc: Module version
  type: string?
  inputBinding:
    prefix: --module-version
- id: in_module_path
  doc: Module path
  type: File?
  inputBinding:
    prefix: --module-path
- id: in_target_platform
  doc: "<String: target-  Target platform\nplatform>"
  type: boolean?
  inputBinding:
    prefix: --target-platform
- id: in_create
  doc: '- Creates a new jmod archive'
  type: string
  inputBinding:
    position: 0
- id: in_extract
  doc: '- Extracts all the files from the archive'
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: '- Prints the names of all the entries'
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: '- Prints the module details'
  type: string
  inputBinding:
    position: 3
- id: in_hash
  doc: '- Records hashes of tied modules.'
  type: string
  inputBinding:
    position: 4
- id: in_option
  doc: 'Description                           '
  type: string
  inputBinding:
    position: 5
- id: in_classes
  doc: '--cmds <path>                       Location of native commands           '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jmod
