class: CommandLineTool
id: mkbundle.cwl
inputs:
- id: in_config
  doc: Bundle system config file `F'
  type: File?
  inputBinding:
    prefix: --config
- id: in_config_dir
  doc: Set MONO_CFG_DIR to `D'
  type: string?
  inputBinding:
    prefix: --config-dir
- id: in_deps
  doc: Turns on automatic dependency embedding (default on simple)
  type: boolean?
  inputBinding:
    prefix: --deps
- id: in_adds_path_search
  doc: Adds `path' to the search path for assemblies
  type: File?
  inputBinding:
    prefix: -L
- id: in_machine_config
  doc: Use the given file as the machine.config for the application.
  type: File?
  inputBinding:
    prefix: --machine-config
- id: in_specifies_output_filename
  doc: Specifies output filename
  type: File?
  inputBinding:
    prefix: -o
- id: in_nodeps
  doc: Turns off automatic dependency embedding (default on custom)
  type: boolean?
  inputBinding:
    prefix: --nodeps
- id: in_skip_scan
  doc: Skip scanning assemblies that could not be loaded (but still embed them).
  type: boolean?
  inputBinding:
    prefix: --skip-scan
- id: in_simple
  doc: "Simple mode does not require a C toolchain and can cross compile\n--cross\
    \ TARGET      Generates a binary for the given TARGET\n--local-targets     Lists\
    \ locally available targets\n--list-targets      Lists available targets on the\
    \ remote server\n--options OPTIONS   Embed the specified Mono command line options\
    \ on target\n--runtime RUNTIME   Manually specifies the Mono runtime to use\n\
    --target-server URL Specified a server to download targets from, default is https://download.mono-project.com/runtimes/raw/"
  type: boolean?
  inputBinding:
    prefix: --simple
- id: in_custom
  doc: "Builds a custom launcher, options for --custom\n-c                  Produce\
    \ stub only, do not compile\n-oo obj             Specifies output filename for\
    \ helper object file\n--dos2unix[=true|false]\nWhen no value provided, or when\
    \ `true` specified\n`dos2unix` will be invoked to convert paths on Windows.\n\
    When `--dos2unix=false` used, dos2unix is NEVER used.\n--keeptemp          Keeps\
    \ the temporary files\n--static            Statically link to mono libs\n--nomain\
    \            Don't include a main() function, for libraries\n--custom-main C \
    \    Link the specified compilation unit (.c or .obj) with entry point/init code\n\
    -z                  Compress the assemblies before embedding.\n--static-ctor ctor\
    \  Add a constructor call to the supplied function.\nYou need zlib development\
    \ headers and libraries.\n"
  type: File?
  inputBinding:
    prefix: --custom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specifies_output_filename
  doc: Specifies output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_specifies_output_filename)
- id: out_custom
  doc: "Builds a custom launcher, options for --custom\n-c                  Produce\
    \ stub only, do not compile\n-oo obj             Specifies output filename for\
    \ helper object file\n--dos2unix[=true|false]\nWhen no value provided, or when\
    \ `true` specified\n`dos2unix` will be invoked to convert paths on Windows.\n\
    When `--dos2unix=false` used, dos2unix is NEVER used.\n--keeptemp          Keeps\
    \ the temporary files\n--static            Statically link to mono libs\n--nomain\
    \            Don't include a main() function, for libraries\n--custom-main C \
    \    Link the specified compilation unit (.c or .obj) with entry point/init code\n\
    -z                  Compress the assemblies before embedding.\n--static-ctor ctor\
    \  Add a constructor call to the supplied function.\nYou need zlib development\
    \ headers and libraries.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_custom)
hints: []
cwlVersion: v1.1
baseCommand:
- mkbundle
