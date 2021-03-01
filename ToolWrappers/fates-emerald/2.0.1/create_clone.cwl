class: CommandLineTool
id: create_clone.cwl
inputs:
- id: in_debug
  doc: Print debug information (very verbose) to file /create_clone.log
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Add additional context (time and file) to log messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Print only warnings and error messages
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_case
  doc: "(required) Specify a new case name. If not a full pathname,\nthe new case\
    \ will be created under then current working directory."
  type: Directory?
  inputBinding:
    prefix: --case
- id: in_clone
  doc: "(required) Specify a case to be cloned. If not a full pathname,\nthe case\
    \ to be cloned is assumed to be under then current working directory."
  type: Directory?
  inputBinding:
    prefix: --clone
- id: in_ensemble
  doc: "clone an ensemble of cases, the case name argument must end in an integer.\n\
    for example: ./create_clone --clone case.template --case case.001 --ensemble 4\n\
    will create case.001, case.002, case.003, case.004 from existing case.template"
  type: long?
  inputBinding:
    prefix: --ensemble
- id: in_user_mods_dir
  doc: "Full pathname to a directory containing any combination of user_nl_* files\n\
    and shell_commands script (typically containing xmlchange commands).\nThe directory\
    \ can also contain an SourceMods/ directory with the same structure\nas would\
    \ be found in a case directory. If this argument is used in conjunction\nwith\
    \ the --keepexe flag, then no changes will be permitted to the env_build.xml\n\
    in the newly created case directory."
  type: Directory?
  inputBinding:
    prefix: --user-mods-dir
- id: in_keep_exe
  doc: "Sets EXEROOT to point to original build. It is HIGHLY recommended\nthat the\
    \ original case be built BEFORE cloning it if the --keepexe flag is specfied.\n\
    This flag will make the SourceMods/ directory in the newly created case directory\
    \ a\nsymbolic link to the SourceMods/ directory in the original case directory."
  type: boolean?
  inputBinding:
    prefix: --keepexe
- id: in_mach_dir
  doc: "Specify the locations of the Machines directory, other than the default.\n\
    The default is CIMEROOT/machines."
  type: Directory?
  inputBinding:
    prefix: --mach-dir
- id: in_project
  doc: "Specify a project id for the case (optional).\nUsed for accounting and directory\
    \ permissions when on a batch system.\nThe default is user or machine specified\
    \ by PROJECT.\nAccounting (only) may be overridden by user or machine specified\
    \ CHARGE_ACCOUNT."
  type: Directory?
  inputBinding:
    prefix: --project
- id: in_cime_output_root
  doc: "Specify the root output directory. The default is the setting in the original\n\
    case directory. NOTE: create_clone will fail if this directory is not writable.\n"
  type: Directory?
  inputBinding:
    prefix: --cime-output-root
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_cime_output_root
  doc: "Specify the root output directory. The default is the setting in the original\n\
    case directory. NOTE: create_clone will fail if this directory is not writable.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_cime_output_root)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fates-emerald:2.0.1
cwlVersion: v1.1
baseCommand:
- create_clone
