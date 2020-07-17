version 1.0

task CreateClone {
  input {
    Boolean? debug
    Boolean? verbose
    Boolean? silent
    String? case
    String? clone
    String? ensemble
    String? user_mods_dir
    Boolean? keep_exe
    String? mach_dir
    String? project
    String? cime_output_root
  }
  command <<<
    create_clone \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--silent" false="" silent} \
      ~{if defined(case) then ("--case " +  '"' + case + '"') else ""} \
      ~{if defined(clone) then ("--clone " +  '"' + clone + '"') else ""} \
      ~{if defined(ensemble) then ("--ensemble " +  '"' + ensemble + '"') else ""} \
      ~{if defined(user_mods_dir) then ("--user-mods-dir " +  '"' + user_mods_dir + '"') else ""} \
      ~{true="--keepexe" false="" keep_exe} \
      ~{if defined(mach_dir) then ("--mach-dir " +  '"' + mach_dir + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(cime_output_root) then ("--cime-output-root " +  '"' + cime_output_root + '"') else ""}
  >>>
  parameter_meta {
    debug: "Print debug information (very verbose) to file /tmp/tmpeksbd5_3/create_clone.log"
    verbose: "Add additional context (time and file) to log messages"
    silent: "Print only warnings and error messages"
    case: "(required) Specify a new case name. If not a full pathname,  the new case will be created under then current working directory."
    clone: "(required) Specify a case to be cloned. If not a full pathname,  the case to be cloned is assumed to be under then current working directory."
    ensemble: "clone an ensemble of cases, the case name argument must end in an integer. for example: ./create_clone --clone case.template --case case.001 --ensemble 4  will create case.001, case.002, case.003, case.004 from existing case.template"
    user_mods_dir: "Full pathname to a directory containing any combination of user_nl_* files  and shell_commands script (typically containing xmlchange commands).  The directory can also contain an SourceMods/ directory with the same structure  as would be found in a case directory. If this argument is used in conjunction  with the --keepexe flag, then no changes will be permitted to the env_build.xml  in the newly created case directory. "
    keep_exe: "Sets EXEROOT to point to original build. It is HIGHLY recommended  that the original case be built BEFORE cloning it if the --keepexe flag is specfied.  This flag will make the SourceMods/ directory in the newly created case directory a  symbolic link to the SourceMods/ directory in the original case directory. "
    mach_dir: "Specify the locations of the Machines directory, other than the default.  The default is CIMEROOT/machines."
    project: "Specify a project id. The default is the user-specified environment variable variable PROJECT or ACCOUNT or read from ~/.cesm_proj."
    cime_output_root: "Specify the root output directory. The default is the setting in the original case directory. NOTE: create_clone will fail if this directory is not writable."
  }
}