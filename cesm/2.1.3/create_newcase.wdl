version 1.0

task CreateNewcase {
  input {
    Boolean? debug
    Boolean? verbose
    Boolean? silent
    String? case
    String? comp_set
    String? res
    String? machine
    String? compiler
    Boolean? multi_driver
    String? n_inst
    String? mpi_lib
    String? project
    String? pe_count
    String? user_mods_dir
    String? pes_file
    String? grid_file
    String? workflow_configworkflowxml_apply
    String? srcroot
    String? output_root
    String? wall_time
    String? queue
    String? handle_preexisting_dirs
    String? input_dir
  }
  command <<<
    create_newcase \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--silent" false="" silent} \
      ~{if defined(case) then ("--case " +  '"' + case + '"') else ""} \
      ~{if defined(comp_set) then ("--compset " +  '"' + comp_set + '"') else ""} \
      ~{if defined(res) then ("--res " +  '"' + res + '"') else ""} \
      ~{if defined(machine) then ("--machine " +  '"' + machine + '"') else ""} \
      ~{if defined(compiler) then ("--compiler " +  '"' + compiler + '"') else ""} \
      ~{true="--multi-driver" false="" multi_driver} \
      ~{if defined(n_inst) then ("--ninst " +  '"' + n_inst + '"') else ""} \
      ~{if defined(mpi_lib) then ("--mpilib " +  '"' + mpi_lib + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(pe_count) then ("--pecount " +  '"' + pe_count + '"') else ""} \
      ~{if defined(user_mods_dir) then ("--user-mods-dir " +  '"' + user_mods_dir + '"') else ""} \
      ~{if defined(pes_file) then ("--pesfile " +  '"' + pes_file + '"') else ""} \
      ~{if defined(grid_file) then ("--gridfile " +  '"' + grid_file + '"') else ""} \
      ~{if defined(workflow_configworkflowxml_apply) then ("--workflow " +  '"' + workflow_configworkflowxml_apply + '"') else ""} \
      ~{if defined(srcroot) then ("--srcroot " +  '"' + srcroot + '"') else ""} \
      ~{if defined(output_root) then ("--output-root " +  '"' + output_root + '"') else ""} \
      ~{if defined(wall_time) then ("--walltime " +  '"' + wall_time + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(handle_preexisting_dirs) then ("--handle-preexisting-dirs " +  '"' + handle_preexisting_dirs + '"') else ""} \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""}
  >>>
  parameter_meta {
    debug: "Print debug information (very verbose) to file /tmp/tmpeksbd5_3/create_newcase.log"
    verbose: "Add additional context (time and file) to log messages"
    silent: "Print only warnings and error messages"
    case: "(required) Specify the case name.  If this is simply a name (not a path), the case directory is created in the current working directory. This can also be a relative or absolute path specifying where the case should be created; with this usage, the name of the case will be the last component of the path."
    comp_set: "(required) Specify a compset.  To see list of current compsets, use the utility ./query_config --compsets in this directory."
    res: "(required) Specify a model grid resolution.  To see list of current model resolutions, use the utility  ./query_config --grids in this directory."
    machine: "Specify a machine. The default value is the match to NODENAME_REGEX in config_machines.xml. To see  the list of current machines, invoke ./query_config --machines."
    compiler: "Specify a compiler.  To see list of supported compilers for each machine, use the utility  ./query_config --machines in this directory.  The default value will be the first one listed."
    multi_driver: "Specify that --ninst should modify the number of driver/coupler instances.  The default is to have one driver/coupler supporting multiple component instances."
    n_inst: "Specify number of model ensemble instances.  The default is multiple components and one driver/coupler.  Use --multi-driver to run multiple driver/couplers in the ensemble."
    mpi_lib: "Specify the MPI library. To see list of supported mpilibs for each machine, invoke ./query_config --machines. The default is the first listing in MPILIBS in config_machines.xml."
    project: "Specify a project id as used in batch system accounting."
    pe_count: "Specify a target size description for the number of cores.  This is used to query the appropriate config_pes.xml file and find the  optimal PE-layout for your case - if it exists there.  Allowed options are  ('S','M','L','X1','X2','[0-9]x[0-9]','[0-9]')."
    user_mods_dir: "Full pathname to a directory containing any combination of user_nl_* files  and a shell_commands script (typically containing xmlchange commands).  The directory can also contain an SourceMods/ directory with the same structure  as would be found in a case directory."
    pes_file: "Full pathname of an optional pes specification file.  The file can follow either the config_pes.xml or the env_mach_pes.xml format."
    grid_file: "Full pathname of config grid file to use.  This should be a copy of config/config_grids.xml with the new user grid changes added to it. "
    workflow_configworkflowxml_apply: "A workflow from config_workflow.xml to apply to this case. "
    srcroot: "Alternative pathname for source root directory. The default is cimeroot/../"
    output_root: "Alternative pathname for the directory where case output is written."
    wall_time: "Set the wallclock limit for this case in the format (the usual format is HH:MM:SS).  You may use env var CIME_GLOBAL_WALLTIME to set this.  If CIME_GLOBAL_WALLTIME is not defined in the environment, then the walltime will be the maximum allowed time defined for the queue in config_batch.xml."
    queue: "Force batch system to use the specified queue. "
    handle_preexisting_dirs: "Do not query how to handle pre-existing bld/exe dirs.  Valid options are (a)bort (r)eplace or (u)se existing.  This can be useful if you need to run create_newcase non-iteractively."
    input_dir: "Use a non-default location for input files. This will change the xml value of DIN_LOC_ROOT."
  }
}