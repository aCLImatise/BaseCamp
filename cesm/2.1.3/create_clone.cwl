#!/usr/bin/env cwl-runner

baseCommand:
- create_clone
class: CommandLineTool
cwlVersion: v1.0
id: create_clone
inputs:
- doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/create_clone.log
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Add additional context (time and file) to log messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Print only warnings and error messages
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: (required) Specify a new case name. If not a full pathname,  the new case will
    be created under then current working directory.
  id: case
  inputBinding:
    prefix: --case
  type: string
- doc: (required) Specify a case to be cloned. If not a full pathname,  the case to
    be cloned is assumed to be under then current working directory.
  id: clone
  inputBinding:
    prefix: --clone
  type: string
- doc: 'clone an ensemble of cases, the case name argument must end in an integer.
    for example: ./create_clone --clone case.template --case case.001 --ensemble 4  will
    create case.001, case.002, case.003, case.004 from existing case.template'
  id: ensemble
  inputBinding:
    prefix: --ensemble
  type: string
- doc: 'Full pathname to a directory containing any combination of user_nl_* files  and
    shell_commands script (typically containing xmlchange commands).  The directory
    can also contain an SourceMods/ directory with the same structure  as would be
    found in a case directory. If this argument is used in conjunction  with the --keepexe
    flag, then no changes will be permitted to the env_build.xml  in the newly created
    case directory. '
  id: user_mods_dir
  inputBinding:
    prefix: --user-mods-dir
  type: string
- doc: 'Sets EXEROOT to point to original build. It is HIGHLY recommended  that the
    original case be built BEFORE cloning it if the --keepexe flag is specfied.  This
    flag will make the SourceMods/ directory in the newly created case directory a  symbolic
    link to the SourceMods/ directory in the original case directory. '
  id: keep_exe
  inputBinding:
    prefix: --keepexe
  type: boolean
- doc: Specify the locations of the Machines directory, other than the default.  The
    default is CIMEROOT/machines.
  id: mach_dir
  inputBinding:
    prefix: --mach-dir
  type: string
- doc: Specify a project id. The default is the user-specified environment variable
    variable PROJECT or ACCOUNT or read from ~/.cesm_proj.
  id: project
  inputBinding:
    prefix: --project
  type: string
- doc: 'Specify the root output directory. The default is the setting in the original
    case directory. NOTE: create_clone will fail if this directory is not writable.'
  id: cime_output_root
  inputBinding:
    prefix: --cime-output-root
  type: string
