class: CommandLineTool
id: ../../../jlink.cwl
inputs:
- id: in_add_modules
  doc: '[,<mod>...]    Root modules to resolve'
  type: string
  inputBinding:
    prefix: --add-modules
- id: in_bind_services
  doc: "Link in service provider modules and\ntheir dependences"
  type: boolean
  inputBinding:
    prefix: --bind-services
- id: in_compress
  doc: "Enable compression of resources:\nLevel 0: No compression\nLevel 1: Constant\
    \ string sharing\nLevel 2: ZIP"
  type: long
  inputBinding:
    prefix: --compress
- id: in_disable_plugin
  doc: Disable the plugin mentioned
  type: string
  inputBinding:
    prefix: --disable-plugin
- id: in_endian
  doc: "Byte order of generated jimage\n(default:native)"
  type: string
  inputBinding:
    prefix: --endian
- id: in_ignore_signing_information
  doc: "Suppress a fatal error when signed\nmodular JARs are linked in the image.\n\
    The signature related files of the\nsigned modular JARs are not copied to\nthe\
    \ runtime image."
  type: boolean
  inputBinding:
    prefix: --ignore-signing-information
- id: in_launcher
  doc: "=<module>[/<mainclass>]\nAdd a launcher command of the given\nname for the\
    \ module and the main class\nif specified"
  type: string
  inputBinding:
    prefix: --launcher
- id: in_limit_modules
  doc: '[,<mod>...]  Limit the universe of observable'
  type: string
  inputBinding:
    prefix: --limit-modules
- id: in_module_path
  doc: Module path
  type: File
  inputBinding:
    prefix: --module-path
- id: in_no_header_files
  doc: Exclude include header files
  type: boolean
  inputBinding:
    prefix: --no-header-files
- id: in_no_man_pages
  doc: Exclude man pages
  type: boolean
  inputBinding:
    prefix: --no-man-pages
- id: in_output
  doc: Location of output path
  type: File
  inputBinding:
    prefix: --output
- id: in_post_process_path
  doc: Post process an existing image
  type: File
  inputBinding:
    prefix: --post-process-path
- id: in_resources_last_sorter
  doc: The last plugin allowed to sort
  type: string
  inputBinding:
    prefix: --resources-last-sorter
- id: in_strip_debug
  doc: Strip debug information
  type: boolean
  inputBinding:
    prefix: --strip-debug
- id: in_suggest_providers
  doc: "[<name>,...]  Suggest providers that implement the\ngiven service types from\
    \ the module path"
  type: boolean
  inputBinding:
    prefix: --suggest-providers
- id: in_verbose
  doc: Enable verbose tracing
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Location of output path
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- jlink
