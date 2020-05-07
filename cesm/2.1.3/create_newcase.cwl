class: CommandLineTool
id: create_newcase.cwl
inputs:
- id: debug
  doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/create_newcase.log
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
  doc: (required) Specify the case name.  If this is simply a name (not a path), the
    case directory is created in the current working directory. This can also be a
    relative or absolute path specifying where the case should be created; with this
    usage, the name of the case will be the last component of the path.
  type: string
  inputBinding:
    prefix: --case
- id: comp_set
  doc: (required) Specify a compset.  To see list of current compsets, use the utility
    ./query_config --compsets in this directory.
  type: string
  inputBinding:
    prefix: --compset
- id: res
  doc: (required) Specify a model grid resolution.  To see list of current model resolutions,
    use the utility  ./query_config --grids in this directory.
  type: string
  inputBinding:
    prefix: --res
- id: machine
  doc: Specify a machine. The default value is the match to NODENAME_REGEX in config_machines.xml.
    To see  the list of current machines, invoke ./query_config --machines.
  type: string
  inputBinding:
    prefix: --machine
- id: compiler
  doc: Specify a compiler.  To see list of supported compilers for each machine, use
    the utility  ./query_config --machines in this directory.  The default value will
    be the first one listed.
  type: string
  inputBinding:
    prefix: --compiler
- id: multi_driver
  doc: Specify that --ninst should modify the number of driver/coupler instances.  The
    default is to have one driver/coupler supporting multiple component instances.
  type: boolean
  inputBinding:
    prefix: --multi-driver
- id: n_inst
  doc: Specify number of model ensemble instances.  The default is multiple components
    and one driver/coupler.  Use --multi-driver to run multiple driver/couplers in
    the ensemble.
  type: string
  inputBinding:
    prefix: --ninst
- id: mpi_lib
  doc: Specify the MPI library. To see list of supported mpilibs for each machine,
    invoke ./query_config --machines. The default is the first listing in MPILIBS
    in config_machines.xml.
  type: string
  inputBinding:
    prefix: --mpilib
- id: project
  doc: Specify a project id as used in batch system accounting.
  type: string
  inputBinding:
    prefix: --project
- id: pe_count
  doc: Specify a target size description for the number of cores.  This is used to
    query the appropriate config_pes.xml file and find the  optimal PE-layout for
    your case - if it exists there.  Allowed options are  ('S','M','L','X1','X2','[0-9]x[0-9]','[0-9]').
  type: string
  inputBinding:
    prefix: --pecount
- id: user_mods_dir
  doc: Full pathname to a directory containing any combination of user_nl_* files  and
    a shell_commands script (typically containing xmlchange commands).  The directory
    can also contain an SourceMods/ directory with the same structure  as would be
    found in a case directory.
  type: string
  inputBinding:
    prefix: --user-mods-dir
- id: pes_file
  doc: Full pathname of an optional pes specification file.  The file can follow either
    the config_pes.xml or the env_mach_pes.xml format.
  type: string
  inputBinding:
    prefix: --pesfile
- id: grid_file
  doc: 'Full pathname of config grid file to use.  This should be a copy of config/config_grids.xml
    with the new user grid changes added to it. '
  type: string
  inputBinding:
    prefix: --gridfile
- id: workflow
  doc: 'A workflow from config_workflow.xml to apply to this case. '
  type: string
  inputBinding:
    prefix: --workflow
- id: srcroot
  doc: Alternative pathname for source root directory. The default is cimeroot/../
  type: string
  inputBinding:
    prefix: --srcroot
- id: output_root
  doc: Alternative pathname for the directory where case output is written.
  type: string
  inputBinding:
    prefix: --output-root
- id: wall_time
  doc: Set the wallclock limit for this case in the format (the usual format is HH:MM:SS).  You
    may use env var CIME_GLOBAL_WALLTIME to set this.  If CIME_GLOBAL_WALLTIME is
    not defined in the environment, then the walltime will be the maximum allowed
    time defined for the queue in config_batch.xml.
  type: string
  inputBinding:
    prefix: --walltime
- id: queue
  doc: 'Force batch system to use the specified queue. '
  type: string
  inputBinding:
    prefix: --queue
- id: handle_preexisting_dirs
  doc: Do not query how to handle pre-existing bld/exe dirs.  Valid options are (a)bort
    (r)eplace or (u)se existing.  This can be useful if you need to run create_newcase
    non-iteractively.
  type: string
  inputBinding:
    prefix: --handle-preexisting-dirs
- id: input_dir
  doc: Use a non-default location for input files. This will change the xml value
    of DIN_LOC_ROOT.
  type: string
  inputBinding:
    prefix: --input-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- create_newcase
