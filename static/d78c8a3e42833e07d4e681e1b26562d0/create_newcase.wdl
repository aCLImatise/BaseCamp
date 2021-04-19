version 1.0

task CreateNewcase {
  input {
    String? res
    Boolean? debug
    Boolean? verbose
    Boolean? silent
    File? case
    Directory? comp_set
    String? machine
    Directory? compiler
    Boolean? multi_driver
    Int? n_inst
    String? mpi_lib
    String? project
    Int? pe_count
    Directory? user_mods_dir
    File? pes_file
    File? grid_file
    Directory? srcroot
    Directory? output_root
    String? wall_time
    String? queue
    String? handle_preexisting_dirs
    String? input_dir
  }
  command <<<
    create_newcase \
      ~{if defined(res) then ("--res " +  '"' + res + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(case) then ("--case " +  '"' + case + '"') else ""} \
      ~{if defined(comp_set) then ("--compset " +  '"' + comp_set + '"') else ""} \
      ~{if defined(machine) then ("--machine " +  '"' + machine + '"') else ""} \
      ~{if defined(compiler) then ("--compiler " +  '"' + compiler + '"') else ""} \
      ~{if (multi_driver) then "--multi-driver" else ""} \
      ~{if defined(n_inst) then ("--ninst " +  '"' + n_inst + '"') else ""} \
      ~{if defined(mpi_lib) then ("--mpilib " +  '"' + mpi_lib + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(pe_count) then ("--pecount " +  '"' + pe_count + '"') else ""} \
      ~{if defined(user_mods_dir) then ("--user-mods-dir " +  '"' + user_mods_dir + '"') else ""} \
      ~{if defined(pes_file) then ("--pesfile " +  '"' + pes_file + '"') else ""} \
      ~{if defined(grid_file) then ("--gridfile " +  '"' + grid_file + '"') else ""} \
      ~{if defined(srcroot) then ("--srcroot " +  '"' + srcroot + '"') else ""} \
      ~{if defined(output_root) then ("--output-root " +  '"' + output_root + '"') else ""} \
      ~{if defined(wall_time) then ("--walltime " +  '"' + wall_time + '"') else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(handle_preexisting_dirs) then ("--handle-preexisting-dirs " +  '"' + handle_preexisting_dirs + '"') else ""} \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/noresm:2.0.2--py37pl5262h736fc29_0"
  }
  parameter_meta {
    res: "[--machine MACHINE] [--compiler COMPILER]"
    debug: "Print debug information (very verbose) to file /create_newcase.log"
    verbose: "Add additional context (time and file) to log messages"
    silent: "Print only warnings and error messages"
    case: "(required) Specify the case name.\\nIf this is simply a name (not a path), the case directory is created in the current working directory.\\nThis can also be a relative or absolute path specifying where the case should be created;\\nwith this usage, the name of the case will be the last component of the path."
    comp_set: "(required) Specify a compset.\\nTo see list of current compsets, use the utility ./query_config --compsets in this directory."
    machine: "Specify a machine. The default value is the match to NODENAME_REGEX in config_machines.xml. To see\\nthe list of current machines, invoke ./query_config --machines."
    compiler: "Specify a compiler.\\nTo see list of supported compilers for each machine, use the utility\\n./query_config --machines in this directory.\\nThe default value will be the first one listed."
    multi_driver: "Specify that --ninst should modify the number of driver/coupler instances.\\nThe default is to have one driver/coupler supporting multiple component instances."
    n_inst: "Specify number of model ensemble instances.\\nThe default is multiple components and one driver/coupler.\\nUse --multi-driver to run multiple driver/couplers in the ensemble."
    mpi_lib: "Specify the MPI library. To see list of supported mpilibs for each machine, invoke ./query_config --machines.\\nThe default is the first listing in MPILIBS in config_machines.xml."
    project: "Specify a project id as used in batch system accounting."
    pe_count: "Specify a target size description for the number of cores.\\nThis is used to query the appropriate config_pes.xml file and find the\\noptimal PE-layout for your case - if it exists there.\\nAllowed options are  ('S','M','L','X1','X2','[0-9]x[0-9]','[0-9]')."
    user_mods_dir: "Full pathname to a directory containing any combination of user_nl_* files\\nand a shell_commands script (typically containing xmlchange commands).\\nThe directory can also contain an SourceMods/ directory with the same structure\\nas would be found in a case directory."
    pes_file: "Full pathname of an optional pes specification file.\\nThe file can follow either the config_pes.xml or the env_mach_pes.xml format."
    grid_file: "Full pathname of config grid file to use.\\nThis should be a copy of config/config_grids.xml with the new user grid changes added to it."
    srcroot: "Alternative pathname for source root directory. The default is cimeroot/../"
    output_root: "Alternative pathname for the directory where case output is written."
    wall_time: "Set the wallclock limit for this case in the format (the usual format is HH:MM:SS).\\nYou may use env var CIME_GLOBAL_WALLTIME to set this.\\nIf CIME_GLOBAL_WALLTIME is not defined in the environment, then the walltime\\nwill be the maximum allowed time defined for the queue in config_batch.xml."
    queue: "Force batch system to use the specified queue."
    handle_preexisting_dirs: "Do not query how to handle pre-existing bld/exe dirs.\\nValid options are (a)bort (r)eplace or (u)se existing.\\nThis can be useful if you need to run create_newcase non-iteractively."
    input_dir: "Use a non-default location for input files. This will change the xml value of DIN_LOC_ROOT.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_root = "${in_output_root}"
  }
}