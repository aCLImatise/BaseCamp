version 1.0

task TestHaplotypes {
  input {
    Boolean? auto_start_dbg
    Boolean? break_exec_path
    Boolean? build_info
    Boolean? detect_memory_leaks
    Boolean? list_content
    Boolean? list_labels
    Boolean? log_format
    Boolean? log_level
    Boolean? log_sink
    Boolean? logger
    Boolean? output_format
    Boolean? random
    Boolean? report_format
    Boolean? report_level
    Boolean? report_memory_leaks_to
    Boolean? report_sink
    Boolean? run_test
    Boolean? save_pattern
    Boolean? show_progress
    Boolean? wait_for_debugger
  }
  command <<<
    test_haplotypes \
      ~{true="--auto_start_dbg" false="" auto_start_dbg} \
      ~{true="--break_exec_path" false="" break_exec_path} \
      ~{true="--build_info" false="" build_info} \
      ~{true="--detect_memory_leaks" false="" detect_memory_leaks} \
      ~{true="--list_content" false="" list_content} \
      ~{true="--list_labels" false="" list_labels} \
      ~{true="--log_format" false="" log_format} \
      ~{true="--log_level" false="" log_level} \
      ~{true="--log_sink" false="" log_sink} \
      ~{true="--logger" false="" logger} \
      ~{true="--output_format" false="" output_format} \
      ~{true="--random" false="" random} \
      ~{true="--report_format" false="" report_format} \
      ~{true="--report_level" false="" report_level} \
      ~{true="--report_memory_leaks_to" false="" report_memory_leaks_to} \
      ~{true="--report_sink" false="" report_sink} \
      ~{true="--run_test" false="" run_test} \
      ~{true="--save_pattern" false="" save_pattern} \
      ~{true="--show_progress" false="" show_progress} \
      ~{true="--wait_for_debugger" false="" wait_for_debugger}
  >>>
  parameter_meta {
    auto_start_dbg: "[1;33;49m[=<boolean value>]"
    break_exec_path: "[1;33;49m=<value>"
    build_info: "[1;33;49m[=<boolean value>]"
    detect_memory_leaks: "[1;33;49m[=<alloc order number>]"
    list_content: "[1;33;49m[=<HRF|DOT>]"
    list_labels: "[1;33;49m[=<boolean value>]"
    log_format: "[1;33;49m=<HRF|CLF|XML|JUNIT>"
    log_level: "[1;33;49m=<all|success|test_suite|unit_scope|message|warning|error|cpp_exception|system_error|fatal_error|nothing>"
    log_sink: "[1;33;49m=<stderr|stdout|file name>"
    logger: "[1;33;49m=log_format,log_level,log_sink[:log_format,log_level,log_sink]"
    output_format: "[1;33;49m=<HRF|CLF|XML>"
    random: "[1;33;49m[=<seed>]"
    report_format: "[1;33;49m=<HRF|CLF|XML>"
    report_level: "[1;33;49m=<confirm|short|detailed|no>"
    report_memory_leaks_to: "[1;33;49m=<file name>"
    report_sink: "[1;33;49m=<stderr|stdout|file name>"
    run_test: "[1;33;49m=<test unit filter>"
    save_pattern: "[1;33;49m[=<boolean value>]"
    show_progress: "[1;33;49m[=<boolean value>]"
    wait_for_debugger: "[1;33;49m[=<boolean value>]"
  }
}