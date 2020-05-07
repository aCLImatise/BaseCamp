class: CommandLineTool
id: create_clone.cwl
inputs:
- id: debug
  doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/create_clone.log
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Add additional context (time and file) to log messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: silent
  doc: Print only warnings and error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: case
  doc: (required) Specify a new case name. If not a full pathname,  the new case will
    be created under then current working directory.
  type: string
  inputBinding:
    prefix: --case
- id: clone
  doc: (required) Specify a case to be cloned. If not a full pathname,  the case to
    be cloned is assumed to be under then current working directory.
  type: string
  inputBinding:
    prefix: --clone
- id: ensemble
  doc: 'clone an ensemble of cases, the case name argument must end in an integer.
    for example: ./create_clone --clone case.template --case case.001 --ensemble 4  will
    create case.001, case.002, case.003, case.004 from existing case.template'
  type: string
  inputBinding:
    prefix: --ensemble
- id: user_mods_dir
  doc: 'Full pathname to a directory containing any combination of user_nl_* files  and
    shell_commands script (typically containing xmlchange commands).  The directory
    can also contain an SourceMods/ directory with the same structure  as would be
    found in a case directory. If this argument is used in conjunction  with the --keepexe
    flag, then no changes will be permitted to the env_build.xml  in the newly created
    case directory. '
  type: string
  inputBinding:
    prefix: --user-mods-dir
- id: keep_exe
  doc: 'Sets EXEROOT to point to original build. It is HIGHLY recommended  that the
    original case be built BEFORE cloning it if the --keepexe flag is specfied.  This
    flag will make the SourceMods/ directory in the newly created case directory a  symbolic
    link to the SourceMods/ directory in the original case directory. '
  type: boolean
  inputBinding:
    prefix: --keepexe
- id: mach_dir
  doc: Specify the locations of the Machines directory, other than the default.  The
    default is CIMEROOT/machines.
  type: string
  inputBinding:
    prefix: --mach-dir
- id: project
  doc: Specify a project id. The default is the user-specified environment variable
    variable PROJECT or ACCOUNT or read from ~/.cesm_proj.
  type: string
  inputBinding:
    prefix: --project
- id: cime_output_root
  doc: 'Specify the root output directory. The default is the setting in the original
    case directory. NOTE: create_clone will fail if this directory is not writable.'
  type: string
  inputBinding:
    prefix: --cime-output-root
outputs: []
cwlVersion: v1.1
baseCommand:
- create_clone
