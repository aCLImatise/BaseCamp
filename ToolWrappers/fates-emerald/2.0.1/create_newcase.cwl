class: CommandLineTool
id: create_newcase.cwl
inputs:
- id: in_res
  doc: '[--machine MACHINE] [--compiler COMPILER]'
  type: string?
  inputBinding:
    prefix: --res
- id: in_debug
  doc: Print debug information (very verbose) to file /create_newcase.log
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
  doc: "(required) Specify the case name.\nIf this is simply a name (not a path),\
    \ the case directory is created in the current working directory.\nThis can also\
    \ be a relative or absolute path specifying where the case should be created;\n\
    with this usage, the name of the case will be the last component of the path."
  type: File?
  inputBinding:
    prefix: --case
- id: in_comp_set
  doc: "(required) Specify a compset.\nTo see list of current compsets, use the utility\
    \ ./query_config --compsets in this directory."
  type: Directory?
  inputBinding:
    prefix: --compset
- id: in_machine
  doc: "Specify a machine. The default value is the match to NODENAME_REGEX in config_machines.xml.\
    \ To see\nthe list of current machines, invoke ./query_config --machines."
  type: string?
  inputBinding:
    prefix: --machine
- id: in_compiler
  doc: "Specify a compiler.\nTo see list of supported compilers for each machine,\
    \ use the utility\n./query_config --machines in this directory.\nThe default value\
    \ will be the first one listed."
  type: Directory?
  inputBinding:
    prefix: --compiler
- id: in_multi_driver
  doc: "Specify that --ninst should modify the number of driver/coupler instances.\n\
    The default is to have one driver/coupler supporting multiple component instances."
  type: boolean?
  inputBinding:
    prefix: --multi-driver
- id: in_n_inst
  doc: "Specify number of model ensemble instances.\nThe default is multiple components\
    \ and one driver/coupler.\nUse --multi-driver to run multiple driver/couplers\
    \ in the ensemble."
  type: long?
  inputBinding:
    prefix: --ninst
- id: in_mpi_lib
  doc: "Specify the MPI library. To see list of supported mpilibs for each machine,\
    \ invoke ./query_config --machines.\nThe default is the first listing in MPILIBS\
    \ in config_machines.xml."
  type: string?
  inputBinding:
    prefix: --mpilib
- id: in_project
  doc: "Specify a project id for the case (optional).\nUsed for accounting and directory\
    \ permissions when on a batch system.\nThe default is user or machine specified\
    \ by PROJECT.\nAccounting (only) may be overridden by user or machine specified\
    \ CHARGE_ACCOUNT."
  type: Directory?
  inputBinding:
    prefix: --project
- id: in_pe_count
  doc: "Specify a target size description for the number of cores.\nThis is used to\
    \ query the appropriate config_pes.xml file and find the\noptimal PE-layout for\
    \ your case - if it exists there.\nAllowed options are  ('S','M','L','X1','X2','[0-9]x[0-9]','[0-9]')."
  type: long?
  inputBinding:
    prefix: --pecount
- id: in_user_mods_dir
  doc: "Full pathname to a directory containing any combination of user_nl_* files\n\
    and a shell_commands script (typically containing xmlchange commands).\nThe directory\
    \ can also contain an SourceMods/ directory with the same structure\nas would\
    \ be found in a case directory."
  type: Directory?
  inputBinding:
    prefix: --user-mods-dir
- id: in_pes_file
  doc: "Full pathname of an optional pes specification file.\nThe file can follow\
    \ either the config_pes.xml or the env_mach_pes.xml format."
  type: File?
  inputBinding:
    prefix: --pesfile
- id: in_grid_file
  doc: "Full pathname of config grid file to use.\nThis should be a copy of config/config_grids.xml\
    \ with the new user grid changes added to it."
  type: File?
  inputBinding:
    prefix: --gridfile
- id: in_workflow
  doc: A workflow from config_workflow.xml to apply to this case.
  type: string?
  inputBinding:
    prefix: --workflow
- id: in_srcroot
  doc: Alternative pathname for source root directory. The default is cimeroot/../
  type: Directory?
  inputBinding:
    prefix: --srcroot
- id: in_output_root
  doc: Alternative pathname for the directory where case output is written.
  type: Directory?
  inputBinding:
    prefix: --output-root
- id: in_wall_time
  doc: "Set the wallclock limit for this case in the format (the usual format is HH:MM:SS).\n\
    You may use env var CIME_GLOBAL_WALLTIME to set this.\nIf CIME_GLOBAL_WALLTIME\
    \ is not defined in the environment, then the walltime\nwill be the maximum allowed\
    \ time defined for the queue in config_batch.xml."
  type: string?
  inputBinding:
    prefix: --walltime
- id: in_queue
  doc: Force batch system to use the specified queue.
  type: string?
  inputBinding:
    prefix: --queue
- id: in_handle_preexisting_dirs
  doc: "Do not query how to handle pre-existing bld/exe dirs.\nValid options are (a)bort\
    \ (r)eplace or (u)se existing.\nThis can be useful if you need to run create_newcase\
    \ non-iteractively."
  type: string?
  inputBinding:
    prefix: --handle-preexisting-dirs
- id: in_input_dir
  doc: Use a non-default location for input files. This will change the xml value
    of DIN_LOC_ROOT.
  type: string?
  inputBinding:
    prefix: --input-dir
- id: in_non_local
  doc: Use when you've requested a machine that you aren't on. Will reduce errors
    for missing directories etc.
  type: boolean?
  inputBinding:
    prefix: --non-local
- id: in_extra_machines_dir
  doc: "Optional path to a directory containing one or more of:\nconfig_machines.xml,\
    \ config_compilers.xml, config_batch.xml.\nIf provided, the contents of these\
    \ files will be appended to\nthe standard machine files (and any files in ~/.cime).\n"
  type: File?
  inputBinding:
    prefix: --extra-machines-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_root
  doc: Alternative pathname for the directory where case output is written.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_root)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fates-emerald:2.0.1
cwlVersion: v1.1
baseCommand:
- create_newcase
