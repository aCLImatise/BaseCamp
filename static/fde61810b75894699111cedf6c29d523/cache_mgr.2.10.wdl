version 1.0

task CacheMgr.2.10.7 {
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
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File? path_to_cache
  }
  command <<<
    cache-mgr.2.10.7 \
      ~{path_to_cache} \
      ~{true="--report" false="" report} \
      ~{true="--rep-report" false="" rep_report} \
      ~{true="--details" false="" details} \
      ~{true="--test-zero" false="" test_zero} \
      ~{true="--unlock" false="" unlock} \
      ~{true="--clear" false="" clear} \
      ~{true="--max-remove" false="" max_remove} \
      ~{true="--remove-dirs" false="" remove_dirs} \
      ~{true="--enable" false="" enable} \
      ~{true="--disable" false="" disable} \
      ~{true="--user-repo-name" false="" user_repo_name} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    report: "report objects in cache "
    rep_report: "report status of repositories "
    details: "show detailed report "
    test_zero: "test for zero blocks (for report function) "
    unlock: "remove lock-files "
    clear: "clear cache "
    max_remove: "remove until reached that many bytes "
    remove_dirs: "remove directories, not only files "
    enable: "enable repository [user/site/rem] "
    disable: "disable repository [user/site/rem] "
    user_repo_name: "restrict to this user-repository "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    path_to_cache: ""
  }
}