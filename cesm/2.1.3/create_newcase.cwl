#!/usr/bin/env cwl-runner

baseCommand:
- create_newcase
class: CommandLineTool
cwlVersion: v1.0
id: create_newcase
inputs:
- doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/create_newcase.log
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
- doc: (required) Specify the case name.  If this is simply a name (not a path), the
    case directory is created in the current working directory. This can also be a
    relative or absolute path specifying where the case should be created; with this
    usage, the name of the case will be the last component of the path.
  id: case
  inputBinding:
    prefix: --case
  type: string
- doc: (required) Specify a compset.  To see list of current compsets, use the utility
    ./query_config --compsets in this directory.
  id: comp_set
  inputBinding:
    prefix: --compset
  type: string
- doc: (required) Specify a model grid resolution.  To see list of current model resolutions,
    use the utility  ./query_config --grids in this directory.
  id: res
  inputBinding:
    prefix: --res
  type: string
- doc: Specify a machine. The default value is the match to NODENAME_REGEX in config_machines.xml.
    To see  the list of current machines, invoke ./query_config --machines.
  id: machine
  inputBinding:
    prefix: --machine
  type: string
- doc: Specify a compiler.  To see list of supported compilers for each machine, use
    the utility  ./query_config --machines in this directory.  The default value will
    be the first one listed.
  id: compiler
  inputBinding:
    prefix: --compiler
  type: string
- doc: Specify that --ninst should modify the number of driver/coupler instances.  The
    default is to have one driver/coupler supporting multiple component instances.
  id: multi_driver
  inputBinding:
    prefix: --multi-driver
  type: boolean
- doc: Specify number of model ensemble instances.  The default is multiple components
    and one driver/coupler.  Use --multi-driver to run multiple driver/couplers in
    the ensemble.
  id: n_inst
  inputBinding:
    prefix: --ninst
  type: string
- doc: Specify the MPI library. To see list of supported mpilibs for each machine,
    invoke ./query_config --machines. The default is the first listing in MPILIBS
    in config_machines.xml.
  id: mpi_lib
  inputBinding:
    prefix: --mpilib
  type: string
- doc: Specify a project id as used in batch system accounting.
  id: project
  inputBinding:
    prefix: --project
  type: string
- doc: Specify a target size description for the number of cores.  This is used to
    query the appropriate config_pes.xml file and find the  optimal PE-layout for
    your case - if it exists there.  Allowed options are  ('S','M','L','X1','X2','[0-9]x[0-9]','[0-9]').
  id: pe_count
  inputBinding:
    prefix: --pecount
  type: string
- doc: Full pathname to a directory containing any combination of user_nl_* files  and
    a shell_commands script (typically containing xmlchange commands).  The directory
    can also contain an SourceMods/ directory with the same structure  as would be
    found in a case directory.
  id: user_mods_dir
  inputBinding:
    prefix: --user-mods-dir
  type: string
- doc: Full pathname of an optional pes specification file.  The file can follow either
    the config_pes.xml or the env_mach_pes.xml format.
  id: pes_file
  inputBinding:
    prefix: --pesfile
  type: string
- doc: 'Full pathname of config grid file to use.  This should be a copy of config/config_grids.xml
    with the new user grid changes added to it. '
  id: grid_file
  inputBinding:
    prefix: --gridfile
  type: string
- doc: 'A workflow from config_workflow.xml to apply to this case. '
  id: workflow
  inputBinding:
    prefix: --workflow
  type: string
- doc: Alternative pathname for source root directory. The default is cimeroot/../
  id: srcroot
  inputBinding:
    prefix: --srcroot
  type: string
- doc: Alternative pathname for the directory where case output is written.
  id: output_root
  inputBinding:
    prefix: --output-root
  type: string
- doc: Set the wallclock limit for this case in the format (the usual format is HH:MM:SS).  You
    may use env var CIME_GLOBAL_WALLTIME to set this.  If CIME_GLOBAL_WALLTIME is
    not defined in the environment, then the walltime will be the maximum allowed
    time defined for the queue in config_batch.xml.
  id: wall_time
  inputBinding:
    prefix: --walltime
  type: string
- doc: 'Force batch system to use the specified queue. '
  id: queue
  inputBinding:
    prefix: --queue
  type: string
- doc: Do not query how to handle pre-existing bld/exe dirs.  Valid options are (a)bort
    (r)eplace or (u)se existing.  This can be useful if you need to run create_newcase
    non-iteractively.
  id: handle_preexisting_dirs
  inputBinding:
    prefix: --handle-preexisting-dirs
  type: string
- doc: Use a non-default location for input files. This will change the xml value
    of DIN_LOC_ROOT.
  id: input_dir
  inputBinding:
    prefix: --input-dir
  type: string
