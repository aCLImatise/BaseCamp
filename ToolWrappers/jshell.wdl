version 1.0

task Jshell {
  input {
    File? class_path
    File? module_path
    File? add_modules
    Boolean? enable_preview
    File? startup
    Boolean? no_startup
    String? feedback
    Boolean? quiet_feedback_same
    Boolean? really_quiet_feedback
    Boolean? verbose_feedback_same
    Boolean? flag_pass_flag
    Boolean? flag_pass_remote
    Boolean? flag_pass_compileruse
    Boolean? show_version
    Boolean? help_extra
    File load_file
  }
  command <<<
    jshell \
      ~{load_file} \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if defined(add_modules) then ("--add-modules " +  '"' + add_modules + '"') else ""} \
      ~{if (enable_preview) then "--enable-preview" else ""} \
      ~{if defined(startup) then ("--startup " +  '"' + startup + '"') else ""} \
      ~{if (no_startup) then "--no-startup" else ""} \
      ~{if defined(feedback) then ("--feedback " +  '"' + feedback + '"') else ""} \
      ~{if (quiet_feedback_same) then "-q" else ""} \
      ~{if (really_quiet_feedback) then "-s" else ""} \
      ~{if (verbose_feedback_same) then "-v" else ""} \
      ~{if (flag_pass_flag) then "-J" else ""} \
      ~{if (flag_pass_remote) then "-R" else ""} \
      ~{if (flag_pass_compileruse) then "-C" else ""} \
      ~{if (show_version) then "--show-version" else ""} \
      ~{if (help_extra) then "--help-extra" else ""}
  >>>
  parameter_meta {
    class_path: "Specify where to find user class files"
    module_path: "Specify where to find application modules"
    add_modules: "(,<module>)*\\nSpecify modules to resolve, or all modules on the\\nmodule path if <module> is ALL-MODULE-PATHs"
    enable_preview: "Allow code to depend on preview features of this release"
    startup: "One run replacement for the startup definitions"
    no_startup: "Do not run the startup definitions"
    feedback: "Specify the initial feedback mode. The mode may be\\npredefined (silent, concise, normal, or verbose) or\\npreviously user-defined"
    quiet_feedback_same: "Quiet feedback.  Same as: --feedback concise"
    really_quiet_feedback: "Really quiet feedback.  Same as: --feedback silent"
    verbose_feedback_same: "Verbose feedback.  Same as: --feedback verbose"
    flag_pass_flag: "<flag>              Pass <flag> directly to the runtime system.\\nUse one -J for each runtime flag or flag argument"
    flag_pass_remote: "<flag>              Pass <flag> to the remote runtime system.\\nUse one -R for each remote flag or flag argument"
    flag_pass_compileruse: "<flag>              Pass <flag> to the compiler.\\nUse one -C for each compiler flag or flag argument"
    show_version: "Print version information and continue"
    help_extra: "Print help on non-standard options and exit"
    load_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}