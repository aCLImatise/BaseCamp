version 1.0

task Cachemgr {
  input {
    Boolean? report
    Boolean? rep_report
    Boolean? details
    Boolean? test_zero
    Boolean? unlock
    Boolean? clear
    Boolean? max_remove
    Boolean? remove_dirs
    Boolean? enable
    Boolean? disable
    Boolean? user_repo_name
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
    File file_dot
  }
  command <<<
    cache_mgr \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (report) then "--report" else ""} \
      ~{if (rep_report) then "--rep-report" else ""} \
      ~{if (details) then "--details" else ""} \
      ~{if (test_zero) then "--test-zero" else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (clear) then "--clear" else ""} \
      ~{if (max_remove) then "--max-remove" else ""} \
      ~{if (remove_dirs) then "--remove-dirs" else ""} \
      ~{if (enable) then "--enable" else ""} \
      ~{if (disable) then "--disable" else ""} \
      ~{if (user_repo_name) then "--user-repo-name" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    report: "report objects in cache"
    rep_report: "report status of repositories"
    details: "show detailed report"
    test_zero: "test for zero blocks (for report function)"
    unlock: "remove lock-files"
    clear: "clear cache"
    max_remove: "remove until reached that many bytes"
    remove_dirs: "remove directories, not only files"
    enable: "enable repository [user/site/rem]"
    disable: "disable repository [user/site/rem]"
    user_repo_name: "restrict to this user-repository"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "cache-mgr : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}