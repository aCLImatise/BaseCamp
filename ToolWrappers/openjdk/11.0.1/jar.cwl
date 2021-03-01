class: CommandLineTool
id: jar.cwl
inputs:
- id: in_create
  doc: Create the archive
  type: boolean?
  inputBinding:
    prefix: --create
- id: in_generate_index
  doc: Generate index information for the specified jar
  type: File?
  inputBinding:
    prefix: --generate-index
- id: in_update
  doc: Update an existing jar archive
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_extract
  doc: Extract named (or all) files from the archive
  type: boolean?
  inputBinding:
    prefix: --extract
- id: in_describe_module
  doc: Print the module descriptor, or automatic module name
  type: boolean?
  inputBinding:
    prefix: --describe-module
- id: in_change_include_file
  doc: "Change to the specified directory and include the\nfollowing file"
  type: File?
  inputBinding:
    prefix: -C
- id: in_file
  doc: "The archive file name. When omitted, either stdin or\nstdout is used based\
    \ on the operation"
  type: File?
  inputBinding:
    prefix: --file
- id: in_release
  doc: "Places all following files in a versioned directory\nof the jar (i.e. META-INF/versions/VERSION/)"
  type: Directory?
  inputBinding:
    prefix: --release
- id: in_verbose
  doc: Generate verbose output on standard output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_main_class
  doc: "The application entry point for stand-alone\napplications bundled into a modular,\
    \ or executable,\njar archive"
  type: string?
  inputBinding:
    prefix: --main-class
- id: in_manifest
  doc: "Include the manifest information from the given\nmanifest file"
  type: File?
  inputBinding:
    prefix: --manifest
- id: in_no_manifest
  doc: Do not create a manifest file for the entries
  type: boolean?
  inputBinding:
    prefix: --no-manifest
- id: in_module_version
  doc: "The module version, when creating a modular\njar, or updating a non-modular\
    \ jar"
  type: string?
  inputBinding:
    prefix: --module-version
- id: in_hash_modules
  doc: "Compute and record the hashes of modules\nmatched by the given pattern and\
    \ that depend upon\ndirectly or indirectly on a modular jar being\ncreated or\
    \ a non-modular jar being updated"
  type: string?
  inputBinding:
    prefix: --hash-modules
- id: in_module_path
  doc: "Location of module dependence for generating\nthe hash"
  type: boolean?
  inputBinding:
    prefix: --module-path
- id: in_no_compress
  doc: Store only; use no ZIP compression
  type: boolean?
  inputBinding:
    prefix: --no-compress
- id: in_help_extra
  doc: Give help on extra options
  type: boolean?
  inputBinding:
    prefix: --help-extra
- id: in_archives
  doc: -t, --list                 List the table of contents for the archive
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
- jar
