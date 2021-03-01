version 1.0

task TestHaplotypes {
  input {
    Boolean? auto_start_dbg
    Boolean? break_exec_path
    Boolean? build_info
    Boolean? detect_memory_leaks
    Boolean? list_labels
    Boolean? log_format
    Boolean? log_level
    Boolean? log_sink
    Boolean? logger
    Boolean? report_level
    Boolean? report_memory_leaks_to
    Boolean? report_sink
    Boolean? run_test
    Boolean? save_pattern
    Boolean? show_progress
    Boolean? wait_for_debugger
    String usage
    String use
    String or
  }
  command <<<
    test_haplotypes \
      ~{usage} \
      ~{use} \
      ~{or} \
      ~{if (auto_start_dbg) then "--auto_start_dbg" else ""} \
      ~{if (break_exec_path) then "--break_exec_path" else ""} \
      ~{if (build_info) then "--build_info" else ""} \
      ~{if (detect_memory_leaks) then "--detect_memory_leaks" else ""} \
      ~{if (list_labels) then "--list_labels" else ""} \
      ~{if (log_format) then "--log_format" else ""} \
      ~{if (log_level) then "--log_level" else ""} \
      ~{if (log_sink) then "--log_sink" else ""} \
      ~{if (logger) then "--logger" else ""} \
      ~{if (report_level) then "--report_level" else ""} \
      ~{if (report_memory_leaks_to) then "--report_memory_leaks_to" else ""} \
      ~{if (report_sink) then "--report_sink" else ""} \
      ~{if (run_test) then "--run_test" else ""} \
      ~{if (save_pattern) then "--save_pattern" else ""} \
      ~{if (show_progress) then "--show_progress" else ""} \
      ~{if (wait_for_debugger) then "--wait_for_debugger" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    auto_start_dbg: "[1;33;49m[=<boolean value>]"
    break_exec_path: "[1;33;49m=<value>"
    build_info: "[1;33;49m[=<boolean value>]"
    detect_memory_leaks: "[1;33;49m[=<alloc order number>]"
    list_labels: "[1;33;49m[=<boolean value>]"
    log_format: "[1;33;49m=<HRF|CLF|XML|JUNIT>"
    log_level: "[1;33;49m=<all|success|test_suite|unit_scope|message|warning|error|cpp_exception|system_error|fatal_error|nothing>"
    log_sink: "[1;33;49m=<stderr|stdout|file name>"
    logger: "[1;33;49m=log_format,log_level,log_sink[:log_format,log_level,log_sink]"
    report_level: "[1;33;49m=<confirm|short|detailed|no>"
    report_memory_leaks_to: "[1;33;49m=<file name>"
    report_sink: "[1;33;49m=<stderr|stdout|file name>"
    run_test: "[1;33;49m=<test unit filter>"
    save_pattern: "[1;33;49m[=<boolean value>]"
    show_progress: "[1;33;49m[=<boolean value>]"
    wait_for_debugger: "[1;33;49m[=<boolean value>]"
    usage: "[0;39;49m[1;32;49mtest_haplotypes [Boost.Test argument]... [0;39;49m[1;33;49m[-- [custom test module argument]...][0;39;49m"
    use: "[1;32;49mtest_haplotypes --help[0;39;49m"
    or: "[1;32;49mtest_haplotypes --help=<parameter name>[0;39;49m"
  }
  output {
    File out_stdout = stdout()
  }
}