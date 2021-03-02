class: CommandLineTool
id: test_haplotypes.cwl
inputs:
- id: in_auto_start_dbg
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean?
  inputBinding:
    prefix: --auto_start_dbg
- id: in_break_exec_path
  doc: "\e[1;33;49m=<value>"
  type: boolean?
  inputBinding:
    prefix: --break_exec_path
- id: in_build_info
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean?
  inputBinding:
    prefix: --build_info
- id: in_detect_memory_leaks
  doc: "\e[1;33;49m[=<alloc order number>]"
  type: boolean?
  inputBinding:
    prefix: --detect_memory_leaks
- id: in_list_labels
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean?
  inputBinding:
    prefix: --list_labels
- id: in_log_format
  doc: "\e[1;33;49m=<HRF|CLF|XML|JUNIT>"
  type: boolean?
  inputBinding:
    prefix: --log_format
- id: in_log_level
  doc: "\e[1;33;49m=<all|success|test_suite|unit_scope|message|warning|error|cpp_exception|system_error|fatal_error|nothing>"
  type: boolean?
  inputBinding:
    prefix: --log_level
- id: in_log_sink
  doc: "\e[1;33;49m=<stderr|stdout|file name>"
  type: boolean?
  inputBinding:
    prefix: --log_sink
- id: in_logger
  doc: "\e[1;33;49m=log_format,log_level,log_sink[:log_format,log_level,log_sink]"
  type: boolean?
  inputBinding:
    prefix: --logger
- id: in_report_level
  doc: "\e[1;33;49m=<confirm|short|detailed|no>"
  type: boolean?
  inputBinding:
    prefix: --report_level
- id: in_report_memory_leaks_to
  doc: "\e[1;33;49m=<file name>"
  type: boolean?
  inputBinding:
    prefix: --report_memory_leaks_to
- id: in_report_sink
  doc: "\e[1;33;49m=<stderr|stdout|file name>"
  type: boolean?
  inputBinding:
    prefix: --report_sink
- id: in_run_test
  doc: "\e[1;33;49m=<test unit filter>"
  type: boolean?
  inputBinding:
    prefix: --run_test
- id: in_save_pattern
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean?
  inputBinding:
    prefix: --save_pattern
- id: in_show_progress
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean?
  inputBinding:
    prefix: --show_progress
- id: in_wait_for_debugger
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean?
  inputBinding:
    prefix: --wait_for_debugger
- id: in_usage
  doc: "\e[0;39;49m\e[1;32;49mtest_haplotypes [Boost.Test argument]... \e[0;39;49m\e\
    [1;33;49m[-- [custom test module argument]...]\e[0;39;49m"
  type: string
  inputBinding:
    position: 0
- id: in_use
  doc: "\e[1;32;49mtest_haplotypes --help\e[0;39;49m"
  type: string
  inputBinding:
    position: 1
- id: in_or
  doc: "\e[1;32;49mtest_haplotypes --help=<parameter name>\e[0;39;49m"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- test_haplotypes
