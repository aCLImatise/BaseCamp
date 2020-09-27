version 1.0

task CreateClone {
  input {
    Boolean? debug
    Boolean? verbose
    Boolean? silent
    Directory? case
    Directory? clone
    Int? ensemble
    Directory? user_mods_dir
    Boolean? keep_exe
    Directory? mach_dir
    String? project
    Directory? cime_output_root
  }
  command <<<
    create_clone \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(case) then ("--case " +  '"' + case + '"') else ""} \
      ~{if defined(clone) then ("--clone " +  '"' + clone + '"') else ""} \
      ~{if defined(ensemble) then ("--ensemble " +  '"' + ensemble + '"') else ""} \
      ~{if defined(user_mods_dir) then ("--user-mods-dir " +  '"' + user_mods_dir + '"') else ""} \
      ~{if (keep_exe) then "--keepexe" else ""} \
      ~{if defined(mach_dir) then ("--mach-dir " +  '"' + mach_dir + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(cime_output_root) then ("--cime-output-root " +  '"' + cime_output_root + '"') else ""}
  >>>
  parameter_meta {
    debug: "Print debug information (very verbose) to file /create_clone.log"
    verbose: "Add additional context (time and file) to log messages"
    silent: "Print only warnings and error messages"
    case: "(required) Specify a new case name. If not a full pathname,\\nthe new case will be created under then current working directory."
    clone: "(required) Specify a case to be cloned. If not a full pathname,\\nthe case to be cloned is assumed to be under then current working directory."
    ensemble: "clone an ensemble of cases, the case name argument must end in an integer.\\nfor example: ./create_clone --clone case.template --case case.001 --ensemble 4\\nwill create case.001, case.002, case.003, case.004 from existing case.template"
    user_mods_dir: "Full pathname to a directory containing any combination of user_nl_* files\\nand shell_commands script (typically containing xmlchange commands).\\nThe directory can also contain an SourceMods/ directory with the same structure\\nas would be found in a case directory. If this argument is used in conjunction\\nwith the --keepexe flag, then no changes will be permitted to the env_build.xml\\nin the newly created case directory."
    keep_exe: "Sets EXEROOT to point to original build. It is HIGHLY recommended\\nthat the original case be built BEFORE cloning it if the --keepexe flag is specfied.\\nThis flag will make the SourceMods/ directory in the newly created case directory a\\nsymbolic link to the SourceMods/ directory in the original case directory."
    mach_dir: "Specify the locations of the Machines directory, other than the default.\\nThe default is CIMEROOT/machines."
    project: "Specify a project id. The default is the user-specified environment variable\\nvariable PROJECT or ACCOUNT or read from ~/.cesm_proj."
    cime_output_root: "Specify the root output directory. The default is the setting in the original\\ncase directory. NOTE: create_clone will fail if this directory is not writable.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_cime_output_root = "${in_cime_output_root}"
  }
}